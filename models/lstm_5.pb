
C
inputPlaceholder*
dtype0* 
shape:���������
 
D
targetPlaceholder*
dtype0* 
shape:��������� 
�
;eval/lstm/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"       *-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *�衾*-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *��>*-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
Ceval/lstm/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform;eval/lstm/lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0*

seed *
T0*
seed2 *-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/subSub9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/max9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/min*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
T0
�
9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/mulMulCeval/lstm/lstm_cell/kernel/Initializer/random_uniform/RandomUniform9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/sub*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
T0
�
5eval/lstm/lstm_cell/kernel/Initializer/random_uniformAddV29eval/lstm/lstm_cell/kernel/Initializer/random_uniform/mul9eval/lstm/lstm_cell/kernel/Initializer/random_uniform/min*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
T0
�
eval/lstm/lstm_cell/kernelVarHandleOp*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
	container *
shape
: *+
shared_nameeval/lstm/lstm_cell/kernel*
allowed_devices
 *
dtype0
m
;eval/lstm/lstm_cell/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/lstm/lstm_cell/kernel
�
!eval/lstm/lstm_cell/kernel/AssignAssignVariableOpeval/lstm/lstm_cell/kernel5eval/lstm/lstm_cell/kernel/Initializer/random_uniform*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
i
.eval/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/kernel*
dtype0
�
Deval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/shapeConst*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
valueB"      *
dtype0
�
Ceval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
Eeval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/stddevConst*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
valueB
 *  �?*
dtype0
�
Seval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormalDeval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/shape*
dtype0*

seed *
T0*
seed2 *7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
Beval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/mulMulSeval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/RandomStandardNormalEeval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/stddev*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
>eval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normalAddV2Beval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/mulCeval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal/mean*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
3eval/lstm/lstm_cell/recurrent_kernel/Initializer/QrQr>eval/lstm/lstm_cell/recurrent_kernel/Initializer/random_normal*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0*
full_matrices( 
�
9eval/lstm/lstm_cell/recurrent_kernel/Initializer/DiagPartDiagPart5eval/lstm/lstm_cell/recurrent_kernel/Initializer/Qr:1*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
5eval/lstm/lstm_cell/recurrent_kernel/Initializer/SignSign9eval/lstm/lstm_cell/recurrent_kernel/Initializer/DiagPart*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
4eval/lstm/lstm_cell/recurrent_kernel/Initializer/mulMul3eval/lstm/lstm_cell/recurrent_kernel/Initializer/Qr5eval/lstm/lstm_cell/recurrent_kernel/Initializer/Sign*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
Peval/lstm/lstm_cell/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
dtype0*
valueB"       *7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
Keval/lstm/lstm_cell/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose4eval/lstm/lstm_cell/recurrent_kernel/Initializer/mulPeval/lstm/lstm_cell/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0*
Tperm0
�
>eval/lstm/lstm_cell/recurrent_kernel/Initializer/Reshape/shapeConst*
dtype0*
valueB"      *7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
8eval/lstm/lstm_cell/recurrent_kernel/Initializer/ReshapeReshapeKeval/lstm/lstm_cell/recurrent_kernel/Initializer/matrix_transpose/transpose>eval/lstm/lstm_cell/recurrent_kernel/Initializer/Reshape/shape*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
Tshape0*
T0
�
8eval/lstm/lstm_cell/recurrent_kernel/Initializer/mul_1/xConst*
dtype0*
valueB
 *  �?*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
6eval/lstm/lstm_cell/recurrent_kernel/Initializer/mul_1Mul8eval/lstm/lstm_cell/recurrent_kernel/Initializer/mul_1/x8eval/lstm/lstm_cell/recurrent_kernel/Initializer/Reshape*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
T0
�
$eval/lstm/lstm_cell/recurrent_kernelVarHandleOp*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
	container *
shape
:*5
shared_name&$eval/lstm/lstm_cell/recurrent_kernel*
allowed_devices
 *
dtype0
�
Eeval/lstm/lstm_cell/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp$eval/lstm/lstm_cell/recurrent_kernel
�
+eval/lstm/lstm_cell/recurrent_kernel/AssignAssignVariableOp$eval/lstm/lstm_cell/recurrent_kernel6eval/lstm/lstm_cell/recurrent_kernel/Initializer/mul_1*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
}
8eval/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp$eval/lstm/lstm_cell/recurrent_kernel*
dtype0
�
*eval/lstm/lstm_cell/bias/Initializer/zerosConst*+
_class!
loc:@eval/lstm/lstm_cell/bias*
valueB*    *
dtype0
�
)eval/lstm/lstm_cell/bias/Initializer/onesConst*+
_class!
loc:@eval/lstm/lstm_cell/bias*
valueB*  �?*
dtype0
�
,eval/lstm/lstm_cell/bias/Initializer/zeros_1Const*
dtype0*
valueB*    *+
_class!
loc:@eval/lstm/lstm_cell/bias
�
0eval/lstm/lstm_cell/bias/Initializer/concat/axisConst*
dtype0*
value	B : *+
_class!
loc:@eval/lstm/lstm_cell/bias
�
+eval/lstm/lstm_cell/bias/Initializer/concatConcatV2*eval/lstm/lstm_cell/bias/Initializer/zeros)eval/lstm/lstm_cell/bias/Initializer/ones,eval/lstm/lstm_cell/bias/Initializer/zeros_10eval/lstm/lstm_cell/bias/Initializer/concat/axis*+
_class!
loc:@eval/lstm/lstm_cell/bias*

Tidx0*
T0*
N
�
eval/lstm/lstm_cell/biasVarHandleOp*
dtype0*
	container *
shape:*)
shared_nameeval/lstm/lstm_cell/bias*
allowed_devices
 *+
_class!
loc:@eval/lstm/lstm_cell/bias
i
9eval/lstm/lstm_cell/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/lstm/lstm_cell/bias
�
eval/lstm/lstm_cell/bias/AssignAssignVariableOpeval/lstm/lstm_cell/bias+eval/lstm/lstm_cell/bias/Initializer/concat*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
e
,eval/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/bias*
dtype0
F
eval/lstm/ShapeShapeinput*
out_type0*
T0:��
K
eval/lstm/strided_slice/stackConst*
dtype0*
valueB: 
M
eval/lstm/strided_slice/stack_1Const*
dtype0*
valueB:
M
eval/lstm/strided_slice/stack_2Const*
dtype0*
valueB:
�
eval/lstm/strided_sliceStridedSliceeval/lstm/Shapeeval/lstm/strided_slice/stackeval/lstm/strided_slice/stack_1eval/lstm/strided_slice/stack_2*
ellipsis_mask *
end_mask *
T0*

begin_mask *
new_axis_mask *
Index0*
shrink_axis_mask
B
eval/lstm/zeros/packed/1Const*
dtype0*
value	B :
o
eval/lstm/zeros/packedPackeval/lstm/strided_sliceeval/lstm/zeros/packed/1*
T0*

axis *
N
B
eval/lstm/zeros/ConstConst*
dtype0*
valueB
 *    
a
eval/lstm/zerosFilleval/lstm/zeros/packedeval/lstm/zeros/Const*

index_type0*
T0
D
eval/lstm/zeros_1/packed/1Const*
dtype0*
value	B :
s
eval/lstm/zeros_1/packedPackeval/lstm/strided_sliceeval/lstm/zeros_1/packed/1*
T0*

axis *
N
D
eval/lstm/zeros_1/ConstConst*
dtype0*
valueB
 *    
g
eval/lstm/zeros_1Filleval/lstm/zeros_1/packedeval/lstm/zeros_1/Const*

index_type0*
T0
Q
eval/lstm/transpose/permConst*
dtype0*!
valueB"          
W
eval/lstm/transpose	Transposeinputeval/lstm/transpose/perm*
T0*
Tperm0
V
eval/lstm/Shape_1Shapeeval/lstm/transpose*
out_type0*
T0:��
M
eval/lstm/strided_slice_1/stackConst*
dtype0*
valueB: 
O
!eval/lstm/strided_slice_1/stack_1Const*
dtype0*
valueB:
O
!eval/lstm/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
eval/lstm/strided_slice_1StridedSliceeval/lstm/Shape_1eval/lstm/strided_slice_1/stack!eval/lstm/strided_slice_1/stack_1!eval/lstm/strided_slice_1/stack_2*
ellipsis_mask *
end_mask *
T0*

