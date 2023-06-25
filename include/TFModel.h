#ifndef TFMODEL_H
#define TFMODEL_H
#include <tensorflow/c/c_api.h>
#include <Eigen/Dense>
#include <vector>

class TFModel
{
    public:
        TFModel(const char* graph_def_filename);
        virtual ~TFModel();
        int init();
        int checkpoint(const char* checkpoint_prefix, bool save);
        std::vector<Eigen::MatrixXd> predict(const std::vector<Eigen::MatrixXd> &input, int out_steps);
        int runTrainStep(const std::vector<Eigen::MatrixXd> &input, const std::vector<Eigen::MatrixXd> &target, int batch_size);
        double loss(const std::vector<Eigen::MatrixXd> &input, const std::vector<Eigen::MatrixXd> &target);

    protected:

    private:
        TF_Graph* _graph;
        TF_Session* _session;
        TF_Status* _status;
        TF_Output _input, _target, _output;
        TF_Operation *_init_op, *_train_op, *_save_op, *_restore_op;
        TF_Output _checkpoint_file;
};

#endif // TFMODEL_H
