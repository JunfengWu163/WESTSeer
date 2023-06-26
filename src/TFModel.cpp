#include "TFModel.h"
#include <wxFFileLog.h>
#include <sstream>
#include <fstream>

/*
import tensorflow.compat.v1 as tf
tf.disable_v2_behavior()

k = 3
in_steps = 10
num_features = 2 + 2 * k + k * (k - 1)
out_steps = 5
lstm_units = in_steps * num_features * 3

multi_lstm_model = tf.keras.Sequential([
    # Shape [batch, in_steps, features] => [batch, lstm_units].
    # Adding more `lstm_units` just overfits more quickly.
    tf.keras.layers.LSTM(lstm_units, return_sequences=False),
    # Shape => [lstm_units, out_steps*features].
    tf.keras.layers.Dense(out_steps*num_features,
                          kernel_initializer=tf.initializers.zeros()),
    # Shape => [batch, out_steps, features].
    tf.keras.layers.Reshape([out_steps, num_features])
], name = 'eval')

# Batch of input and target output (matrices)
x = tf.placeholder(tf.float32, shape=[None, in_steps, num_features], name='input')
y = tf.placeholder(tf.float32, shape=[None, out_steps, num_features], name='target')

# Trivial linear model
y_ = multi_lstm_model(x)

# Optimize loss
loss = tf.reduce_mean(tf.square(y_ - y), name='loss')
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
train_op = optimizer.minimize(loss, name='train')

init = tf.global_variables_initializer()

# tf.train.Saver.__init__ adds operations to the graph to save
# and restore variables.
saver_def = tf.train.Saver().as_saver_def()

print('Run this operation to initialize variables     : ', init.name)
print('Run this operation for a train step            : ', train_op.name)
print('Run this operation for prediction              : ', y_.name)
print('Feed this tensor to set the checkpoint filename: ', saver_def.filename_tensor_name)
print('Run this operation to save a checkpoint        : ', saver_def.save_tensor_name)
print('Run this operation to restore a checkpoint     : ', saver_def.restore_op_name)

# Write the graph out to a file.
with open('lstm_3.pb', 'wb') as f:
  f.write(tf.get_default_graph().as_graph_def().SerializeToString())

*/

int Okay(TF_Status* status)
{
    if (TF_GetCode(status) != TF_OK)
    {
        logError(TF_Message(status));
        return 0;
    }
    return 1;
}

TF_Buffer* ReadFile(const char* filename)
{
    int fd = open(filename, 0);
    if (fd < 0)
    {
        perror("failed to open file: ");
        return NULL;
    }
    struct stat stat;
    if (fstat(fd, &stat) != 0)
    {
        perror("failed to read file: ");
        return NULL;
    }
    close(fd);

    std::ifstream file(filename, std::ios::binary);
    char* data = (char*)malloc(stat.st_size);
    file.read(data, stat.st_size);
    file.close();

    TF_Buffer* ret = TF_NewBufferFromString(data, stat.st_size);
    free(data);
    return ret;
}

int DirectoryExists(const char* dirname)
{
    struct stat buf;
    return stat(dirname, &buf) == 0;
}

TFModel::TFModel(const char* graph_def_filename)
{
    //ctor
    _status = TF_NewStatus();
    _graph = TF_NewGraph();

    {
        // Create the session.
        TF_SessionOptions* opts = TF_NewSessionOptions();
        _session = TF_NewSession(_graph, opts, _status);
        TF_DeleteSessionOptions(opts);
        if (!Okay(_status))
        {
            logError("Cannot create tensorflow section.");
            return;
        }
    }

    TF_Graph* g = _graph;

    {
        // Import the graph.
        TF_Buffer* graph_def = ReadFile(graph_def_filename);
        if (graph_def == NULL)
        {
            logError("Cannot open graph definition file.");
            return;
        }

        TF_ImportGraphDefOptions* opts = TF_NewImportGraphDefOptions();
        TF_GraphImportGraphDef(g, graph_def, opts, _status);
        TF_DeleteImportGraphDefOptions(opts);
        TF_DeleteBuffer(graph_def);
        if (!Okay(_status))
        {
            logError("Cannot import graph definition.");
            return;
        }
    }

    // Handles to the interesting operations in the graph.
    _input.oper = TF_GraphOperationByName(g, "input");
    _input.index = 0;
    _target.oper = TF_GraphOperationByName(g, "target");
    _target.index = 0;
    _output.oper = TF_GraphOperationByName(g, "output" /*"eval/reshape/Reshape"*/);
    _output.index = 0;

    _init_op = TF_GraphOperationByName(g, "init");
    _train_op = TF_GraphOperationByName(g, "train");
    _save_op = TF_GraphOperationByName(g, "save/control_dependency");
    _restore_op = TF_GraphOperationByName(g, "save/restore_all");

    _checkpoint_file.oper = TF_GraphOperationByName(g, "save/Const");
    _checkpoint_file.index = 0;
}

TFModel::~TFModel()
{
    //dtor
    TF_DeleteSession(_session, _status);
    Okay(_status);
    TF_DeleteGraph(_graph);
    TF_DeleteStatus(_status);
}

int TFModel::init()
{
    const TF_Operation* init_op[1] = {_init_op};
    TF_SessionRun(_session, NULL,
                  /* No inputs */
                  NULL, NULL, 0,
                  /* No outputs */
                  NULL, NULL, 0,
                  /* Just the init operation */
                  init_op, 1,
                  /* No metadata */
                  NULL, _status);
    return Okay(_status);
}

int TFModel::checkpoint(const char* checkpoint_prefix, bool save)
{
    TF_TString tstr[1];
    TF_TString_Init(&tstr[0]);
    TF_TString_Copy(&tstr[0], checkpoint_prefix, strlen(checkpoint_prefix));

    auto deallocator = [](void* data, size_t len, void* arg) {};
    TF_Tensor* t = TF_NewTensor(TF_STRING, nullptr, 0, &tstr[0], sizeof(tstr), deallocator, nullptr);
    TF_Output inputs[1] = {_checkpoint_file};
    TF_Tensor* input_values[1] = {t};
    const TF_Operation* op[1] = {save ? _save_op : _restore_op};
    TF_SessionRun(_session, NULL, inputs, input_values, 1,
                  /* No outputs */
                  NULL, NULL, 0,
                  /* The operation */
                  op, 1, NULL, _status);
    TF_DeleteTensor(t);
    TF_TString_Dealloc(&tstr[0]);
    return Okay(_status);
}

std::vector<Eigen::MatrixXd> TFModel::predict(const std::vector<Eigen::MatrixXd> &input, int out_steps)
{
    int batch_size = input.size();
    int in_steps = input[0].cols();
    int num_features = input[0].rows();

    const int64_t dims[3] = {batch_size, in_steps, num_features};
    const size_t nbytes_in = batch_size * in_steps * num_features * sizeof(float);
    TF_Tensor* t = TF_AllocateTensor(TF_FLOAT, dims, 3, nbytes_in);

    const size_t nbytes_out = batch_size * out_steps * num_features * sizeof(float);
    //TF_Tensor* tOut = TF_AllocateTensor(TF_FLOAT, dimsOut, 3, nbytes_out);

    float *t_data = (float *)TF_TensorData(t);
    int offset = 0;
    for (int i_batch = 0; i_batch < batch_size; i_batch++)
    {
        const Eigen::MatrixXd &batch = input[i_batch];
        for (int i_step = 0; i_step < in_steps; i_step++)
        {
            for (int i_feature = 0; i_feature < num_features; i_feature++)
            {
                t_data[offset++] = (float)batch(i_feature, i_step);
            }
        }
    }

    TF_Output inputs[1] = {_input};
    TF_Tensor* input_values[1] = {t};
    TF_Output outputs[1] = {_output};
    TF_Tensor* output_values[1] = {NULL};

    std::vector<Eigen::MatrixXd> results;
    TF_SessionRun(_session, NULL, inputs, input_values, 1, outputs,
                  output_values, 1,
                  /* No target operations to run */
                  NULL, 0, NULL, _status);
    TF_DeleteTensor(t);
    if (!Okay(_status))
    {
        logError("Cannot run session.");
        //TF_DeleteTensor(tOut);
        return results;
    }

    if (TF_TensorByteSize(output_values[0]) != (size_t)nbytes_out)
    {
        std::stringstream ss;
        ss << "Expected predictions tensor to have " << nbytes_out << " bytes, has " << TF_TensorByteSize(output_values[0]);
        logError(ss.str().c_str());
        TF_DeleteTensor(output_values[0]);
        return results;
    }

    TF_Tensor* tOut = output_values[0];
    float *out_data = (float *)TF_TensorData(tOut);
    offset = 0;
    for (int i_batch = 0; i_batch < batch_size; i_batch++)
    {
        Eigen::MatrixXd result(num_features, out_steps);
        for (int i_step = 0; i_step < out_steps; i_step++)
        {
            for (int i_feature = 0; i_feature < num_features; i_feature++)
            {
                result(i_feature, i_step) = out_data[offset++];
            }
        }
        results.push_back(result);
    }
    TF_DeleteTensor(tOut);

    return results;
}

int TFModel::runTrainStep(const std::vector<Eigen::MatrixXd> &input, const std::vector<Eigen::MatrixXd> &target, int batch_size)
{
    std::vector<int> selections;
    for (int i = 0; i < batch_size; i++)
    {
        selections.push_back(rand() % input.size());
    }

    int num_features = input[0].rows();
    int in_steps = input[0].cols();
    int out_steps = target[0].cols();

    const int64_t dims_x[3] = {batch_size, in_steps, num_features};
    const size_t nbytes_in = batch_size * in_steps * num_features * sizeof(float);
    TF_Tensor* x = TF_AllocateTensor(TF_FLOAT, dims_x, 3, nbytes_in);
    float *x_data = (float *)TF_TensorData(x);
    int offset = 0;
    for (int i_batch = 0; i_batch < batch_size; i_batch++)
    {
        const Eigen::MatrixXd &batch = input[selections[i_batch]];
        for (int i_step = 0; i_step < in_steps; i_step++)
        {
            for (int i_feature = 0; i_feature < num_features; i_feature++)
            {
                x_data[offset++] = (float)batch(i_feature, i_step);
            }
        }
    }

    const int64_t dims_y[3] = {batch_size, out_steps, num_features};
    const size_t nbytes_out = batch_size * out_steps * num_features * sizeof(float);
    TF_Tensor* y = TF_AllocateTensor(TF_FLOAT, dims_y, 3, nbytes_out);
    float *y_data = (float *)TF_TensorData(y);
    offset = 0;
    for (int i_batch = 0; i_batch < batch_size; i_batch++)
    {
        const Eigen::MatrixXd &batch = target[selections[i_batch]];
        for (int i_step = 0; i_step < out_steps; i_step++)
        {
            for (int i_feature = 0; i_feature < num_features; i_feature++)
            {
                y_data[offset++] = (float)batch(i_feature, i_step);
            }
        }
    }

    TF_Output inputs[2] = {_input, _target};
    TF_Tensor* input_values[2] = {x, y};
    const TF_Operation* train_op[1] = {_train_op};
    TF_SessionRun(_session, NULL, inputs, input_values, 2,
                  NULL, NULL, 0, train_op, 1, NULL, _status);
    TF_DeleteTensor(x);
    TF_DeleteTensor(y);
    return Okay(_status);
}

double TFModel::loss(const std::vector<Eigen::MatrixXd> &input, const std::vector<Eigen::MatrixXd> &target)
{
    int nRows = target[0].rows();
    int nCols = target[0].cols();
    std::vector<Eigen::MatrixXd> output = predict(input, nCols);
    double value = 0.0;
    for (size_t i = 0; i < input.size(); i++)
    {
        double valueI = 0.0;
        const Eigen::MatrixXd &Ao = output[i];
        const Eigen::MatrixXd &At = target[i];
        for (int r = 0; r < nRows; r++)
        {
            for (int c = 0; c < nCols; c++)
            {
                double eao = Ao(r,c);
                double eat = At(r,c);
                double diff = eao - eat;
                valueI += diff * diff;
            }
        }
        value += valueI;
    }
    return sqrt(value);
}