begin_mask *
Index0*
new_axis_mask *
shrink_axis_mask
�
eval/lstm/TensorArrayTensorArrayV3eval/lstm/strided_slice_1*
dtype0*
element_shape:*
clear_after_read(*!
tensor_array_name
input_ta_0*
identical_element_shapes(*
dynamic_size( 
g
"eval/lstm/TensorArrayUnstack/ShapeShapeeval/lstm/transpose*
out_type0*
T0:��
^
0eval/lstm/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
valueB: 
`
2eval/lstm/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
valueB:
`
2eval/lstm/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
valueB:
�
*eval/lstm/TensorArrayUnstack/strided_sliceStridedSlice"eval/lstm/TensorArrayUnstack/Shape0eval/lstm/TensorArrayUnstack/strided_slice/stack2eval/lstm/TensorArrayUnstack/strided_slice/stack_12eval/lstm/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *
T0*
end_mask *

begin_mask *
new_axis_mask *
Index0*
shrink_axis_mask
R
(eval/lstm/TensorArrayUnstack/range/startConst*
dtype0*
value	B : 
R
(eval/lstm/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
�
"eval/lstm/TensorArrayUnstack/rangeRange(eval/lstm/TensorArrayUnstack/range/start*eval/lstm/TensorArrayUnstack/strided_slice(eval/lstm/TensorArrayUnstack/range/delta*

Tidx0
�
Deval/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3eval/lstm/TensorArray"eval/lstm/TensorArrayUnstack/rangeeval/lstm/transposeeval/lstm/TensorArray:1*&
_class
loc:@eval/lstm/transpose*
T0
M
eval/lstm/strided_slice_2/stackConst*
dtype0*
valueB: 
O
!eval/lstm/strided_slice_2/stack_1Const*
dtype0*
valueB:
O
!eval/lstm/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
eval/lstm/strided_slice_2StridedSliceeval/lstm/transposeeval/lstm/strided_slice_2/stack!eval/lstm/strided_slice_2/stack_1!eval/lstm/strided_slice_2/stack_2*
ellipsis_mask *
T0*
end_mask *

begin_mask *
new_axis_mask *
Index0*
shrink_axis_mask
O
%eval/lstm/lstm_cell_1/split/split_dimConst*
dtype0*
value	B :
e
*eval/lstm/lstm_cell_1/split/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/kernel*
dtype0
�
eval/lstm/lstm_cell_1/splitSplit%eval/lstm/lstm_cell_1/split/split_dim*eval/lstm/lstm_cell_1/split/ReadVariableOp*
T0*
	num_split
�
eval/lstm/lstm_cell_1/MatMulMatMuleval/lstm/strided_slice_2eval/lstm/lstm_cell_1/split*
transpose_b( *
T0*
transpose_a( 
�
eval/lstm/lstm_cell_1/MatMul_1MatMuleval/lstm/strided_slice_2eval/lstm/lstm_cell_1/split:1*
transpose_b( *
T0*
transpose_a( 
�
eval/lstm/lstm_cell_1/MatMul_2MatMuleval/lstm/strided_slice_2eval/lstm/lstm_cell_1/split:2*
transpose_b( *
T0*
transpose_a( 
�
eval/lstm/lstm_cell_1/MatMul_3MatMuleval/lstm/strided_slice_2eval/lstm/lstm_cell_1/split:3*
transpose_b( *
T0*
transpose_a( 
Q
'eval/lstm/lstm_cell_1/split_1/split_dimConst*
dtype0*
value	B : 
e
,eval/lstm/lstm_cell_1/split_1/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/bias*
dtype0
�
eval/lstm/lstm_cell_1/split_1Split'eval/lstm/lstm_cell_1/split_1/split_dim,eval/lstm/lstm_cell_1/split_1/ReadVariableOp*
T0*
	num_split
�
eval/lstm/lstm_cell_1/BiasAddBiasAddeval/lstm/lstm_cell_1/MatMuleval/lstm/lstm_cell_1/split_1*
T0*
data_formatNHWC
�
eval/lstm/lstm_cell_1/BiasAdd_1BiasAddeval/lstm/lstm_cell_1/MatMul_1eval/lstm/lstm_cell_1/split_1:1*
T0*
data_formatNHWC
�
eval/lstm/lstm_cell_1/BiasAdd_2BiasAddeval/lstm/lstm_cell_1/MatMul_2eval/lstm/lstm_cell_1/split_1:2*
T0*
data_formatNHWC
�
eval/lstm/lstm_cell_1/BiasAdd_3BiasAddeval/lstm/lstm_cell_1/MatMul_3eval/lstm/lstm_cell_1/split_1:3*
T0*
data_formatNHWC
i
$eval/lstm/lstm_cell_1/ReadVariableOpReadVariableOp$eval/lstm/lstm_cell/recurrent_kernel*
dtype0
^
)eval/lstm/lstm_cell_1/strided_slice/stackConst*
dtype0*
valueB"        
`
+eval/lstm/lstm_cell_1/strided_slice/stack_1Const*
dtype0*
valueB"       
`
+eval/lstm/lstm_cell_1/strided_slice/stack_2Const*
dtype0*
valueB"      
�
#eval/lstm/lstm_cell_1/strided_sliceStridedSlice$eval/lstm/lstm_cell_1/ReadVariableOp)eval/lstm/lstm_cell_1/strided_slice/stack+eval/lstm/lstm_cell_1/strided_slice/stack_1+eval/lstm/lstm_cell_1/strided_slice/stack_2*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
eval/lstm/lstm_cell_1/MatMul_4MatMuleval/lstm/zeros#eval/lstm/lstm_cell_1/strided_slice*
transpose_b( *
T0*
transpose_a( 
j
eval/lstm/lstm_cell_1/addAddV2eval/lstm/lstm_cell_1/BiasAddeval/lstm/lstm_cell_1/MatMul_4*
T0
H
eval/lstm/lstm_cell_1/ConstConst*
dtype0*
valueB
 *��L>
J
eval/lstm/lstm_cell_1/Const_1Const*
dtype0*
valueB
 *   ?
a
eval/lstm/lstm_cell_1/MulMuleval/lstm/lstm_cell_1/addeval/lstm/lstm_cell_1/Const*
T0
g
eval/lstm/lstm_cell_1/Add_1AddV2eval/lstm/lstm_cell_1/Muleval/lstm/lstm_cell_1/Const_1*
T0
Z
-eval/lstm/lstm_cell_1/clip_by_value/Minimum/yConst*
dtype0*
valueB
 *  �?
�
+eval/lstm/lstm_cell_1/clip_by_value/MinimumMinimumeval/lstm/lstm_cell_1/Add_1-eval/lstm/lstm_cell_1/clip_by_value/Minimum/y*
T0
R
%eval/lstm/lstm_cell_1/clip_by_value/yConst*
dtype0*
valueB
 *    
�
#eval/lstm/lstm_cell_1/clip_by_valueMaximum+eval/lstm/lstm_cell_1/clip_by_value/Minimum%eval/lstm/lstm_cell_1/clip_by_value/y*
T0
k
&eval/lstm/lstm_cell_1/ReadVariableOp_1ReadVariableOp$eval/lstm/lstm_cell/recurrent_kernel*
dtype0
`
+eval/lstm/lstm_cell_1/strided_slice_1/stackConst*
dtype0*
valueB"       
b
-eval/lstm/lstm_cell_1/strided_slice_1/stack_1Const*
dtype0*
valueB"       
b
-eval/lstm/lstm_cell_1/strided_slice_1/stack_2Const*
dtype0*
valueB"      
�
%eval/lstm/lstm_cell_1/strided_slice_1StridedSlice&eval/lstm/lstm_cell_1/ReadVariableOp_1+eval/lstm/lstm_cell_1/strided_slice_1/stack-eval/lstm/lstm_cell_1/strided_slice_1/stack_1-eval/lstm/lstm_cell_1/strided_slice_1/stack_2*
ellipsis_mask *
end_mask*
T0*

begin_mask*
new_axis_mask *
Index0*
shrink_axis_mask 
�
eval/lstm/lstm_cell_1/MatMul_5MatMuleval/lstm/zeros%eval/lstm/lstm_cell_1/strided_slice_1*
transpose_b( *
T0*
transpose_a( 
n
eval/lstm/lstm_cell_1/add_2AddV2eval/lstm/lstm_cell_1/BiasAdd_1eval/lstm/lstm_cell_1/MatMul_5*
T0
J
eval/lstm/lstm_cell_1/Const_2Const*
dtype0*
valueB
 *��L>
J
eval/lstm/lstm_cell_1/Const_3Const*
dtype0*
valueB
 *   ?
g
eval/lstm/lstm_cell_1/Mul_1Muleval/lstm/lstm_cell_1/add_2eval/lstm/lstm_cell_1/Const_2*
T0
i
eval/lstm/lstm_cell_1/Add_3AddV2eval/lstm/lstm_cell_1/Mul_1eval/lstm/lstm_cell_1/Const_3*
T0
\
/eval/lstm/lstm_cell_1/clip_by_value_1/Minimum/yConst*
dtype0*
valueB
 *  �?
�
-eval/lstm/lstm_cell_1/clip_by_value_1/MinimumMinimumeval/lstm/lstm_cell_1/Add_3/eval/lstm/lstm_cell_1/clip_by_value_1/Minimum/y*
T0
T
'eval/lstm/lstm_cell_1/clip_by_value_1/yConst*
dtype0*
valueB
 *    
�
%eval/lstm/lstm_cell_1/clip_by_value_1Maximum-eval/lstm/lstm_cell_1/clip_by_value_1/Minimum'eval/lstm/lstm_cell_1/clip_by_value_1/y*
T0
e
eval/lstm/lstm_cell_1/mul_2Mul%eval/lstm/lstm_cell_1/clip_by_value_1eval/lstm/zeros_1*
T0
k
&eval/lstm/lstm_cell_1/ReadVariableOp_2ReadVariableOp$eval/lstm/lstm_cell/recurrent_kernel*
dtype0
`
+eval/lstm/lstm_cell_1/strided_slice_2/stackConst*
dtype0*
valueB"       
b
-eval/lstm/lstm_cell_1/strided_slice_2/stack_1Const*
dtype0*
valueB"       
b
-eval/lstm/lstm_cell_1/strided_slice_2/stack_2Const*
dtype0*
valueB"      
�
%eval/lstm/lstm_cell_1/strided_slice_2StridedSlice&eval/lstm/lstm_cell_1/ReadVariableOp_2+eval/lstm/lstm_cell_1/strided_slice_2/stack-eval/lstm/lstm_cell_1/strided_slice_2/stack_1-eval/lstm/lstm_cell_1/strided_slice_2/stack_2*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
eval/lstm/lstm_cell_1/MatMul_6MatMuleval/lstm/zeros%eval/lstm/lstm_cell_1/strided_slice_2*
transpose_b( *
T0*
transpose_a( 
n
eval/lstm/lstm_cell_1/add_4AddV2eval/lstm/lstm_cell_1/BiasAdd_2eval/lstm/lstm_cell_1/MatMul_6*
T0
H
eval/lstm/lstm_cell_1/TanhTanheval/lstm/lstm_cell_1/add_4*
T0
l
eval/lstm/lstm_cell_1/mul_3Mul#eval/lstm/lstm_cell_1/clip_by_valueeval/lstm/lstm_cell_1/Tanh*
T0
g
eval/lstm/lstm_cell_1/add_5AddV2eval/lstm/lstm_cell_1/mul_2eval/lstm/lstm_cell_1/mul_3*
T0
k
&eval/lstm/lstm_cell_1/ReadVariableOp_3ReadVariableOp$eval/lstm/lstm_cell/recurrent_kernel*
dtype0
`
+eval/lstm/lstm_cell_1/strided_slice_3/stackConst*
dtype0*
valueB"       
b
-eval/lstm/lstm_cell_1/strided_slice_3/stack_1Const*
dtype0*
valueB"        
b
-eval/lstm/lstm_cell_1/strided_slice_3/stack_2Const*
dtype0*
valueB"      
�
%eval/lstm/lstm_cell_1/strided_slice_3StridedSlice&eval/lstm/lstm_cell_1/ReadVariableOp_3+eval/lstm/lstm_cell_1/strided_slice_3/stack-eval/lstm/lstm_cell_1/strided_slice_3/stack_1-eval/lstm/lstm_cell_1/strided_slice_3/stack_2*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
eval/lstm/lstm_cell_1/MatMul_7MatMuleval/lstm/zeros%eval/lstm/lstm_cell_1/strided_slice_3*
transpose_b( *
T0*
transpose_a( 
n
eval/lstm/lstm_cell_1/add_6AddV2eval/lstm/lstm_cell_1/BiasAdd_3eval/lstm/lstm_cell_1/MatMul_7*
T0
J
eval/lstm/lstm_cell_1/Const_4Const*
dtype0*
valueB
 *��L>
J
eval/lstm/lstm_cell_1/Const_5Const*
dtype0*
valueB
 *   ?
g
eval/lstm/lstm_cell_1/Mul_4Muleval/lstm/lstm_cell_1/add_6eval/lstm/lstm_cell_1/Const_4*
T0
i
eval/lstm/lstm_cell_1/Add_7AddV2eval/lstm/lstm_cell_1/Mul_4eval/lstm/lstm_cell_1/Const_5*
T0
\
/eval/lstm/lstm_cell_1/clip_by_value_2/Minimum/yConst*
dtype0*
valueB
 *  �?
�
-eval/lstm/lstm_cell_1/clip_by_value_2/MinimumMinimumeval/lstm/lstm_cell_1/Add_7/eval/lstm/lstm_cell_1/clip_by_value_2/Minimum/y*
T0
T
'eval/lstm/lstm_cell_1/clip_by_value_2/yConst*
dtype0*
valueB
 *    
�
%eval/lstm/lstm_cell_1/clip_by_value_2Maximum-eval/lstm/lstm_cell_1/clip_by_value_2/Minimum'eval/lstm/lstm_cell_1/clip_by_value_2/y*
T0
J
eval/lstm/lstm_cell_1/Tanh_1Tanheval/lstm/lstm_cell_1/add_5*
T0
p
eval/lstm/lstm_cell_1/mul_5Mul%eval/lstm/lstm_cell_1/clip_by_value_2eval/lstm/lstm_cell_1/Tanh_1*
T0
�
eval/lstm/TensorArray_1TensorArrayV3eval/lstm/strided_slice_1*
dtype0*$
element_shape:���������*
clear_after_read(*"
tensor_array_nameoutput_ta_0*
identical_element_shapes(*
dynamic_size( 
8
eval/lstm/timeConst*
dtype0*
value	B : 
�
eval/lstm/while/EnterEntereval/lstm/time*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant( 
�
eval/lstm/while/Enter_1Entereval/lstm/TensorArray_1:1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant( 
�
eval/lstm/while/Enter_2Entereval/lstm/zeros*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant( 
�
eval/lstm/while/Enter_3Entereval/lstm/zeros_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant( 
f
eval/lstm/while/MergeMergeeval/lstm/while/Entereval/lstm/while/NextIteration*
T0*
N
l
eval/lstm/while/Merge_1Mergeeval/lstm/while/Enter_1eval/lstm/while/NextIteration_1*
T0*
N
l
eval/lstm/while/Merge_2Mergeeval/lstm/while/Enter_2eval/lstm/while/NextIteration_2*
T0*
N
l
eval/lstm/while/Merge_3Mergeeval/lstm/while/Enter_3eval/lstm/while/NextIteration_3*
T0*
N
X
eval/lstm/while/LessLesseval/lstm/while/Mergeeval/lstm/while/Less/Enter*
T0
�
eval/lstm/while/Less/EnterEntereval/lstm/strided_slice_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
:
eval/lstm/while/LoopCondLoopCondeval/lstm/while/Less
�
eval/lstm/while/SwitchSwitcheval/lstm/while/Mergeeval/lstm/while/LoopCond*(
_class
loc:@eval/lstm/while/Merge*
T0
�
eval/lstm/while/Switch_1Switcheval/lstm/while/Merge_1eval/lstm/while/LoopCond**
_class 
loc:@eval/lstm/while/Merge_1*
T0
�
eval/lstm/while/Switch_2Switcheval/lstm/while/Merge_2eval/lstm/while/LoopCond**
_class 
loc:@eval/lstm/while/Merge_2*
T0
�
eval/lstm/while/Switch_3Switcheval/lstm/while/Merge_3eval/lstm/while/LoopCond**
_class 
loc:@eval/lstm/while/Merge_3*
T0
G
eval/lstm/while/IdentityIdentityeval/lstm/while/Switch:1*
T0
K
eval/lstm/while/Identity_1Identityeval/lstm/while/Switch_1:1*
T0
K
eval/lstm/while/Identity_2Identityeval/lstm/while/Switch_2:1*
T0
K
eval/lstm/while/Identity_3Identityeval/lstm/while/Switch_3:1*
T0
�
!eval/lstm/while/TensorArrayReadV3TensorArrayReadV3'eval/lstm/while/TensorArrayReadV3/Entereval/lstm/while/Identity)eval/lstm/while/TensorArrayReadV3/Enter_1*
dtype0
�
'eval/lstm/while/TensorArrayReadV3/EnterEntereval/lstm/TensorArray*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
)eval/lstm/while/TensorArrayReadV3/Enter_1EnterDeval/lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
n
)eval/lstm/while/lstm_cell/split/split_dimConst^eval/lstm/while/Identity*
dtype0*
value	B :
�
.eval/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0
�
4eval/lstm/while/lstm_cell/split/ReadVariableOp/EnterEntereval/lstm/lstm_cell/kernel*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
eval/lstm/while/lstm_cell/splitSplit)eval/lstm/while/lstm_cell/split/split_dim.eval/lstm/while/lstm_cell/split/ReadVariableOp*
T0*
	num_split
�
 eval/lstm/while/lstm_cell/MatMulMatMul!eval/lstm/while/TensorArrayReadV3eval/lstm/while/lstm_cell/split*
transpose_b( *
T0*
transpose_a( 
�
"eval/lstm/while/lstm_cell/MatMul_1MatMul!eval/lstm/while/TensorArrayReadV3!eval/lstm/while/lstm_cell/split:1*
transpose_b( *
T0*
transpose_a( 
�
"eval/lstm/while/lstm_cell/MatMul_2MatMul!eval/lstm/while/TensorArrayReadV3!eval/lstm/while/lstm_cell/split:2*
transpose_b( *
T0*
transpose_a( 
�
"eval/lstm/while/lstm_cell/MatMul_3MatMul!eval/lstm/while/TensorArrayReadV3!eval/lstm/while/lstm_cell/split:3*
transpose_b( *
T0*
transpose_a( 
p
+eval/lstm/while/lstm_cell/split_1/split_dimConst^eval/lstm/while/Identity*
dtype0*
value	B : 
�
0eval/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0
�
6eval/lstm/while/lstm_cell/split_1/ReadVariableOp/EnterEntereval/lstm/lstm_cell/bias*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
!eval/lstm/while/lstm_cell/split_1Split+eval/lstm/while/lstm_cell/split_1/split_dim0eval/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
	num_split
�
!eval/lstm/while/lstm_cell/BiasAddBiasAdd eval/lstm/while/lstm_cell/MatMul!eval/lstm/while/lstm_cell/split_1*
T0*
data_formatNHWC
�
#eval/lstm/while/lstm_cell/BiasAdd_1BiasAdd"eval/lstm/while/lstm_cell/MatMul_1#eval/lstm/while/lstm_cell/split_1:1*
T0*
data_formatNHWC
�
#eval/lstm/while/lstm_cell/BiasAdd_2BiasAdd"eval/lstm/while/lstm_cell/MatMul_2#eval/lstm/while/lstm_cell/split_1:2*
T0*
data_formatNHWC
�
#eval/lstm/while/lstm_cell/BiasAdd_3BiasAdd"eval/lstm/while/lstm_cell/MatMul_3#eval/lstm/while/lstm_cell/split_1:3*
T0*
data_formatNHWC
�
(eval/lstm/while/lstm_cell/ReadVariableOpReadVariableOp.eval/lstm/while/lstm_cell/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0
�
.eval/lstm/while/lstm_cell/ReadVariableOp/EnterEnter$eval/lstm/lstm_cell/recurrent_kernel*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
}
-eval/lstm/while/lstm_cell/strided_slice/stackConst^eval/lstm/while/Identity*
dtype0*
valueB"        

/eval/lstm/while/lstm_cell/strided_slice/stack_1Const^eval/lstm/while/Identity*
dtype0*
valueB"       

/eval/lstm/while/lstm_cell/strided_slice/stack_2Const^eval/lstm/while/Identity*
dtype0*
valueB"      
�
'eval/lstm/while/lstm_cell/strided_sliceStridedSlice(eval/lstm/while/lstm_cell/ReadVariableOp-eval/lstm/while/lstm_cell/strided_slice/stack/eval/lstm/while/lstm_cell/strided_slice/stack_1/eval/lstm/while/lstm_cell/strided_slice/stack_2*
ellipsis_mask *
end_mask*
T0*

begin_mask*
new_axis_mask *
Index0*
shrink_axis_mask 
�
"eval/lstm/while/lstm_cell/MatMul_4MatMuleval/lstm/while/Identity_2'eval/lstm/while/lstm_cell/strided_slice*
transpose_b( *
T0*
transpose_a( 
v
eval/lstm/while/lstm_cell/addAddV2!eval/lstm/while/lstm_cell/BiasAdd"eval/lstm/while/lstm_cell/MatMul_4*
T0
g
eval/lstm/while/lstm_cell/ConstConst^eval/lstm/while/Identity*
dtype0*
valueB
 *��L>
i
!eval/lstm/while/lstm_cell/Const_1Const^eval/lstm/while/Identity*
dtype0*
valueB
 *   ?
m
eval/lstm/while/lstm_cell/MulMuleval/lstm/while/lstm_cell/addeval/lstm/while/lstm_cell/Const*
T0
s
eval/lstm/while/lstm_cell/Add_1AddV2eval/lstm/while/lstm_cell/Mul!eval/lstm/while/lstm_cell/Const_1*
T0
y
1eval/lstm/while/lstm_cell/clip_by_value/Minimum/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *  �?
�
/eval/lstm/while/lstm_cell/clip_by_value/MinimumMinimumeval/lstm/while/lstm_cell/Add_11eval/lstm/while/lstm_cell/clip_by_value/Minimum/y*
T0
q
)eval/lstm/while/lstm_cell/clip_by_value/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *    
�
'eval/lstm/while/lstm_cell/clip_by_valueMaximum/eval/lstm/while/lstm_cell/clip_by_value/Minimum)eval/lstm/while/lstm_cell/clip_by_value/y*
T0
�
*eval/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.eval/lstm/while/lstm_cell/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0

/eval/lstm/while/lstm_cell/strided_slice_1/stackConst^eval/lstm/while/Identity*
dtype0*
valueB"       
�
1eval/lstm/while/lstm_cell/strided_slice_1/stack_1Const^eval/lstm/while/Identity*
dtype0*
valueB"       
�
1eval/lstm/while/lstm_cell/strided_slice_1/stack_2Const^eval/lstm/while/Identity*
dtype0*
valueB"      
�
)eval/lstm/while/lstm_cell/strided_slice_1StridedSlice*eval/lstm/while/lstm_cell/ReadVariableOp_1/eval/lstm/while/lstm_cell/strided_slice_1/stack1eval/lstm/while/lstm_cell/strided_slice_1/stack_11eval/lstm/while/lstm_cell/strided_slice_1/stack_2*
ellipsis_mask *
end_mask*
T0*

begin_mask*
new_axis_mask *
Index0*
shrink_axis_mask 
�
"eval/lstm/while/lstm_cell/MatMul_5MatMuleval/lstm/while/Identity_2)eval/lstm/while/lstm_cell/strided_slice_1*
transpose_b( *
T0*
transpose_a( 
z
eval/lstm/while/lstm_cell/add_2AddV2#eval/lstm/while/lstm_cell/BiasAdd_1"eval/lstm/while/lstm_cell/MatMul_5*
T0
i
!eval/lstm/while/lstm_cell/Const_2Const^eval/lstm/while/Identity*
dtype0*
valueB
 *��L>
i
!eval/lstm/while/lstm_cell/Const_3Const^eval/lstm/while/Identity*
dtype0*
valueB
 *   ?
s
eval/lstm/while/lstm_cell/Mul_1Muleval/lstm/while/lstm_cell/add_2!eval/lstm/while/lstm_cell/Const_2*
T0
u
eval/lstm/while/lstm_cell/Add_3AddV2eval/lstm/while/lstm_cell/Mul_1!eval/lstm/while/lstm_cell/Const_3*
T0
{
3eval/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *  �?
�
1eval/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumeval/lstm/while/lstm_cell/Add_33eval/lstm/while/lstm_cell/clip_by_value_1/Minimum/y*
T0
s
+eval/lstm/while/lstm_cell/clip_by_value_1/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *    
�
)eval/lstm/while/lstm_cell/clip_by_value_1Maximum1eval/lstm/while/lstm_cell/clip_by_value_1/Minimum+eval/lstm/while/lstm_cell/clip_by_value_1/y*
T0
v
eval/lstm/while/lstm_cell/mul_2Mul)eval/lstm/while/lstm_cell/clip_by_value_1eval/lstm/while/Identity_3*
T0
�
*eval/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.eval/lstm/while/lstm_cell/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0

/eval/lstm/while/lstm_cell/strided_slice_2/stackConst^eval/lstm/while/Identity*
dtype0*
valueB"       
�
1eval/lstm/while/lstm_cell/strided_slice_2/stack_1Const^eval/lstm/while/Identity*
dtype0*
valueB"       
�
1eval/lstm/while/lstm_cell/strided_slice_2/stack_2Const^eval/lstm/while/Identity*
dtype0*
valueB"      
�
)eval/lstm/while/lstm_cell/strided_slice_2StridedSlice*eval/lstm/while/lstm_cell/ReadVariableOp_2/eval/lstm/while/lstm_cell/strided_slice_2/stack1eval/lstm/while/lstm_cell/strided_slice_2/stack_11eval/lstm/while/lstm_cell/strided_slice_2/stack_2*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
"eval/lstm/while/lstm_cell/MatMul_6MatMuleval/lstm/while/Identity_2)eval/lstm/while/lstm_cell/strided_slice_2*
transpose_b( *
T0*
transpose_a( 
z
eval/lstm/while/lstm_cell/add_4AddV2#eval/lstm/while/lstm_cell/BiasAdd_2"eval/lstm/while/lstm_cell/MatMul_6*
T0
P
eval/lstm/while/lstm_cell/TanhTanheval/lstm/while/lstm_cell/add_4*
T0
x
eval/lstm/while/lstm_cell/mul_3Mul'eval/lstm/while/lstm_cell/clip_by_valueeval/lstm/while/lstm_cell/Tanh*
T0
s
eval/lstm/while/lstm_cell/add_5AddV2eval/lstm/while/lstm_cell/mul_2eval/lstm/while/lstm_cell/mul_3*
T0
�
*eval/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.eval/lstm/while/lstm_cell/ReadVariableOp/Enter^eval/lstm/while/Identity*
dtype0

/eval/lstm/while/lstm_cell/strided_slice_3/stackConst^eval/lstm/while/Identity*
dtype0*
valueB"       
�
1eval/lstm/while/lstm_cell/strided_slice_3/stack_1Const^eval/lstm/while/Identity*
dtype0*
valueB"        
�
1eval/lstm/while/lstm_cell/strided_slice_3/stack_2Const^eval/lstm/while/Identity*
dtype0*
valueB"      
�
)eval/lstm/while/lstm_cell/strided_slice_3StridedSlice*eval/lstm/while/lstm_cell/ReadVariableOp_3/eval/lstm/while/lstm_cell/strided_slice_3/stack1eval/lstm/while/lstm_cell/strided_slice_3/stack_11eval/lstm/while/lstm_cell/strided_slice_3/stack_2*
ellipsis_mask *
T0*
end_mask*

begin_mask*
new_axis_mask *
Index0*
shrink_axis_mask 
�
"eval/lstm/while/lstm_cell/MatMul_7MatMuleval/lstm/while/Identity_2)eval/lstm/while/lstm_cell/strided_slice_3*
transpose_b( *
T0*
transpose_a( 
z
eval/lstm/while/lstm_cell/add_6AddV2#eval/lstm/while/lstm_cell/BiasAdd_3"eval/lstm/while/lstm_cell/MatMul_7*
T0
i
!eval/lstm/while/lstm_cell/Const_4Const^eval/lstm/while/Identity*
dtype0*
valueB
 *��L>
i
!eval/lstm/while/lstm_cell/Const_5Const^eval/lstm/while/Identity*
dtype0*
valueB
 *   ?
s
eval/lstm/while/lstm_cell/Mul_4Muleval/lstm/while/lstm_cell/add_6!eval/lstm/while/lstm_cell/Const_4*
T0
u
eval/lstm/while/lstm_cell/Add_7AddV2eval/lstm/while/lstm_cell/Mul_4!eval/lstm/while/lstm_cell/Const_5*
T0
{
3eval/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *  �?
�
1eval/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumeval/lstm/while/lstm_cell/Add_73eval/lstm/while/lstm_cell/clip_by_value_2/Minimum/y*
T0
s
+eval/lstm/while/lstm_cell/clip_by_value_2/yConst^eval/lstm/while/Identity*
dtype0*
valueB
 *    
�
)eval/lstm/while/lstm_cell/clip_by_value_2Maximum1eval/lstm/while/lstm_cell/clip_by_value_2/Minimum+eval/lstm/while/lstm_cell/clip_by_value_2/y*
T0
R
 eval/lstm/while/lstm_cell/Tanh_1Tanheval/lstm/while/lstm_cell/add_5*
T0
|
eval/lstm/while/lstm_cell/mul_5Mul)eval/lstm/while/lstm_cell/clip_by_value_2 eval/lstm/while/lstm_cell/Tanh_1*
T0
�
3eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV39eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3/Entereval/lstm/while/Identityeval/lstm/while/lstm_cell/mul_5eval/lstm/while/Identity_1*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5*
T0
�
9eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntereval/lstm/TensorArray_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5
Z
eval/lstm/while/add/yConst^eval/lstm/while/Identity*
dtype0*
value	B :
V
eval/lstm/while/addAddV2eval/lstm/while/Identityeval/lstm/while/add/y*
T0
L
eval/lstm/while/NextIterationNextIterationeval/lstm/while/add*
T0
n
eval/lstm/while/NextIteration_1NextIteration3eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3*
T0
Z
eval/lstm/while/NextIteration_2NextIterationeval/lstm/while/lstm_cell/mul_5*
T0
Z
eval/lstm/while/NextIteration_3NextIterationeval/lstm/while/lstm_cell/add_5*
T0
=
eval/lstm/while/ExitExiteval/lstm/while/Switch*
T0
A
eval/lstm/while/Exit_1Exiteval/lstm/while/Switch_1*
T0
A
eval/lstm/while/Exit_2Exiteval/lstm/while/Switch_2*
T0
A
eval/lstm/while/Exit_3Exiteval/lstm/while/Switch_3*
T0
|
&eval/lstm/TensorArrayStack/range/startConst*
dtype0*
value	B : **
_class 
loc:@eval/lstm/TensorArray_1
|
&eval/lstm/TensorArrayStack/range/deltaConst**
_class 
loc:@eval/lstm/TensorArray_1*
value	B :*
dtype0
�
 eval/lstm/TensorArrayStack/rangeRange&eval/lstm/TensorArrayStack/range/starteval/lstm/strided_slice_1&eval/lstm/TensorArrayStack/range/delta**
_class 
loc:@eval/lstm/TensorArray_1*

Tidx0
�
.eval/lstm/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3eval/lstm/TensorArray_1 eval/lstm/TensorArrayStack/rangeeval/lstm/while/Exit_1*
dtype0*$
element_shape:���������**
_class 
loc:@eval/lstm/TensorArray_1
V
eval/lstm/strided_slice_3/stackConst*
dtype0*
valueB:
���������
O
!eval/lstm/strided_slice_3/stack_1Const*
dtype0*
valueB: 
O
!eval/lstm/strided_slice_3/stack_2Const*
dtype0*
valueB:
�
eval/lstm/strided_slice_3StridedSlice.eval/lstm/TensorArrayStack/TensorArrayGatherV3eval/lstm/strided_slice_3/stack!eval/lstm/strided_slice_3/stack_1!eval/lstm/strided_slice_3/stack_2*
ellipsis_mask *
T0*
end_mask *

begin_mask *
new_axis_mask *
Index0*
shrink_axis_mask
S
eval/lstm/transpose_1/permConst*
dtype0*!
valueB"          
�
eval/lstm/transpose_1	Transpose.eval/lstm/TensorArrayStack/TensorArrayGatherV3eval/lstm/transpose_1/perm*
T0*
Tperm0
�
3eval/dense/kernel/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@eval/dense/kernel*
valueB"   �   *
dtype0
|
)eval/dense/kernel/Initializer/zeros/ConstConst*$
_class
loc:@eval/dense/kernel*
valueB
 *    *
dtype0
�
#eval/dense/kernel/Initializer/zerosFill3eval/dense/kernel/Initializer/zeros/shape_as_tensor)eval/dense/kernel/Initializer/zeros/Const*$
_class
loc:@eval/dense/kernel*

index_type0*
T0
�
eval/dense/kernelVarHandleOp*$
_class
loc:@eval/dense/kernel*
	container *
shape:	�*"
shared_nameeval/dense/kernel*
allowed_devices
 *
dtype0
[
2eval/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/kernel
�
eval/dense/kernel/AssignAssignVariableOpeval/dense/kernel#eval/dense/kernel/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
W
%eval/dense/kernel/Read/ReadVariableOpReadVariableOpeval/dense/kernel*
dtype0
w
!eval/dense/bias/Initializer/zerosConst*
dtype0*
valueB�*    *"
_class
loc:@eval/dense/bias
�
eval/dense/biasVarHandleOp*"
_class
loc:@eval/dense/bias*
	container *
shape:�* 
shared_nameeval/dense/bias*
allowed_devices
 *
dtype0
W
0eval/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/bias
�
eval/dense/bias/AssignAssignVariableOpeval/dense/bias!eval/dense/bias/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
S
#eval/dense/bias/Read/ReadVariableOpReadVariableOpeval/dense/bias*
dtype0
R
 eval/dense/MatMul/ReadVariableOpReadVariableOpeval/dense/kernel*
dtype0
�
eval/dense/MatMulMatMuleval/lstm/strided_slice_3 eval/dense/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( 
Q
!eval/dense/BiasAdd/ReadVariableOpReadVariableOpeval/dense/bias*
dtype0
s
eval/dense/BiasAddBiasAddeval/dense/MatMul!eval/dense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
V
eval/reshape/ShapeShapeeval/dense/BiasAdd*
out_type0*
T0:��
N
 eval/reshape/strided_slice/stackConst*
dtype0*
valueB: 
P
"eval/reshape/strided_slice/stack_1Const*
dtype0*
valueB:
P
"eval/reshape/strided_slice/stack_2Const*
dtype0*
valueB:
�
eval/reshape/strided_sliceStridedSliceeval/reshape/Shape eval/reshape/strided_slice/stack"eval/reshape/strided_slice/stack_1"eval/reshape/strided_slice/stack_2*
ellipsis_mask *
end_mask *
T0*

begin_mask *
new_axis_mask *
Index0*
shrink_axis_mask
F
eval/reshape/Reshape/shape/1Const*
dtype0*
value	B :
F
eval/reshape/Reshape/shape/2Const*
dtype0*
value	B : 
�
eval/reshape/Reshape/shapePackeval/reshape/strided_sliceeval/reshape/Reshape/shape/1eval/reshape/Reshape/shape/2*
T0*

axis *
N
f
eval/reshape/ReshapeReshapeeval/dense/BiasAddeval/reshape/Reshape/shape*
Tshape0*
T0
1
outputIdentityeval/reshape/Reshape*
T0
#
subSuboutputtarget*
T0

SquareSquaresub*
T0
>
ConstConst*
dtype0*!
valueB"          
A
lossMeanSquareConst*
	keep_dims( *
T0*

Tidx0
8
gradients/ShapeConst*
dtype0*
valueB 
F
gradients/grad_ys_0/ConstConst*
dtype0*
valueB
 *  �?
b
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*

index_type0*
T0
;
gradients/f_countConst*
dtype0*
value	B : 
�
gradients/f_count_1Entergradients/f_count*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant( 
X
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N
N
gradients/SwitchSwitchgradients/Mergeeval/lstm/while/LoopCond*
T0
T
gradients/Add/yConst^eval/lstm/while/Identity*
dtype0*
value	B :
D
gradients/AddAddV2gradients/Switch:1gradients/Add/y*
T0
�'
gradients/NextIterationNextIterationgradients/Adda^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2X^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPushV2_1E^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPushV2G^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPushV2E^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPushV2G^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPushV2C^gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1A^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPushV2_1A^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPushV2O^gradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1?^gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2_1a^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2U^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPushV2c^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2W^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2[^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2R^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPushV2c^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPushV2W^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPushV2[^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPushV2R^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPushV2Y^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPushV2P^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1?^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPushV2A^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1?^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPushV2A^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPushV2Q^gradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2S^gradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1?^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPushV2A^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPushV2*
T0
6
gradients/f_count_2Exitgradients/Switch*
T0
;
gradients/b_countConst*
dtype0*
value	B :
�
gradients/b_count_1Entergradients/f_count_2*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
\
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N
`
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0
�
gradients/GreaterEqual/EnterEntergradients/b_count*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
7
gradients/b_count_2LoopCondgradients/GreaterEqual
M
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0
Q
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0
�
gradients/NextIteration_1NextIterationgradients/SubS^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/b_sync*
T0
8
gradients/b_count_3Exitgradients/Switch_1*
T0
Z
!gradients/loss_grad/Reshape/shapeConst*
dtype0*!
valueB"         
u
gradients/loss_grad/ReshapeReshapegradients/grad_ys_0!gradients/loss_grad/Reshape/shape*
Tshape0*
T0
Q
gradients/loss_grad/ShapeShapeSquare*
out_type0*
T0:��
s
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*

Tmultiples0*
T0
S
gradients/loss_grad/Shape_1ShapeSquare*
out_type0*
T0:��
D
gradients/loss_grad/Shape_2Const*
dtype0*
valueB 
G
gradients/loss_grad/ConstConst*
dtype0*
valueB: 
~
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *

Tidx0*
T0
I
gradients/loss_grad/Const_1Const*
dtype0*
valueB: 
�
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0
G
gradients/loss_grad/Maximum/yConst*
dtype0*
value	B :
j
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0
h
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0
f
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*
Truncate( *

DstT0*

SrcT0
�
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*&
 _has_manual_control_dependencies(
f
gradients/Square_grad/ConstConst^gradients/loss_grad/truediv*
dtype0*
valueB
 *   @
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/Mul*
T0
P
gradients/sub_grad/ShapeShapeoutput*
out_type0*
T0:��
R
gradients/sub_grad/Shape_1Shapetarget*
out_type0*
T0:��
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
�
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
T0*&
 _has_manual_control_dependencies(
C
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0
�
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0
m
)gradients/eval/reshape/Reshape_grad/ShapeShapeeval/dense/BiasAdd*
out_type0*
T0:��
�
+gradients/eval/reshape/Reshape_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency)gradients/eval/reshape/Reshape_grad/Shape*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
-gradients/eval/dense/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/eval/reshape/Reshape_grad/Reshape*&
 _has_manual_control_dependencies(*
T0*
data_formatNHWC
�
2gradients/eval/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/eval/dense/BiasAdd_grad/BiasAddGrad,^gradients/eval/reshape/Reshape_grad/Reshape*&
 _has_manual_control_dependencies(
�
:gradients/eval/dense/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/eval/reshape/Reshape_grad/Reshape3^gradients/eval/dense/BiasAdd_grad/tuple/group_deps*>
_class4
20loc:@gradients/eval/reshape/Reshape_grad/Reshape*
T0
�
<gradients/eval/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/eval/dense/BiasAdd_grad/BiasAddGrad3^gradients/eval/dense/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients/eval/dense/BiasAdd_grad/BiasAddGrad*
T0
�
'gradients/eval/dense/MatMul_grad/MatMulMatMul:gradients/eval/dense/BiasAdd_grad/tuple/control_dependency eval/dense/MatMul/ReadVariableOp*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
)gradients/eval/dense/MatMul_grad/MatMul_1MatMuleval/lstm/strided_slice_3:gradients/eval/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
1gradients/eval/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/eval/dense/MatMul_grad/MatMul*^gradients/eval/dense/MatMul_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
9gradients/eval/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/eval/dense/MatMul_grad/MatMul2^gradients/eval/dense/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/eval/dense/MatMul_grad/MatMul*
T0
�
;gradients/eval/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/eval/dense/MatMul_grad/MatMul_12^gradients/eval/dense/MatMul_grad/tuple/group_deps*<
_class2
0.loc:@gradients/eval/dense/MatMul_grad/MatMul_1*
T0
�
.gradients/eval/lstm/strided_slice_3_grad/ShapeShape.eval/lstm/TensorArrayStack/TensorArrayGatherV3*
out_type0*
T0:��
v
?gradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/beginConst*
dtype0*
valueB:
���������
k
=gradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/endConst*
dtype0*
valueB: 
o
Agradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/stridesConst*
dtype0*
valueB:
�
9gradients/eval/lstm/strided_slice_3_grad/StridedSliceGradStridedSliceGrad.gradients/eval/lstm/strided_slice_3_grad/Shape?gradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/begin=gradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/endAgradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad/strides9gradients/eval/dense/MatMul_grad/tuple/control_dependency*
ellipsis_mask *
end_mask *
T0*

begin_mask *
Index0*
new_axis_mask *
shrink_axis_mask
�
_gradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3eval/lstm/TensorArray_1eval/lstm/while/Exit_1**
_class 
loc:@eval/lstm/TensorArray_1*
source	gradients*&
 _has_manual_control_dependencies(
�
[gradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityeval/lstm/while/Exit_1`^gradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3**
_class 
loc:@eval/lstm/TensorArray_1*
T0
�
egradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3_gradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3 eval/lstm/TensorArrayStack/range9gradients/eval/lstm/strided_slice_3_grad/StridedSliceGrad[gradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0
B
gradients/zeros_like	ZerosLikeeval/lstm/while/Exit_2*
T0
D
gradients/zeros_like_1	ZerosLikeeval/lstm/while/Exit_3*
T0
�
,gradients/eval/lstm/while/Exit_1_grad/b_exitEnteregradients/eval/lstm/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
,gradients/eval/lstm/while/Exit_2_grad/b_exitEntergradients/zeros_like*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
,gradients/eval/lstm/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
0gradients/eval/lstm/while/Switch_1_grad/b_switchMerge,gradients/eval/lstm/while/Exit_1_grad/b_exit7gradients/eval/lstm/while/Switch_1_grad_1/NextIteration*
T0*
N
�
0gradients/eval/lstm/while/Switch_2_grad/b_switchMerge,gradients/eval/lstm/while/Exit_2_grad/b_exit7gradients/eval/lstm/while/Switch_2_grad_1/NextIteration*
T0*
N
�
0gradients/eval/lstm/while/Switch_3_grad/b_switchMerge,gradients/eval/lstm/while/Exit_3_grad/b_exit7gradients/eval/lstm/while/Switch_3_grad_1/NextIteration*
T0*
N
�
-gradients/eval/lstm/while/Merge_1_grad/SwitchSwitch0gradients/eval/lstm/while/Switch_1_grad/b_switchgradients/b_count_2*C
_class9
75loc:@gradients/eval/lstm/while/Switch_1_grad/b_switch*
T0*&
 _has_manual_control_dependencies(
�
7gradients/eval/lstm/while/Merge_1_grad/tuple/group_depsNoOp.^gradients/eval/lstm/while/Merge_1_grad/Switch*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/Merge_1_grad/tuple/control_dependencyIdentity-gradients/eval/lstm/while/Merge_1_grad/Switch8^gradients/eval/lstm/while/Merge_1_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_1_grad/b_switch*
T0
�
Agradients/eval/lstm/while/Merge_1_grad/tuple/control_dependency_1Identity/gradients/eval/lstm/while/Merge_1_grad/Switch:18^gradients/eval/lstm/while/Merge_1_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_1_grad/b_switch*
T0
�
-gradients/eval/lstm/while/Merge_2_grad/SwitchSwitch0gradients/eval/lstm/while/Switch_2_grad/b_switchgradients/b_count_2*C
_class9
75loc:@gradients/eval/lstm/while/Switch_2_grad/b_switch*
T0*&
 _has_manual_control_dependencies(
�
7gradients/eval/lstm/while/Merge_2_grad/tuple/group_depsNoOp.^gradients/eval/lstm/while/Merge_2_grad/Switch*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/Merge_2_grad/tuple/control_dependencyIdentity-gradients/eval/lstm/while/Merge_2_grad/Switch8^gradients/eval/lstm/while/Merge_2_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_2_grad/b_switch*
T0
�
Agradients/eval/lstm/while/Merge_2_grad/tuple/control_dependency_1Identity/gradients/eval/lstm/while/Merge_2_grad/Switch:18^gradients/eval/lstm/while/Merge_2_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_2_grad/b_switch*
T0
�
-gradients/eval/lstm/while/Merge_3_grad/SwitchSwitch0gradients/eval/lstm/while/Switch_3_grad/b_switchgradients/b_count_2*C
_class9
75loc:@gradients/eval/lstm/while/Switch_3_grad/b_switch*
T0*&
 _has_manual_control_dependencies(
�
7gradients/eval/lstm/while/Merge_3_grad/tuple/group_depsNoOp.^gradients/eval/lstm/while/Merge_3_grad/Switch*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/Merge_3_grad/tuple/control_dependencyIdentity-gradients/eval/lstm/while/Merge_3_grad/Switch8^gradients/eval/lstm/while/Merge_3_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_3_grad/b_switch*
T0
�
Agradients/eval/lstm/while/Merge_3_grad/tuple/control_dependency_1Identity/gradients/eval/lstm/while/Merge_3_grad/Switch:18^gradients/eval/lstm/while/Merge_3_grad/tuple/group_deps*C
_class9
75loc:@gradients/eval/lstm/while/Switch_3_grad/b_switch*
T0
}
+gradients/eval/lstm/while/Enter_1_grad/ExitExit?gradients/eval/lstm/while/Merge_1_grad/tuple/control_dependency*
T0
}
+gradients/eval/lstm/while/Enter_2_grad/ExitExit?gradients/eval/lstm/while/Merge_2_grad/tuple/control_dependency*
T0
}
+gradients/eval/lstm/while/Enter_3_grad/ExitExit?gradients/eval/lstm/while/Merge_3_grad/tuple/control_dependency*
T0
�
Kgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_outIdentityVgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPopV2*
T0*&
 _has_manual_control_dependencies(
�
Qgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5*
valueB :
���������*
dtype0
�
Qgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/f_accStackV2Qgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5*

stack_name *
	elem_type0
�
Qgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/EnterEnterQgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Wgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPushV2StackPushV2Qgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/Enter3eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3^gradients/Add*
swap_memory(*
T0
�
Vgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPopV2
StackPopV2\gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
\gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPopV2/EnterEnterQgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�&
Rgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/b_syncControlTrigger`^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2W^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out/StackPopV2P^gradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1D^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPopV2F^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPopV2D^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPopV2F^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2B^gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPopV2P^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1@^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPopV2P^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1@^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPopV2N^gradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2P^gradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1>^gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPopV2P^gradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2P^gradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1`^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2T^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPopV2b^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2V^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2Z^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2Q^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPopV2b^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2V^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2Z^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2Q^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPopV2X^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2O^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPopV2P^gradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1>^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPopV2@^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2P^gradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1>^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2@^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPopV2P^gradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2R^gradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1>^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2@^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPopV2
�
Pgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barrierIdentityAgradients/eval/lstm/while/Merge_1_grad/tuple/control_dependency_1L^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/flow_out*
T0*&
 _has_manual_control_dependencies(
�
dgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3jgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterPgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barrier*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5*
source	gradients*&
 _has_manual_control_dependencies(
�
jgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntereval/lstm/TensorArray_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5
�
`gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityPgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barriere^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*2
_class(
&$loc:@eval/lstm/while/lstm_cell/mul_5*
T0
�
Tgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3dgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3_gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2`gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*&
 _has_manual_control_dependencies(
�
Zgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
dtype0*
valueB :
���������*+
_class!
loc:@eval/lstm/while/Identity
�
Zgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Zgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*+
_class!
loc:@eval/lstm/while/Identity*

stack_name *
	elem_type0
�
Zgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterZgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
`gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Zgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Entereval/lstm/while/Identity^gradients/Add*
swap_memory(*
T0
�
_gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2egradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterZgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Sgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpU^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3Q^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barrier*&
 _has_manual_control_dependencies(
�
[gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityTgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3T^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*g
_class]
[Yloc:@gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0
�
]gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityPgradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barrierT^gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*c
_classY
WUloc:@gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/write_barrier*
T0
�
gradients/AddNAddNAgradients/eval/lstm/while/Merge_2_grad/tuple/control_dependency_1[gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*C
_class9
75loc:@gradients/eval/lstm/while/Switch_2_grad/b_switch*
T0*
N
�
4gradients/eval/lstm/while/lstm_cell/mul_5_grad/ShapeShape)eval/lstm/while/lstm_cell/clip_by_value_2*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape_1Shape eval/lstm/while/lstm_cell/Tanh_1*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape
�
Jgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/mul_5_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_5_grad/MulMulgradients/AddN=gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2*
T0
�
8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/ConstConst*3
_class)
'%loc:@eval/lstm/while/lstm_cell/Tanh_1*
valueB :
���������*
dtype0
�
8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/f_accStackV28gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/Const*3
_class)
'%loc:@eval/lstm/while/lstm_cell/Tanh_1*

stack_name *
	elem_type0
�
8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
>gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPushV2StackPushV28gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/Enter eval/lstm/while/lstm_cell/Tanh_1^gradients/Add*
T0*
swap_memory(
�
=gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2
StackPopV2Cgradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Cgradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_5_grad/SumSum2gradients/eval/lstm/while/lstm_cell/mul_5_grad/MulDgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/mul_5_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/mul_5_grad/SumOgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1Mul?gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPopV2gradients/AddN*
T0
�
:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/ConstConst*
dtype0*
valueB :
���������*<
_class2
0.loc:@eval/lstm/while/lstm_cell/clip_by_value_2
�
:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/f_accStackV2:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/Const*<
_class2
0.loc:@eval/lstm/while/lstm_cell/clip_by_value_2*

stack_name *
	elem_type0
�
:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPushV2StackPushV2:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/Enter)eval/lstm/while/lstm_cell/clip_by_value_2^gradients/Add*
T0*
swap_memory(
�
?gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPopV2
StackPopV2Egradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Egradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/StackPopV2/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
4gradients/eval/lstm/while/lstm_cell/mul_5_grad/Sum_1Sum4gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul_1Fgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/mul_5_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/mul_5_grad/Reshape_1*
T0*&
 _has_manual_control_dependencies(
�
>gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/ShapeShape1eval/lstm/while/lstm_cell/clip_by_value_2/Minimum*
out_type0*
T0:��
y
@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Cgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/zeros_like	ZerosLikeGgradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependency*
T0
�
Egradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqualGreaterEqualPgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPopV2Mgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/Const_1*
T0
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/ConstConst*D
_class:
86loc:@eval/lstm/while/lstm_cell/clip_by_value_2/Minimum*
valueB :
���������*
dtype0
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/f_accStackV2Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/Const*D
_class:
86loc:@eval/lstm/while/lstm_cell/clip_by_value_2/Minimum*

stack_name *
	elem_type0
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/EnterEnterKgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPushV2StackPushV2Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/Enter1eval/lstm/while/lstm_cell/clip_by_value_2/Minimum^gradients/Add*
swap_memory(*
T0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPopV2
StackPopV2Vgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/StackPopV2/EnterEnterKgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Mgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *    
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgsYgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape_1*
T0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/ConstConst*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape*
valueB :
���������*
dtype0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/f_accStackV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape*

stack_name *
	elem_type0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/EnterEnterTgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Zgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/Enter>gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
_gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Agradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SelectV2SelectV2Egradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqualGgradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependencyCgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/zeros_like*
T0
�
<gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SumSumAgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SelectV2Ngradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/ReshapeReshape<gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SumYgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Cgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SelectV2_1SelectV2Egradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/GreaterEqualCgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/zeros_likeGgradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependency*
T0
�
>gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Sum_1SumCgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/SelectV2_1Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
Bgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Reshape_1Reshape>gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Sum_1@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/group_depsNoOpA^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/ReshapeC^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/control_dependencyIdentity@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/ReshapeJ^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/group_deps*S
_classI
GEloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Reshape*
T0
�
Sgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/control_dependency_1IdentityBgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Reshape_1J^gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/group_deps*U
_classK
IGloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/Reshape_1*
T0
�
8gradients/eval/lstm/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad=gradients/eval/lstm/while/lstm_cell/mul_5_grad/Mul/StackPopV2Igradients/eval/lstm/while/lstm_cell/mul_5_grad/tuple/control_dependency_1*
T0
�
7gradients/eval/lstm/while/Switch_1_grad_1/NextIterationNextIteration]gradients/eval/lstm/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0
�
Fgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/ShapeShapeeval/lstm/while/lstm_cell/Add_7*
out_type0*
T0:��
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/zeros_like	ZerosLikeQgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/control_dependency*
T0
�
Jgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual	LessEqualUgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2Rgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/Const_1*
T0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/ConstConst*
dtype0*
valueB :
���������*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_7
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/f_accStackV2Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_7*

stack_name *
	elem_type0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/EnterEnterPgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPushV2StackPushV2Pgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/Entereval/lstm/while/lstm_cell/Add_7^gradients/Add*
T0*
swap_memory(
�
Ugradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2
StackPopV2[gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
[gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/StackPopV2/EnterEnterPgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *  �?
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2Hgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape_1*
T0
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*Y
_classO
MKloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_accStackV2\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/Const*Y
_classO
MKloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape*

stack_name *
	elem_type0
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/EnterEnter\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
bgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/EnterFgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape^gradients/Add*
swap_memory(*
T0
�
agradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
ggradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/SelectV2SelectV2Jgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqualQgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/control_dependencyKgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/zeros_like*
T0
�
Dgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/SumSumIgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/SelectV2Vgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/ReshapeReshapeDgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Sumagradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/SelectV2_1SelectV2Jgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/LessEqualKgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/zeros_likeQgradients/eval/lstm/while/lstm_cell/clip_by_value_2_grad/tuple/control_dependency*
T0
�
Fgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Sum_1SumKgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/SelectV2_1Xgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
Jgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Reshape_1ReshapeFgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Sum_1Hgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/group_depsNoOpI^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/ReshapeK^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentityHgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/ReshapeR^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/group_deps*[
_classQ
OMloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Reshape*
T0
�
[gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/control_dependency_1IdentityJgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Reshape_1R^gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/group_deps*]
_classS
QOloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/Reshape_1*
T0
�
gradients/AddN_1AddNAgradients/eval/lstm/while/Merge_3_grad/tuple/control_dependency_18gradients/eval/lstm/while/lstm_cell/Tanh_1_grad/TanhGrad*C
_class9
75loc:@gradients/eval/lstm/while/Switch_3_grad/b_switch*
T0*
N
�
4gradients/eval/lstm/while/lstm_cell/add_5_grad/ShapeShapeeval/lstm/while/lstm_cell/mul_2*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape_1Shapeeval/lstm/while/lstm_cell/mul_3*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/add_5_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/add_5_grad/SumSumgradients/AddN_1Dgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/add_5_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/add_5_grad/SumOgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/add_5_grad/Sum_1Sumgradients/AddN_1Fgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
8gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/add_5_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/add_5_grad/Reshape_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/Add_7_grad/ShapeShapeeval/lstm/while/lstm_cell/Mul_4*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape_1Shape!eval/lstm/while/lstm_cell/Const_5*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape
�
Jgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/Add_7_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Add_7_grad/SumSumYgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/Add_7_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/Add_7_grad/SumOgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Add_7_grad/Sum_1SumYgradients/eval/lstm/while/lstm_cell/clip_by_value_2/Minimum_grad/tuple/control_dependencyFgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
8gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/Add_7_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/Add_7_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/Add_7_grad/Reshape_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/mul_2_grad/ShapeShape)eval/lstm/while/lstm_cell/clip_by_value_1*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape_1Shapeeval/lstm/while/Identity_3*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape
�
Jgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_2_grad/MulMulGgradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependency=gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0
�
8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/ConstConst*-
_class#
!loc:@eval/lstm/while/Identity_3*
valueB :
���������*
dtype0
�
8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/f_accStackV28gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/Const*-
_class#
!loc:@eval/lstm/while/Identity_3*

stack_name *
	elem_type0
�
8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
>gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV28gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/Entereval/lstm/while/Identity_3^gradients/Add*
swap_memory(*
T0
�
=gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2Cgradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Cgradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_2_grad/SumSum2gradients/eval/lstm/while/lstm_cell/mul_2_grad/MulDgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/mul_2_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/mul_2_grad/SumOgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1Mul?gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2Ggradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependency*
T0
�
:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*<
_class2
0.loc:@eval/lstm/while/lstm_cell/clip_by_value_1*
valueB :
���������*
dtype0
�
:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/Const*<
_class2
0.loc:@eval/lstm/while/lstm_cell/clip_by_value_1*

stack_name *
	elem_type0
�
:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/Enter)eval/lstm/while/lstm_cell/clip_by_value_1^gradients/Add*
swap_memory(*
T0
�
?gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2Egradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Egradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
4gradients/eval/lstm/while/lstm_cell/mul_2_grad/Sum_1Sum4gradients/eval/lstm/while/lstm_cell/mul_2_grad/Mul_1Fgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/mul_2_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/mul_2_grad/Reshape_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/mul_3_grad/ShapeShape'eval/lstm/while/lstm_cell/clip_by_value*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape_1Shapeeval/lstm/while/lstm_cell/Tanh*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/mul_3_grad/Shape_1^gradients/Add*
T0*
swap_memory(
�
Qgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_3_grad/MulMulIgradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependency_1=gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2*
T0
�
8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/ConstConst*1
_class'
%#loc:@eval/lstm/while/lstm_cell/Tanh*
valueB :
���������*
dtype0
�
8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/f_accStackV28gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/Const*1
_class'
%#loc:@eval/lstm/while/lstm_cell/Tanh*

stack_name *
	elem_type0
�
8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
>gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPushV2StackPushV28gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/Entereval/lstm/while/lstm_cell/Tanh^gradients/Add*
swap_memory(*
T0
�
=gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2
StackPopV2Cgradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Cgradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2/EnterEnter8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/mul_3_grad/SumSum2gradients/eval/lstm/while/lstm_cell/mul_3_grad/MulDgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/mul_3_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/mul_3_grad/SumOgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1Mul?gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPopV2Igradients/eval/lstm/while/lstm_cell/add_5_grad/tuple/control_dependency_1*
T0
�
:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/ConstConst*
dtype0*
valueB :
���������*:
_class0
.,loc:@eval/lstm/while/lstm_cell/clip_by_value
�
:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/f_accStackV2:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/Const*:
_class0
.,loc:@eval/lstm/while/lstm_cell/clip_by_value*

stack_name *
	elem_type0
�
:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPushV2StackPushV2:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/Enter'eval/lstm/while/lstm_cell/clip_by_value^gradients/Add*
T0*
swap_memory(
�
?gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPopV2
StackPopV2Egradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Egradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/StackPopV2/EnterEnter:gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
4gradients/eval/lstm/while/lstm_cell/mul_3_grad/Sum_1Sum4gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul_1Fgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/mul_3_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/mul_3_grad/Reshape_1*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/ShapeShapeeval/lstm/while/lstm_cell/add_6*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape_1Shape!eval/lstm/while/lstm_cell/Const_4*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Shape_1^gradients/Add*
T0*
swap_memory(
�
Qgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Mul_4_grad/MulMulGgradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/control_dependency8gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul/Const*
T0
u
8gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul/ConstConst^gradients/Sub*
dtype0*
valueB
 *��L>
�
2gradients/eval/lstm/while/lstm_cell/Mul_4_grad/SumSum2gradients/eval/lstm/while/lstm_cell/Mul_4_grad/MulDgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/Mul_4_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/Mul_4_grad/SumOgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1Mul?gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPopV2Ggradients/eval/lstm/while/lstm_cell/Add_7_grad/tuple/control_dependency*
T0
�
:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/add_6*
valueB :
���������*
dtype0
�
:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/f_accStackV2:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/add_6*

stack_name *
	elem_type0
�
:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/EnterEnter:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPushV2StackPushV2:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/Entereval/lstm/while/lstm_cell/add_6^gradients/Add*
T0*
swap_memory(
�
?gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPopV2
StackPopV2Egradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Egradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/StackPopV2/EnterEnter:gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Sum_1Sum4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Mul_1Fgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/Mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/Mul_4_grad/Reshape_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/ShapeShape1eval/lstm/while/lstm_cell/clip_by_value_1/Minimum*
out_type0*
T0:��
y
@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Cgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/zeros_like	ZerosLikeGgradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependency*
T0
�
Egradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqualGreaterEqualPgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPopV2Mgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/Const_1*
T0
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/ConstConst*
dtype0*
valueB :
���������*D
_class:
86loc:@eval/lstm/while/lstm_cell/clip_by_value_1/Minimum
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/f_accStackV2Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/Const*D
_class:
86loc:@eval/lstm/while/lstm_cell/clip_by_value_1/Minimum*

stack_name *
	elem_type0
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/EnterEnterKgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPushV2StackPushV2Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/Enter1eval/lstm/while/lstm_cell/clip_by_value_1/Minimum^gradients/Add*
T0*
swap_memory(
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPopV2
StackPopV2Vgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/StackPopV2/EnterEnterKgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Mgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *    
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgsYgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape_1*
T0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/ConstConst*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape*
valueB :
���������*
dtype0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/f_accStackV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/Const*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape*

stack_name *
	elem_type0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/EnterEnterTgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Zgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/Enter>gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2_gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
_gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterTgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Agradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SelectV2SelectV2Egradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqualGgradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependencyCgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/zeros_like*
T0
�
<gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SumSumAgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SelectV2Ngradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/ReshapeReshape<gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SumYgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Cgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SelectV2_1SelectV2Egradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/GreaterEqualCgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/zeros_likeGgradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependency*
T0
�
>gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Sum_1SumCgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/SelectV2_1Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
Bgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Reshape_1Reshape>gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Sum_1@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/group_depsNoOpA^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/ReshapeC^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/control_dependencyIdentity@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/ReshapeJ^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/group_deps*S
_classI
GEloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Reshape*
T0
�
Sgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/control_dependency_1IdentityBgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Reshape_1J^gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/group_deps*U
_classK
IGloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/Reshape_1*
T0
�
<gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/ShapeShape/eval/lstm/while/lstm_cell/clip_by_value/Minimum*
out_type0*
T0:��
w
>gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Agradients/eval/lstm/while/lstm_cell/clip_by_value_grad/zeros_like	ZerosLikeGgradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependency*
T0
�
Cgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqualGreaterEqualNgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPopV2Kgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/Const_1*
T0
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/ConstConst*B
_class8
64loc:@eval/lstm/while/lstm_cell/clip_by_value/Minimum*
valueB :
���������*
dtype0
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/f_accStackV2Igradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/Const*B
_class8
64loc:@eval/lstm/while/lstm_cell/clip_by_value/Minimum*

stack_name *
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/EnterEnterIgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Ogradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPushV2StackPushV2Igradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/Enter/eval/lstm/while/lstm_cell/clip_by_value/Minimum^gradients/Add*
swap_memory(*
T0
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPopV2
StackPopV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/StackPopV2/EnterEnterIgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *    
�
Lgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsWgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2>gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape_1*
T0
�
Rgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/ConstConst*O
_classE
CAloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape*
valueB :
���������*
dtype0
�
Rgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/f_accStackV2Rgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/Const*O
_classE
CAloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape*

stack_name *
	elem_type0
�
Rgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/EnterEnterRgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Xgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPushV2StackPushV2Rgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/Enter<gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Wgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2
StackPopV2]gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
]gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/EnterEnterRgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
?gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SelectV2SelectV2Cgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqualGgradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependencyAgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/zeros_like*
T0
�
:gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SumSum?gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SelectV2Lgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
>gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/ReshapeReshape:gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SumWgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Agradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SelectV2_1SelectV2Cgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/GreaterEqualAgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/zeros_likeGgradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependency*
T0
�
<gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Sum_1SumAgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/SelectV2_1Ngradients/eval/lstm/while/lstm_cell/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Reshape_1Reshape<gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Sum_1>gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/group_depsNoOp?^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/ReshapeA^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ogradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/control_dependencyIdentity>gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/ReshapeH^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Reshape*
T0
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/control_dependency_1Identity@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Reshape_1H^gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/group_deps*S
_classI
GEloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_grad/Reshape_1*
T0
�
6gradients/eval/lstm/while/lstm_cell/Tanh_grad/TanhGradTanhGrad=gradients/eval/lstm/while/lstm_cell/mul_3_grad/Mul/StackPopV2Igradients/eval/lstm/while/lstm_cell/mul_3_grad/tuple/control_dependency_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/add_6_grad/ShapeShape#eval/lstm/while/lstm_cell/BiasAdd_3*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape_1Shape"eval/lstm/while/lstm_cell/MatMul_7*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/add_6_grad/Shape_1^gradients/Add*
T0*
swap_memory(
�
Qgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/add_6_grad/SumSumGgradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/add_6_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/add_6_grad/SumOgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/add_6_grad/Sum_1SumGgradients/eval/lstm/while/lstm_cell/Mul_4_grad/tuple/control_dependencyFgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/add_6_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/add_6_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape_1*
T0
�
Fgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/ShapeShapeeval/lstm/while/lstm_cell/Add_3*
out_type0*
T0:��
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/zeros_like	ZerosLikeQgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/control_dependency*
T0
�
Jgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual	LessEqualUgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2Rgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/Const_1*
T0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_3*
valueB :
���������*
dtype0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/f_accStackV2Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_3*

stack_name *
	elem_type0
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/EnterEnterPgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2StackPushV2Pgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/Entereval/lstm/while/lstm_cell/Add_3^gradients/Add*
swap_memory(*
T0
�
Ugradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2
StackPopV2[gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
[gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/EnterEnterPgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *  �?
�
Vgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2Hgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape_1*
T0
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*Y
_classO
MKloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_accStackV2\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Const*Y
_classO
MKloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape*

stack_name *
	elem_type0
�
\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterEnter\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
bgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterFgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape^gradients/Add*
T0*
swap_memory(
�
agradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
ggradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/SelectV2SelectV2Jgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqualQgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/control_dependencyKgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/zeros_like*
T0
�
Dgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/SumSumIgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/SelectV2Vgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/ReshapeReshapeDgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Sumagradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Kgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/SelectV2_1SelectV2Jgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/LessEqualKgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/zeros_likeQgradients/eval/lstm/while/lstm_cell/clip_by_value_1_grad/tuple/control_dependency*
T0
�
Fgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Sum_1SumKgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/SelectV2_1Xgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
Jgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Reshape_1ReshapeFgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Sum_1Hgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Qgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/group_depsNoOpI^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/ReshapeK^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentityHgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/ReshapeR^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/group_deps*[
_classQ
OMloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Reshape*
T0
�
[gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/control_dependency_1IdentityJgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Reshape_1R^gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/group_deps*]
_classS
QOloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/Reshape_1*
T0
�
7gradients/eval/lstm/while/Switch_3_grad_1/NextIterationNextIterationIgradients/eval/lstm/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0
�
Dgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/ShapeShapeeval/lstm/while/lstm_cell/Add_1*
out_type0*
T0:��

Fgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/zeros_like	ZerosLikeOgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/control_dependency*
T0
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual	LessEqualSgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPopV2Pgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/Const_1*
T0
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_1*
valueB :
���������*
dtype0
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/f_accStackV2Ngradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/Add_1*

stack_name *
	elem_type0
�
Ngradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/EnterEnterNgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPushV2StackPushV2Ngradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/Entereval/lstm/while/lstm_cell/Add_1^gradients/Add*
T0*
swap_memory(
�
Sgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPopV2
StackPopV2Ygradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/StackPopV2/EnterEnterNgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqual/Const_1Const^gradients/Sub*
dtype0*
valueB
 *  �?
�
Tgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2Fgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape_1*
T0
�
Zgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*W
_classM
KIloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape
�
Zgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_accStackV2Zgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/Const*W
_classM
KIloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape*

stack_name *
	elem_type0
�
Zgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterEnterZgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
`gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterDgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape^gradients/Add*
swap_memory(*
T0
�
_gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Ggradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/SelectV2SelectV2Hgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqualOgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/control_dependencyIgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/zeros_like*
T0
�
Bgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/SumSumGgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/SelectV2Tgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Fgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/ReshapeReshapeBgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Sum_gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/SelectV2_1SelectV2Hgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/LessEqualIgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/zeros_likeOgradients/eval/lstm/while/lstm_cell/clip_by_value_grad/tuple/control_dependency*
T0
�
Dgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Sum_1SumIgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/SelectV2_1Vgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
Hgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Reshape_1ReshapeDgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Sum_1Fgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Shape_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
Ogradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/group_depsNoOpG^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/ReshapeI^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Wgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityFgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/ReshapeP^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Reshape*
T0
�
Ygradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityHgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Reshape_1P^gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/group_deps*[
_classQ
OMloc:@gradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/Reshape_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/add_4_grad/ShapeShape#eval/lstm/while/lstm_cell/BiasAdd_2*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape_1Shape"eval/lstm/while/lstm_cell/MatMul_6*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/add_4_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/add_4_grad/SumSum6gradients/eval/lstm/while/lstm_cell/Tanh_grad/TanhGradDgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/add_4_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/add_4_grad/SumOgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/add_4_grad/Sum_1Sum6gradients/eval/lstm/while/lstm_cell/Tanh_grad/TanhGradFgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/add_4_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/BiasAddGradBiasAddGradGgradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(*
T0*
data_formatNHWC
�
Cgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/group_depsNoOp?^gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/BiasAddGradH^gradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(
�
Kgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/control_dependencyIdentityGgradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependencyD^gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_6_grad/Reshape*
T0
�
Mgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/control_dependency_1Identity>gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/BiasAddGradD^gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/BiasAddGrad*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMulMatMulIgradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependency_1Cgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/ConstConst*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_3*
valueB :
���������*
dtype0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/Const*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_3*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/Enter)eval/lstm/while/lstm_cell/strided_slice_3^gradients/Add*
swap_memory(*
T0
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2Igradients/eval/lstm/while/lstm_cell/add_6_grad/tuple/control_dependency_1*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/ConstConst*-
_class#
!loc:@eval/lstm/while/Identity_2*
valueB :
���������*
dtype0
�
@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/f_accStackV2@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/Const*-
_class#
!loc:@eval/lstm/while/Identity_2*

stack_name *
	elem_type0
�
@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/EnterEnter@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Fgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPushV2StackPushV2@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/Entereval/lstm/while/Identity_2^gradients/Add*
T0*
swap_memory(
�
Egradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2
StackPopV2Kgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Kgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2/EnterEnter@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/Add_3_grad/ShapeShapeeval/lstm/while/lstm_cell/Mul_1*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape_1Shape!eval/lstm/while/lstm_cell/Const_3*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/Add_3_grad/Shape_1^gradients/Add*
T0*
swap_memory(
�
Qgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Add_3_grad/SumSumYgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/Add_3_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/Add_3_grad/SumOgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Add_3_grad/Sum_1SumYgradients/eval/lstm/while/lstm_cell/clip_by_value_1/Minimum_grad/tuple/control_dependencyFgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/Add_3_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/Add_3_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/Add_3_grad/Reshape_1*
T0
�
4gradients/eval/lstm/while/lstm_cell/Add_1_grad/ShapeShapeeval/lstm/while/lstm_cell/Mul*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape_1Shape!eval/lstm/while/lstm_cell/Const_1*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape
�
Jgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/Add_1_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Add_1_grad/SumSumWgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/Add_1_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/Add_1_grad/SumOgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Add_1_grad/Sum_1SumWgradients/eval/lstm/while/lstm_cell/clip_by_value/Minimum_grad/tuple/control_dependencyFgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/Add_1_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/Add_1_grad/Reshape_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/BiasAddGradBiasAddGradGgradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(*
T0*
data_formatNHWC
�
Cgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/group_depsNoOp?^gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/BiasAddGradH^gradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(
�
Kgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/control_dependencyIdentityGgradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependencyD^gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_4_grad/Reshape*
T0
�
Mgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1Identity>gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/BiasAddGradD^gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/BiasAddGrad*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMulMatMulIgradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependency_1Cgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/ConstConst*
dtype0*
valueB :
���������*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_2
�
>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/Const*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_2*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/Enter)eval/lstm/while/lstm_cell/strided_slice_2^gradients/Add*
T0*
swap_memory(
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2Igradients/eval/lstm/while/lstm_cell/add_4_grad/tuple/control_dependency_1*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_6_grad/MatMul_1*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMulMatMulKgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/control_dependencyCgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*
valueB :
���������*
dtype0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/Enter!eval/lstm/while/lstm_cell/split:3^gradients/Add*
swap_memory(*
T0
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2Kgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/control_dependency*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/ConstConst*4
_class*
(&loc:@eval/lstm/while/TensorArrayReadV3*
valueB :
���������*
dtype0
�
@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/f_accStackV2@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/Const*4
_class*
(&loc:@eval/lstm/while/TensorArrayReadV3*

stack_name *
	elem_type0
�
@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/EnterEnter@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Fgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPushV2StackPushV2@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/Enter!eval/lstm/while/TensorArrayReadV3^gradients/Add*
T0*
swap_memory(
�
Egradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2
StackPopV2Kgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Kgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2/EnterEnter@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/ShapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/shapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/beginConst^gradients/Sub*
dtype0*
valueB"       
�
Mgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/endConst^gradients/Sub*
dtype0*
valueB"        
�
Qgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/stridesConst^gradients/Sub*
dtype0*
valueB"      
�
Igradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGradStridedSliceGradOgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/shapeOgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/beginMgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/endQgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad/stridesLgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/control_dependency_1*
ellipsis_mask *
end_mask*
T0*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/ShapeShapeeval/lstm/while/lstm_cell/add_2*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape_1Shape!eval/lstm/while/lstm_cell/Const_2*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape_1*
valueB :
���������*
dtype0
�
Lgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Mul_1_grad/MulMulGgradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/control_dependency8gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul/Const*
T0
u
8gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul/ConstConst^gradients/Sub*
dtype0*
valueB
 *��L>
�
2gradients/eval/lstm/while/lstm_cell/Mul_1_grad/SumSum2gradients/eval/lstm/while/lstm_cell/Mul_1_grad/MulDgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/Mul_1_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/Mul_1_grad/SumOgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1Mul?gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPopV2Ggradients/eval/lstm/while/lstm_cell/Add_3_grad/tuple/control_dependency*
T0
�
:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/add_2*
valueB :
���������*
dtype0
�
:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/f_accStackV2:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/add_2*

stack_name *
	elem_type0
�
:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/EnterEnter:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/Entereval/lstm/while/lstm_cell/add_2^gradients/Add*
T0*
swap_memory(
�
?gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2Egradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Egradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnter:gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Sum_1Sum4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Mul_1Fgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
8gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape*
T0
�
Igradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/Mul_1_grad/Reshape_1*
T0
�
2gradients/eval/lstm/while/lstm_cell/Mul_grad/ShapeShapeeval/lstm/while/lstm_cell/add*
out_type0*
T0:��
�
4gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape_1Shapeeval/lstm/while/lstm_cell/Const*
out_type0*
T0:��
�
Bgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsMgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Ogradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Hgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*E
_class;
97loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape*
valueB :
���������*
dtype0
�
Hgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2Hgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Const*E
_class;
97loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape*

stack_name *
	elem_type0
�
Hgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnterHgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Ngradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Hgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Enter2gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Mgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Sgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Sgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterHgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Jgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape_1*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2Jgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape_1*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1EnterJgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Jgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_14gradients/eval/lstm/while/lstm_cell/Mul_grad/Shape_1^gradients/Add*
T0*
swap_memory(
�
Ogradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ugradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterJgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
0gradients/eval/lstm/while/lstm_cell/Mul_grad/MulMulGgradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/control_dependency6gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul/Const*
T0
s
6gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul/ConstConst^gradients/Sub*
dtype0*
valueB
 *��L>
�
0gradients/eval/lstm/while/lstm_cell/Mul_grad/SumSum0gradients/eval/lstm/while/lstm_cell/Mul_grad/MulBgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
4gradients/eval/lstm/while/lstm_cell/Mul_grad/ReshapeReshape0gradients/eval/lstm/while/lstm_cell/Mul_grad/SumMgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
2gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1Mul=gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPopV2Ggradients/eval/lstm/while/lstm_cell/Add_1_grad/tuple/control_dependency*
T0
�
8gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/ConstConst*0
_class&
$"loc:@eval/lstm/while/lstm_cell/add*
valueB :
���������*
dtype0
�
8gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/f_accStackV28gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/Const*0
_class&
$"loc:@eval/lstm/while/lstm_cell/add*

stack_name *
	elem_type0
�
8gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/EnterEnter8gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
>gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPushV2StackPushV28gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/Entereval/lstm/while/lstm_cell/add^gradients/Add*
swap_memory(*
T0
�
=gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPopV2
StackPopV2Cgradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Cgradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/StackPopV2/EnterEnter8gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/Mul_grad/Sum_1Sum2gradients/eval/lstm/while/lstm_cell/Mul_grad/Mul_1Dgradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape_1Reshape2gradients/eval/lstm/while/lstm_cell/Mul_grad/Sum_1Ogradients/eval/lstm/while/lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
=gradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/group_depsNoOp5^gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape7^gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Egradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/control_dependencyIdentity4gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape>^gradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/group_deps*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape*
T0
�
Ggradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/control_dependency_1Identity6gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape_1>^gradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/Mul_grad/Reshape_1*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMulMatMulKgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/control_dependencyCgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*
valueB :
���������*
dtype0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/Enter!eval/lstm/while/lstm_cell/split:2^gradients/Add*
T0*
swap_memory(
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2Kgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/control_dependency*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_2_grad/MatMul_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/ShapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/shapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/beginConst^gradients/Sub*
dtype0*
valueB"       
�
Mgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/endConst^gradients/Sub*
dtype0*
valueB"       
�
Qgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/stridesConst^gradients/Sub*
dtype0*
valueB"      
�
Igradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGradStridedSliceGradOgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/shapeOgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/beginMgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/endQgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGrad/stridesLgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/control_dependency_1*
ellipsis_mask *
end_mask*
T0*

begin_mask*
new_axis_mask *
Index0*
shrink_axis_mask 
�
4gradients/eval/lstm/while/lstm_cell/add_2_grad/ShapeShape#eval/lstm/while/lstm_cell/BiasAdd_1*
out_type0*
T0:��
�
6gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape_1Shape"eval/lstm/while/lstm_cell/MatMul_5*
out_type0*
T0:��
�
Dgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsOgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2Qgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Jgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
���������*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape
�
Jgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_accStackV2Jgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Jgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Enter4gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ugradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Lgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
���������*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape_1
�
Lgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc_1StackV2Lgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Const_1*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape_1*

stack_name *
	elem_type0
�
Lgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Enter_1EnterLgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Rgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Lgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/Enter_16gradients/eval/lstm/while/lstm_cell/add_2_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Qgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Wgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Wgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterLgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
2gradients/eval/lstm/while/lstm_cell/add_2_grad/SumSumGgradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
6gradients/eval/lstm/while/lstm_cell/add_2_grad/ReshapeReshape2gradients/eval/lstm/while/lstm_cell/add_2_grad/SumOgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
4gradients/eval/lstm/while/lstm_cell/add_2_grad/Sum_1SumGgradients/eval/lstm/while/lstm_cell/Mul_1_grad/tuple/control_dependencyFgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
8gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape_1Reshape4gradients/eval/lstm/while/lstm_cell/add_2_grad/Sum_1Qgradients/eval/lstm/while/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
?gradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape9^gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape@^gradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape*
T0*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape_1@^gradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape_1*
T0
�
2gradients/eval/lstm/while/lstm_cell/add_grad/ShapeShape!eval/lstm/while/lstm_cell/BiasAdd*
out_type0*
T0:��
�
4gradients/eval/lstm/while/lstm_cell/add_grad/Shape_1Shape"eval/lstm/while/lstm_cell/MatMul_4*
out_type0*
T0:��
�
Bgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsMgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Ogradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Hgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*E
_class;
97loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Shape*
valueB :
���������*
dtype0
�
Hgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2Hgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Const*E
_class;
97loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Shape*

stack_name *
	elem_type0
�
Hgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterHgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Ngradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Hgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Enter2gradients/eval/lstm/while/lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory(
�
Mgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Sgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Sgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterHgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
Jgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Const_1Const*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Shape_1*
valueB :
���������*
dtype0
�
Jgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2Jgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Const_1*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Shape_1*

stack_name *
	elem_type0
�
Jgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Enter_1EnterJgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Pgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Jgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/Enter_14gradients/eval/lstm/while/lstm_cell/add_grad/Shape_1^gradients/Add*
swap_memory(*
T0
�
Ogradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ugradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Ugradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterJgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
0gradients/eval/lstm/while/lstm_cell/add_grad/SumSumEgradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/control_dependencyBgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
4gradients/eval/lstm/while/lstm_cell/add_grad/ReshapeReshape0gradients/eval/lstm/while/lstm_cell/add_grad/SumMgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
2gradients/eval/lstm/while/lstm_cell/add_grad/Sum_1SumEgradients/eval/lstm/while/lstm_cell/Mul_grad/tuple/control_dependencyDgradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
6gradients/eval/lstm/while/lstm_cell/add_grad/Reshape_1Reshape2gradients/eval/lstm/while/lstm_cell/add_grad/Sum_1Ogradients/eval/lstm/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*&
 _has_manual_control_dependencies(
�
=gradients/eval/lstm/while/lstm_cell/add_grad/tuple/group_depsNoOp5^gradients/eval/lstm/while/lstm_cell/add_grad/Reshape7^gradients/eval/lstm/while/lstm_cell/add_grad/Reshape_1*&
 _has_manual_control_dependencies(
�
Egradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependencyIdentity4gradients/eval/lstm/while/lstm_cell/add_grad/Reshape>^gradients/eval/lstm/while/lstm_cell/add_grad/tuple/group_deps*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Reshape*
T0*&
 _has_manual_control_dependencies(
�
Ggradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependency_1Identity6gradients/eval/lstm/while/lstm_cell/add_grad/Reshape_1>^gradients/eval/lstm/while/lstm_cell/add_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Reshape_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradGgradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(*
T0*
data_formatNHWC
�
Cgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/group_depsNoOp?^gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/BiasAddGradH^gradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(
�
Kgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/control_dependencyIdentityGgradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependencyD^gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/add_2_grad/Reshape*
T0
�
Mgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1Identity>gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/BiasAddGradD^gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/BiasAddGrad*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMulMatMulIgradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependency_1Cgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/ConstConst*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_1*
valueB :
���������*
dtype0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/Const*<
_class2
0.loc:@eval/lstm/while/lstm_cell/strided_slice_1*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/Enter)eval/lstm/while/lstm_cell/strided_slice_1^gradients/Add*
swap_memory(*
T0
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2Igradients/eval/lstm/while/lstm_cell/add_2_grad/tuple/control_dependency_1*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_5_grad/MatMul_1*
T0
�
<gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradEgradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(*
T0*
data_formatNHWC
�
Agradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp=^gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/BiasAddGradF^gradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependency*&
 _has_manual_control_dependencies(
�
Igradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityEgradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependencyB^gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/group_deps*G
_class=
;9loc:@gradients/eval/lstm/while/lstm_cell/add_grad/Reshape*
T0
�
Kgradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity<gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/BiasAddGradB^gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/group_deps*O
_classE
CAloc:@gradients/eval/lstm/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMulMatMulGgradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependency_1Cgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/ConstConst*:
_class0
.,loc:@eval/lstm/while/lstm_cell/strided_slice*
valueB :
���������*
dtype0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/Const*:
_class0
.,loc:@eval/lstm/while/lstm_cell/strided_slice*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/Enter'eval/lstm/while/lstm_cell/strided_slice^gradients/Add*
T0*
swap_memory(
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul_1/StackPopV2Ggradients/eval/lstm/while/lstm_cell/add_grad/tuple/control_dependency_1*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_4_grad/MatMul_1*
T0
�
8gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMulMatMulKgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/control_dependencyCgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/ConstConst*
dtype0*
valueB :
���������*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split
�
>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/f_accStackV2>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*

stack_name *
	elem_type0
�
>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Dgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPushV2StackPushV2>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/Enter!eval/lstm/while/lstm_cell/split:1^gradients/Add*
swap_memory(*
T0
�
Cgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPopV2
StackPopV2Igradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Igradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/StackPopV2/EnterEnter>gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
:gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2Kgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/control_dependency*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/group_depsNoOp9^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul;^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/control_dependencyIdentity8gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMulC^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul*
T0
�
Lgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/control_dependency_1Identity:gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul_1C^gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/group_deps*M
_classC
A?loc:@gradients/eval/lstm/while/lstm_cell/MatMul_1_grad/MatMul_1*
T0
�
>gradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/ShapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/shapeConst^gradients/Sub*
dtype0*
valueB"      
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/beginConst^gradients/Sub*
dtype0*
valueB"       
�
Mgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/endConst^gradients/Sub*
dtype0*
valueB"       
�
Qgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/stridesConst^gradients/Sub*
dtype0*
valueB"      
�
Igradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGradStridedSliceGradOgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/shapeOgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/beginMgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/endQgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGrad/stridesLgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/control_dependency_1*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
6gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMulMatMulIgradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyAgradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPopV2*
transpose_b(*
T0*&
 _has_manual_control_dependencies(*
transpose_a( 
�
<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/ConstConst*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*
valueB :
���������*
dtype0
�
<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/f_accStackV2<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/Const*2
_class(
&$loc:@eval/lstm/while/lstm_cell/split*

stack_name *
	elem_type0
�
<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/EnterEnter<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/f_acc*
parallel_iterations *
T0*-

frame_nameeval/lstm/while/while_context*
is_constant(
�
Bgradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPushV2StackPushV2<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/Entereval/lstm/while/lstm_cell/split^gradients/Add*
swap_memory(*
T0
�
Agradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPopV2
StackPopV2Ggradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ggradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/StackPopV2/EnterEnter<gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul/f_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant(
�
8gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul_1MatMulEgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/MatMul_1/StackPopV2Igradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*&
 _has_manual_control_dependencies(*
transpose_a(
�
@gradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/group_depsNoOp7^gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul9^gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul_1*&
 _has_manual_control_dependencies(
�
Hgradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentity6gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMulA^gradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/group_deps*I
_class?
=;loc:@gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul*
T0
�
Jgradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/control_dependency_1Identity8gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul_1A^gradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/group_deps*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_grad/MatMul_1*
T0
�
7gradients/eval/lstm/while/lstm_cell/split_1_grad/concatConcatV2Kgradients/eval/lstm/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Mgradients/eval/lstm/while/lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1Mgradients/eval/lstm/while/lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1Mgradients/eval/lstm/while/lstm_cell/BiasAdd_3_grad/tuple/control_dependency_1=gradients/eval/lstm/while/lstm_cell/split_1_grad/concat/Const*
T0*

Tidx0*
N
w
=gradients/eval/lstm/while/lstm_cell/split_1_grad/concat/ConstConst^gradients/Sub*
dtype0*
value	B : 
�
gradients/AddN_2AddNJgradients/eval/lstm/while/lstm_cell/MatMul_7_grad/tuple/control_dependencyJgradients/eval/lstm/while/lstm_cell/MatMul_6_grad/tuple/control_dependencyJgradients/eval/lstm/while/lstm_cell/MatMul_5_grad/tuple/control_dependencyJgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/control_dependency*K
_classA
?=loc:@gradients/eval/lstm/while/lstm_cell/MatMul_7_grad/MatMul*
T0*
N
�
<gradients/eval/lstm/while/lstm_cell/strided_slice_grad/ShapeConst^gradients/Sub*
dtype0*
valueB"      
�
Mgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/shapeConst^gradients/Sub*
dtype0*
valueB"      
�
Mgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/beginConst^gradients/Sub*
dtype0*
valueB"        
�
Kgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/endConst^gradients/Sub*
dtype0*
valueB"       
�
Ogradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/stridesConst^gradients/Sub*
dtype0*
valueB"      
�
Ggradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGradStridedSliceGradMgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/shapeMgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/beginKgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/endOgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad/stridesLgradients/eval/lstm/while/lstm_cell/MatMul_4_grad/tuple/control_dependency_1*
ellipsis_mask *
T0*
end_mask*

begin_mask*
Index0*
new_axis_mask *
shrink_axis_mask 
�
5gradients/eval/lstm/while/lstm_cell/split_grad/concatConcatV2Jgradients/eval/lstm/while/lstm_cell/MatMul_grad/tuple/control_dependency_1Lgradients/eval/lstm/while/lstm_cell/MatMul_1_grad/tuple/control_dependency_1Lgradients/eval/lstm/while/lstm_cell/MatMul_2_grad/tuple/control_dependency_1Lgradients/eval/lstm/while/lstm_cell/MatMul_3_grad/tuple/control_dependency_1;gradients/eval/lstm/while/lstm_cell/split_grad/concat/Const*
T0*

Tidx0*
N
u
;gradients/eval/lstm/while/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
dtype0*
value	B :
c
7gradients/eval/lstm/while/Switch_2_grad_1/NextIterationNextIterationgradients/AddN_2*
T0
|
Kgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_accConst*
dtype0*
valueB*    
�
Mgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_1EnterKgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
Mgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_2MergeMgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_1Sgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/NextIteration*
T0*
N
�
Lgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/SwitchSwitchMgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Igradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/AddAddV2Ngradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/Switch:17gradients/eval/lstm/while/lstm_cell/split_1_grad/concat*
T0
�
Sgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/NextIterationNextIterationIgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/Add*
T0
�
Mgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_3ExitLgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/Switch*
T0
�
gradients/AddN_3AddNIgradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGradIgradients/eval/lstm/while/lstm_cell/strided_slice_2_grad/StridedSliceGradIgradients/eval/lstm/while/lstm_cell/strided_slice_1_grad/StridedSliceGradGgradients/eval/lstm/while/lstm_cell/strided_slice_grad/StridedSliceGrad*\
_classR
PNloc:@gradients/eval/lstm/while/lstm_cell/strided_slice_3_grad/StridedSliceGrad*
T0*
N
x
Cgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_accConst*
dtype0*
valueB*    
�
Egradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_1EnterCgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
Egradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_2MergeEgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_1Kgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/NextIteration*
T0*
N
�
Dgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/SwitchSwitchEgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Agradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/AddAddV2Fgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/Switch:1gradients/AddN_3*
T0
�
Kgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/NextIterationNextIterationAgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/Add*
T0
�
Egradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_3ExitDgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/Switch*
T0
~
Igradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_accConst*
dtype0*
valueB *    
�
Kgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_1EnterIgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc*
parallel_iterations *
T0*7

frame_name)'gradients/eval/lstm/while/while_context*
is_constant( 
�
Kgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_2MergeKgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_1Qgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/NextIteration*
T0*
N
�
Jgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/SwitchSwitchKgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Ggradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/AddAddV2Lgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/Switch:15gradients/eval/lstm/while/lstm_cell/split_grad/concat*
T0
�
Qgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/NextIterationNextIterationGgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/Add*
T0
�
Kgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_3ExitJgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/Switch*
T0
v
%beta1_power/Initializer/initial_valueConst*
dtype0*
valueB
 *fff?*"
_class
loc:@eval/dense/bias
�
beta1_powerVarHandleOp*
dtype0*
	container *
shape: *
shared_namebeta1_power*
allowed_devices
 *"
_class
loc:@eval/dense/bias
s
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*"
_class
loc:@eval/dense/bias
�
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
o
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
dtype0*"
_class
loc:@eval/dense/bias
v
%beta2_power/Initializer/initial_valueConst*"
_class
loc:@eval/dense/bias*
valueB
 *w�?*
dtype0
�
beta2_powerVarHandleOp*
dtype0*
	container *
shape: *
shared_namebeta2_power*
allowed_devices
 *"
_class
loc:@eval/dense/bias
s
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*"
_class
loc:@eval/dense/bias
�
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
o
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
dtype0*"
_class
loc:@eval/dense/bias
�
1eval/lstm/lstm_cell/kernel/Adam/Initializer/zerosConst*
dtype0*
valueB *    *-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
eval/lstm/lstm_cell/kernel/AdamVarHandleOp*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
	container *
shape
: *0
shared_name!eval/lstm/lstm_cell/kernel/Adam*
allowed_devices
 *
dtype0
�
@eval/lstm/lstm_cell/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/lstm/lstm_cell/kernel/Adam*-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
&eval/lstm/lstm_cell/kernel/Adam/AssignAssignVariableOpeval/lstm/lstm_cell/kernel/Adam1eval/lstm/lstm_cell/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
3eval/lstm/lstm_cell/kernel/Adam/Read/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/kernel/Adam*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
dtype0
�
3eval/lstm/lstm_cell/kernel/Adam_1/Initializer/zerosConst*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
valueB *    *
dtype0
�
!eval/lstm/lstm_cell/kernel/Adam_1VarHandleOp*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
	container *
shape
: *2
shared_name#!eval/lstm/lstm_cell/kernel/Adam_1*
allowed_devices
 *
dtype0
�
Beval/lstm/lstm_cell/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp!eval/lstm/lstm_cell/kernel/Adam_1*-
_class#
!loc:@eval/lstm/lstm_cell/kernel
�
(eval/lstm/lstm_cell/kernel/Adam_1/AssignAssignVariableOp!eval/lstm/lstm_cell/kernel/Adam_13eval/lstm/lstm_cell/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
5eval/lstm/lstm_cell/kernel/Adam_1/Read/ReadVariableOpReadVariableOp!eval/lstm/lstm_cell/kernel/Adam_1*-
_class#
!loc:@eval/lstm/lstm_cell/kernel*
dtype0
�
;eval/lstm/lstm_cell/recurrent_kernel/Adam/Initializer/zerosConst*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
valueB*    *
dtype0
�
)eval/lstm/lstm_cell/recurrent_kernel/AdamVarHandleOp*
dtype0*
	container *
shape
:*:
shared_name+)eval/lstm/lstm_cell/recurrent_kernel/Adam*
allowed_devices
 *7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
Jeval/lstm/lstm_cell/recurrent_kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp)eval/lstm/lstm_cell/recurrent_kernel/Adam*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
0eval/lstm/lstm_cell/recurrent_kernel/Adam/AssignAssignVariableOp)eval/lstm/lstm_cell/recurrent_kernel/Adam;eval/lstm/lstm_cell/recurrent_kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
=eval/lstm/lstm_cell/recurrent_kernel/Adam/Read/ReadVariableOpReadVariableOp)eval/lstm/lstm_cell/recurrent_kernel/Adam*
dtype0*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
=eval/lstm/lstm_cell/recurrent_kernel/Adam_1/Initializer/zerosConst*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
valueB*    *
dtype0
�
+eval/lstm/lstm_cell/recurrent_kernel/Adam_1VarHandleOp*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*
	container *
shape
:*<
shared_name-+eval/lstm/lstm_cell/recurrent_kernel/Adam_1*
allowed_devices
 *
dtype0
�
Leval/lstm/lstm_cell/recurrent_kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp+eval/lstm/lstm_cell/recurrent_kernel/Adam_1*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
2eval/lstm/lstm_cell/recurrent_kernel/Adam_1/AssignAssignVariableOp+eval/lstm/lstm_cell/recurrent_kernel/Adam_1=eval/lstm/lstm_cell/recurrent_kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
?eval/lstm/lstm_cell/recurrent_kernel/Adam_1/Read/ReadVariableOpReadVariableOp+eval/lstm/lstm_cell/recurrent_kernel/Adam_1*
dtype0*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel
�
/eval/lstm/lstm_cell/bias/Adam/Initializer/zerosConst*+
_class!
loc:@eval/lstm/lstm_cell/bias*
valueB*    *
dtype0
�
eval/lstm/lstm_cell/bias/AdamVarHandleOp*
dtype0*
	container *
shape:*.
shared_nameeval/lstm/lstm_cell/bias/Adam*
allowed_devices
 *+
_class!
loc:@eval/lstm/lstm_cell/bias
�
>eval/lstm/lstm_cell/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/lstm/lstm_cell/bias/Adam*+
_class!
loc:@eval/lstm/lstm_cell/bias
�
$eval/lstm/lstm_cell/bias/Adam/AssignAssignVariableOpeval/lstm/lstm_cell/bias/Adam/eval/lstm/lstm_cell/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
1eval/lstm/lstm_cell/bias/Adam/Read/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/bias/Adam*+
_class!
loc:@eval/lstm/lstm_cell/bias*
dtype0
�
1eval/lstm/lstm_cell/bias/Adam_1/Initializer/zerosConst*+
_class!
loc:@eval/lstm/lstm_cell/bias*
valueB*    *
dtype0
�
eval/lstm/lstm_cell/bias/Adam_1VarHandleOp*
dtype0*
	container *
shape:*0
shared_name!eval/lstm/lstm_cell/bias/Adam_1*
allowed_devices
 *+
_class!
loc:@eval/lstm/lstm_cell/bias
�
@eval/lstm/lstm_cell/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/lstm/lstm_cell/bias/Adam_1*+
_class!
loc:@eval/lstm/lstm_cell/bias
�
&eval/lstm/lstm_cell/bias/Adam_1/AssignAssignVariableOpeval/lstm/lstm_cell/bias/Adam_11eval/lstm/lstm_cell/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
3eval/lstm/lstm_cell/bias/Adam_1/Read/ReadVariableOpReadVariableOpeval/lstm/lstm_cell/bias/Adam_1*+
_class!
loc:@eval/lstm/lstm_cell/bias*
dtype0
�
8eval/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@eval/dense/kernel*
valueB"   �   *
dtype0
�
.eval/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *$
_class
loc:@eval/dense/kernel
�
(eval/dense/kernel/Adam/Initializer/zerosFill8eval/dense/kernel/Adam/Initializer/zeros/shape_as_tensor.eval/dense/kernel/Adam/Initializer/zeros/Const*$
_class
loc:@eval/dense/kernel*

index_type0*
T0
�
eval/dense/kernel/AdamVarHandleOp*$
_class
loc:@eval/dense/kernel*
	container *
shape:	�*'
shared_nameeval/dense/kernel/Adam*
allowed_devices
 *
dtype0
�
7eval/dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/kernel/Adam*$
_class
loc:@eval/dense/kernel
�
eval/dense/kernel/Adam/AssignAssignVariableOpeval/dense/kernel/Adam(eval/dense/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
*eval/dense/kernel/Adam/Read/ReadVariableOpReadVariableOpeval/dense/kernel/Adam*$
_class
loc:@eval/dense/kernel*
dtype0
�
:eval/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"   �   *$
_class
loc:@eval/dense/kernel
�
0eval/dense/kernel/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@eval/dense/kernel*
valueB
 *    *
dtype0
�
*eval/dense/kernel/Adam_1/Initializer/zerosFill:eval/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor0eval/dense/kernel/Adam_1/Initializer/zeros/Const*$
_class
loc:@eval/dense/kernel*

index_type0*
T0
�
eval/dense/kernel/Adam_1VarHandleOp*
dtype0*
	container *
shape:	�*)
shared_nameeval/dense/kernel/Adam_1*
allowed_devices
 *$
_class
loc:@eval/dense/kernel
�
9eval/dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/kernel/Adam_1*$
_class
loc:@eval/dense/kernel
�
eval/dense/kernel/Adam_1/AssignAssignVariableOpeval/dense/kernel/Adam_1*eval/dense/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
,eval/dense/kernel/Adam_1/Read/ReadVariableOpReadVariableOpeval/dense/kernel/Adam_1*
dtype0*$
_class
loc:@eval/dense/kernel
|
&eval/dense/bias/Adam/Initializer/zerosConst*"
_class
loc:@eval/dense/bias*
valueB�*    *
dtype0
�
eval/dense/bias/AdamVarHandleOp*"
_class
loc:@eval/dense/bias*
	container *
shape:�*%
shared_nameeval/dense/bias/Adam*
allowed_devices
 *
dtype0
�
5eval/dense/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/bias/Adam*"
_class
loc:@eval/dense/bias
�
eval/dense/bias/Adam/AssignAssignVariableOpeval/dense/bias/Adam&eval/dense/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
(eval/dense/bias/Adam/Read/ReadVariableOpReadVariableOpeval/dense/bias/Adam*
dtype0*"
_class
loc:@eval/dense/bias
~
(eval/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB�*    *"
_class
loc:@eval/dense/bias
�
eval/dense/bias/Adam_1VarHandleOp*
dtype0*
	container *
shape:�*'
shared_nameeval/dense/bias/Adam_1*
allowed_devices
 *"
_class
loc:@eval/dense/bias
�
7eval/dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpeval/dense/bias/Adam_1*"
_class
loc:@eval/dense/bias
�
eval/dense/bias/Adam_1/AssignAssignVariableOpeval/dense/bias/Adam_1(eval/dense/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
*eval/dense/bias/Adam_1/Read/ReadVariableOpReadVariableOpeval/dense/bias/Adam_1*"
_class
loc:@eval/dense/bias*
dtype0
@
train/learning_rateConst*
dtype0*
valueB
 *o�:
8
train/beta1Const*
dtype0*
valueB
 *fff?
8
train/beta2Const*
dtype0*
valueB
 *w�?
:
train/epsilonConst*
dtype0*
valueB
 *w�+2
t
Htrain/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
v
Jtrain/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
�
9train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamResourceApplyAdameval/lstm/lstm_cell/kerneleval/lstm/lstm_cell/kernel/Adam!eval/lstm/lstm_cell/kernel/Adam_1Htrain/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpJtrain/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1train/learning_ratetrain/beta1train/beta2train/epsilonKgradients/eval/lstm/while/lstm_cell/split/ReadVariableOp/Enter_grad/b_acc_3*
use_nesterov( *&
 _has_manual_control_dependencies(*
T0*
use_locking( *-
_class#
!loc:@eval/lstm/lstm_cell/kernel
~
Rtrain/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
�
Ttrain/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
�
Ctrain/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdamResourceApplyAdam$eval/lstm/lstm_cell/recurrent_kernel)eval/lstm/lstm_cell/recurrent_kernel/Adam+eval/lstm/lstm_cell/recurrent_kernel/Adam_1Rtrain/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam/ReadVariableOpTtrain/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_1train/learning_ratetrain/beta1train/beta2train/epsilonEgradients/eval/lstm/while/lstm_cell/ReadVariableOp/Enter_grad/b_acc_3*7
_class-
+)loc:@eval/lstm/lstm_cell/recurrent_kernel*&
 _has_manual_control_dependencies(*
T0*
use_locking( *
use_nesterov( 
r
Ftrain/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
t
Htrain/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
�
7train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdamResourceApplyAdameval/lstm/lstm_cell/biaseval/lstm/lstm_cell/bias/Adameval/lstm/lstm_cell/bias/Adam_1Ftrain/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpHtrain/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1train/learning_ratetrain/beta1train/beta2train/epsilonMgradients/eval/lstm/while/lstm_cell/split_1/ReadVariableOp/Enter_grad/b_acc_3*
use_nesterov( *
use_locking( *
T0*&
 _has_manual_control_dependencies(*+
_class!
loc:@eval/lstm/lstm_cell/bias
k
?train/update_eval/dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
m
Atrain/update_eval/dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
�
0train/update_eval/dense/kernel/ResourceApplyAdamResourceApplyAdameval/dense/kerneleval/dense/kernel/Adameval/dense/kernel/Adam_1?train/update_eval/dense/kernel/ResourceApplyAdam/ReadVariableOpAtrain/update_eval/dense/kernel/ResourceApplyAdam/ReadVariableOp_1train/learning_ratetrain/beta1train/beta2train/epsilon;gradients/eval/dense/MatMul_grad/tuple/control_dependency_1*$
_class
loc:@eval/dense/kernel*&
 _has_manual_control_dependencies(*
T0*
use_locking( *
use_nesterov( 
i
=train/update_eval/dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
k
?train/update_eval/dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
�
.train/update_eval/dense/bias/ResourceApplyAdamResourceApplyAdameval/dense/biaseval/dense/bias/Adameval/dense/bias/Adam_1=train/update_eval/dense/bias/ResourceApplyAdam/ReadVariableOp?train/update_eval/dense/bias/ResourceApplyAdam/ReadVariableOp_1train/learning_ratetrain/beta1train/beta2train/epsilon<gradients/eval/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*&
 _has_manual_control_dependencies(*"
_class
loc:@eval/dense/bias
�
train/ReadVariableOpReadVariableOpbeta1_power/^train/update_eval/dense/bias/ResourceApplyAdam1^train/update_eval/dense/kernel/ResourceApplyAdam8^train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam:^train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamD^train/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam*
dtype0
`
	train/mulMultrain/ReadVariableOptrain/beta1*"
_class
loc:@eval/dense/bias*
T0
�
train/AssignVariableOpAssignVariableOpbeta1_power	train/mul*"
_class
loc:@eval/dense/bias*
validate_shape(*&
 _has_manual_control_dependencies(*
dtype0
�
train/ReadVariableOp_1ReadVariableOpbeta1_power^train/AssignVariableOp/^train/update_eval/dense/bias/ResourceApplyAdam1^train/update_eval/dense/kernel/ResourceApplyAdam8^train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam:^train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamD^train/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam*"
_class
loc:@eval/dense/bias*
dtype0
�
train/ReadVariableOp_2ReadVariableOpbeta2_power/^train/update_eval/dense/bias/ResourceApplyAdam1^train/update_eval/dense/kernel/ResourceApplyAdam8^train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam:^train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamD^train/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam*
dtype0
d
train/mul_1Multrain/ReadVariableOp_2train/beta2*"
_class
loc:@eval/dense/bias*
T0
�
train/AssignVariableOp_1AssignVariableOpbeta2_powertrain/mul_1*
dtype0*
validate_shape(*&
 _has_manual_control_dependencies(*"
_class
loc:@eval/dense/bias
�
train/ReadVariableOp_3ReadVariableOpbeta2_power^train/AssignVariableOp_1/^train/update_eval/dense/bias/ResourceApplyAdam1^train/update_eval/dense/kernel/ResourceApplyAdam8^train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam:^train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamD^train/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam*"
_class
loc:@eval/dense/bias*
dtype0
�
trainNoOp^train/AssignVariableOp^train/AssignVariableOp_1/^train/update_eval/dense/bias/ResourceApplyAdam1^train/update_eval/dense/kernel/ResourceApplyAdam8^train/update_eval/lstm/lstm_cell/bias/ResourceApplyAdam:^train/update_eval/lstm/lstm_cell/kernel/ResourceApplyAdamD^train/update_eval/lstm/lstm_cell/recurrent_kernel/ResourceApplyAdam
�
initNoOp^beta1_power/Assign^beta2_power/Assign^eval/dense/bias/Adam/Assign^eval/dense/bias/Adam_1/Assign^eval/dense/bias/Assign^eval/dense/kernel/Adam/Assign ^eval/dense/kernel/Adam_1/Assign^eval/dense/kernel/Assign%^eval/lstm/lstm_cell/bias/Adam/Assign'^eval/lstm/lstm_cell/bias/Adam_1/Assign ^eval/lstm/lstm_cell/bias/Assign'^eval/lstm/lstm_cell/kernel/Adam/Assign)^eval/lstm/lstm_cell/kernel/Adam_1/Assign"^eval/lstm/lstm_cell/kernel/Assign1^eval/lstm/lstm_cell/recurrent_kernel/Adam/Assign3^eval/lstm/lstm_cell/recurrent_kernel/Adam_1/Assign,^eval/lstm/lstm_cell/recurrent_kernel/Assign
A
save/filename/inputConst*
dtype0*
valueB Bmodel
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bbeta1_powerBbeta2_powerBeval/dense/biasBeval/dense/bias/AdamBeval/dense/bias/Adam_1Beval/dense/kernelBeval/dense/kernel/AdamBeval/dense/kernel/Adam_1Beval/lstm/lstm_cell/biasBeval/lstm/lstm_cell/bias/AdamBeval/lstm/lstm_cell/bias/Adam_1Beval/lstm/lstm_cell/kernelBeval/lstm/lstm_cell/kernel/AdamB!eval/lstm/lstm_cell/kernel/Adam_1B$eval/lstm/lstm_cell/recurrent_kernelB)eval/lstm/lstm_cell/recurrent_kernel/AdamB+eval/lstm/lstm_cell/recurrent_kernel/Adam_1
i
save/SaveV2/shape_and_slicesConst*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp#eval/dense/bias/Read/ReadVariableOp(eval/dense/bias/Adam/Read/ReadVariableOp*eval/dense/bias/Adam_1/Read/ReadVariableOp%eval/dense/kernel/Read/ReadVariableOp*eval/dense/kernel/Adam/Read/ReadVariableOp,eval/dense/kernel/Adam_1/Read/ReadVariableOp,eval/lstm/lstm_cell/bias/Read/ReadVariableOp1eval/lstm/lstm_cell/bias/Adam/Read/ReadVariableOp3eval/lstm/lstm_cell/bias/Adam_1/Read/ReadVariableOp.eval/lstm/lstm_cell/kernel/Read/ReadVariableOp3eval/lstm/lstm_cell/kernel/Adam/Read/ReadVariableOp5eval/lstm/lstm_cell/kernel/Adam_1/Read/ReadVariableOp8eval/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp=eval/lstm/lstm_cell/recurrent_kernel/Adam/Read/ReadVariableOp?eval/lstm/lstm_cell/recurrent_kernel/Adam_1/Read/ReadVariableOp*
dtypes
2*&
 _has_manual_control_dependencies(
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*�
value�B�Bbeta1_powerBbeta2_powerBeval/dense/biasBeval/dense/bias/AdamBeval/dense/bias/Adam_1Beval/dense/kernelBeval/dense/kernel/AdamBeval/dense/kernel/Adam_1Beval/lstm/lstm_cell/biasBeval/lstm/lstm_cell/bias/AdamBeval/lstm/lstm_cell/bias/Adam_1Beval/lstm/lstm_cell/kernelBeval/lstm/lstm_cell/kernel/AdamB!eval/lstm/lstm_cell/kernel/Adam_1B$eval/lstm/lstm_cell/recurrent_kernelB)eval/lstm/lstm_cell/recurrent_kernel/AdamB+eval/lstm/lstm_cell/recurrent_kernel/Adam_1
{
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
2
save/IdentityIdentitysave/RestoreV2*
T0
�
save/AssignVariableOpAssignVariableOpbeta1_powersave/Identity*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_1Identitysave/RestoreV2:1*
T0
�
save/AssignVariableOp_1AssignVariableOpbeta2_powersave/Identity_1*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_2Identitysave/RestoreV2:2*
T0
�
save/AssignVariableOp_2AssignVariableOpeval/dense/biassave/Identity_2*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_3Identitysave/RestoreV2:3*
T0
�
save/AssignVariableOp_3AssignVariableOpeval/dense/bias/Adamsave/Identity_3*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_4Identitysave/RestoreV2:4*
T0
�
save/AssignVariableOp_4AssignVariableOpeval/dense/bias/Adam_1save/Identity_4*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_5Identitysave/RestoreV2:5*
T0
�
save/AssignVariableOp_5AssignVariableOpeval/dense/kernelsave/Identity_5*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_6Identitysave/RestoreV2:6*
T0
�
save/AssignVariableOp_6AssignVariableOpeval/dense/kernel/Adamsave/Identity_6*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_7Identitysave/RestoreV2:7*
T0
�
save/AssignVariableOp_7AssignVariableOpeval/dense/kernel/Adam_1save/Identity_7*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_8Identitysave/RestoreV2:8*
T0
�
save/AssignVariableOp_8AssignVariableOpeval/lstm/lstm_cell/biassave/Identity_8*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
6
save/Identity_9Identitysave/RestoreV2:9*
T0
�
save/AssignVariableOp_9AssignVariableOpeval/lstm/lstm_cell/bias/Adamsave/Identity_9*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_10Identitysave/RestoreV2:10*
T0
�
save/AssignVariableOp_10AssignVariableOpeval/lstm/lstm_cell/bias/Adam_1save/Identity_10*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_11Identitysave/RestoreV2:11*
T0
�
save/AssignVariableOp_11AssignVariableOpeval/lstm/lstm_cell/kernelsave/Identity_11*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_12Identitysave/RestoreV2:12*
T0
�
save/AssignVariableOp_12AssignVariableOpeval/lstm/lstm_cell/kernel/Adamsave/Identity_12*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_13Identitysave/RestoreV2:13*
T0
�
save/AssignVariableOp_13AssignVariableOp!eval/lstm/lstm_cell/kernel/Adam_1save/Identity_13*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_14Identitysave/RestoreV2:14*
T0
�
save/AssignVariableOp_14AssignVariableOp$eval/lstm/lstm_cell/recurrent_kernelsave/Identity_14*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_15Identitysave/RestoreV2:15*
T0
�
save/AssignVariableOp_15AssignVariableOp)eval/lstm/lstm_cell/recurrent_kernel/Adamsave/Identity_15*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
8
save/Identity_16Identitysave/RestoreV2:16*
T0
�
save/AssignVariableOp_16AssignVariableOp+eval/lstm/lstm_cell/recurrent_kernel/Adam_1save/Identity_16*
dtype0*
validate_shape( *&
 _has_manual_control_dependencies(
�
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"�
