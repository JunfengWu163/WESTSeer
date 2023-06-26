import tensorflow.compat.v1 as tf
tf.disable_v2_behavior()

k = 5
in_steps = 10
num_features = 2 + 2 * k + k * (k - 1)
out_steps = 5
lstm_units = k + 2;

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
y_ = tf.identity(multi_lstm_model(x), name='output')

# Optimize loss
loss = tf.reduce_mean(tf.square(y_ - y), name='loss')
optimizer = tf.train.AdamOptimizer(learning_rate=0.001)
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
with open('lstm_5.pb', 'wb') as f:
  f.write(tf.get_default_graph().as_graph_def().SerializeToString())

