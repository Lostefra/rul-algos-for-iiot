Þ
Ê
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8

Adam/dense_460/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_460/bias/v
{
)Adam/dense_460/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_460/bias/v*
_output_shapes
:*
dtype0

Adam/dense_460/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_460/kernel/v

+Adam/dense_460/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_460/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_459/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_459/bias/v
{
)Adam/dense_459/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_459/bias/v*
_output_shapes
: *
dtype0

Adam/dense_459/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_459/kernel/v

+Adam/dense_459/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_459/kernel/v*
_output_shapes

: *
dtype0

Adam/conv1d_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_195/bias/v
}
*Adam/conv1d_195/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_195/bias/v*
_output_shapes
:*
dtype0

Adam/conv1d_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv1d_195/kernel/v

,Adam/conv1d_195/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_195/kernel/v*"
_output_shapes
:*
dtype0

Adam/dense_460/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_460/bias/m
{
)Adam/dense_460/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_460/bias/m*
_output_shapes
:*
dtype0

Adam/dense_460/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_460/kernel/m

+Adam/dense_460/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_460/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_459/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_459/bias/m
{
)Adam/dense_459/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_459/bias/m*
_output_shapes
: *
dtype0

Adam/dense_459/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_459/kernel/m

+Adam/dense_459/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_459/kernel/m*
_output_shapes

: *
dtype0

Adam/conv1d_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_195/bias/m
}
*Adam/conv1d_195/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_195/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv1d_195/kernel/m

,Adam/conv1d_195/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_195/kernel/m*"
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
t
dense_460/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_460/bias
m
"dense_460/bias/Read/ReadVariableOpReadVariableOpdense_460/bias*
_output_shapes
:*
dtype0
|
dense_460/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_460/kernel
u
$dense_460/kernel/Read/ReadVariableOpReadVariableOpdense_460/kernel*
_output_shapes

: *
dtype0
t
dense_459/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_459/bias
m
"dense_459/bias/Read/ReadVariableOpReadVariableOpdense_459/bias*
_output_shapes
: *
dtype0
|
dense_459/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_459/kernel
u
$dense_459/kernel/Read/ReadVariableOpReadVariableOpdense_459/kernel*
_output_shapes

: *
dtype0
v
conv1d_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_195/bias
o
#conv1d_195/bias/Read/ReadVariableOpReadVariableOpconv1d_195/bias*
_output_shapes
:*
dtype0

conv1d_195/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_195/kernel
{
%conv1d_195/kernel/Read/ReadVariableOpReadVariableOpconv1d_195/kernel*"
_output_shapes
:*
dtype0

serving_default_input_196Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

¯
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_196conv1d_195/kernelconv1d_195/biasdense_459/kerneldense_459/biasdense_460/kerneldense_460/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 */
f*R(
&__inference_signature_wrapper_12652748

NoOpNoOp
©1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ä0
valueÚ0B×0 BÐ0
Û
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
È
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¦
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
¦
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
.
0
1
$2
%3
,4
-5*
.
0
1
$2
%3
,4
-5*
* 
°
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
3trace_0
4trace_1
5trace_2
6trace_3* 
6
7trace_0
8trace_1
9trace_2
:trace_3* 
* 
°
;iter

<beta_1

=beta_2
	>decay
?learning_ratembmc$md%me,mf-mgvhvi$vj%vk,vl-vm*

@serving_default* 

0
1*

0
1*
* 

Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ftrace_0* 

Gtrace_0* 
a[
VARIABLE_VALUEconv1d_195/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_195/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Mtrace_0* 

Ntrace_0* 

$0
%1*

$0
%1*
* 

Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 
`Z
VARIABLE_VALUEdense_459/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_459/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 

Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

[trace_0* 

\trace_0* 
`Z
VARIABLE_VALUEdense_460/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_460/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

]0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
^	variables
_	keras_api
	`total
	acount*

`0
a1*

^	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv1d_195/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_195/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_459/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_459/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_460/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_460/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv1d_195/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_195/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_459/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_459/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_460/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_460/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 


StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv1d_195/kernel/Read/ReadVariableOp#conv1d_195/bias/Read/ReadVariableOp$dense_459/kernel/Read/ReadVariableOp"dense_459/bias/Read/ReadVariableOp$dense_460/kernel/Read/ReadVariableOp"dense_460/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv1d_195/kernel/m/Read/ReadVariableOp*Adam/conv1d_195/bias/m/Read/ReadVariableOp+Adam/dense_459/kernel/m/Read/ReadVariableOp)Adam/dense_459/bias/m/Read/ReadVariableOp+Adam/dense_460/kernel/m/Read/ReadVariableOp)Adam/dense_460/bias/m/Read/ReadVariableOp,Adam/conv1d_195/kernel/v/Read/ReadVariableOp*Adam/conv1d_195/bias/v/Read/ReadVariableOp+Adam/dense_459/kernel/v/Read/ReadVariableOp)Adam/dense_459/bias/v/Read/ReadVariableOp+Adam/dense_460/kernel/v/Read/ReadVariableOp)Adam/dense_460/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 **
f%R#
!__inference__traced_save_12653020

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_195/kernelconv1d_195/biasdense_459/kerneldense_459/biasdense_460/kerneldense_460/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_195/kernel/mAdam/conv1d_195/bias/mAdam/dense_459/kernel/mAdam/dense_459/bias/mAdam/dense_460/kernel/mAdam/dense_460/bias/mAdam/conv1d_195/kernel/vAdam/conv1d_195/bias/vAdam/dense_459/kernel/vAdam/dense_459/bias/vAdam/dense_460/kernel/vAdam/dense_460/bias/v*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *-
f(R&
$__inference__traced_restore_12653105¼
&
¶
G__inference_model_195_layer_call_and_return_conditional_losses_12652846

inputsL
6conv1d_195_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_195_biasadd_readvariableop_resource::
(dense_459_matmul_readvariableop_resource: 7
)dense_459_biasadd_readvariableop_resource: :
(dense_460_matmul_readvariableop_resource: 7
)dense_460_biasadd_readvariableop_resource:
identity¢!conv1d_195/BiasAdd/ReadVariableOp¢-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_459/BiasAdd/ReadVariableOp¢dense_459/MatMul/ReadVariableOp¢ dense_460/BiasAdd/ReadVariableOp¢dense_460/MatMul/ReadVariableOpk
 conv1d_195/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_195/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_195/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_195_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_195/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_195/Conv1D/ExpandDims_1
ExpandDims5conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_195/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_195/Conv1DConv2D%conv1d_195/Conv1D/ExpandDims:output:0'conv1d_195/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_195/Conv1D/SqueezeSqueezeconv1d_195/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_195/BiasAdd/ReadVariableOpReadVariableOp*conv1d_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_195/BiasAddBiasAdd"conv1d_195/Conv1D/Squeeze:output:0)conv1d_195/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_195/ReluReluconv1d_195/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_195/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_195/ReshapeReshapeconv1d_195/Relu:activations:0flatten_195/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_459/MatMul/ReadVariableOpReadVariableOp(dense_459_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_459/MatMulMatMulflatten_195/Reshape:output:0'dense_459/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_459/BiasAdd/ReadVariableOpReadVariableOp)dense_459_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_459/BiasAddBiasAdddense_459/MatMul:product:0(dense_459/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_459/ReluReludense_459/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_460/MatMul/ReadVariableOpReadVariableOp(dense_460_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_460/MatMulMatMuldense_459/Relu:activations:0'dense_460/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_460/BiasAdd/ReadVariableOpReadVariableOp)dense_460_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_460/BiasAddBiasAdddense_460/MatMul:product:0(dense_460/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_460/SigmoidSigmoiddense_460/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_460/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp"^conv1d_195/BiasAdd/ReadVariableOp.^conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp!^dense_459/BiasAdd/ReadVariableOp ^dense_459/MatMul/ReadVariableOp!^dense_460/BiasAdd/ReadVariableOp ^dense_460/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2F
!conv1d_195/BiasAdd/ReadVariableOp!conv1d_195/BiasAdd/ReadVariableOp2^
-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_459/BiasAdd/ReadVariableOp dense_459/BiasAdd/ReadVariableOp2B
dense_459/MatMul/ReadVariableOpdense_459/MatMul/ReadVariableOp2D
 dense_460/BiasAdd/ReadVariableOp dense_460/BiasAdd/ReadVariableOp2B
dense_460/MatMul/ReadVariableOpdense_460/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ø
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
	

,__inference_model_195_layer_call_fn_12652782

inputs
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_195_layer_call_and_return_conditional_losses_12652651o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Û
´
G__inference_model_195_layer_call_and_return_conditional_losses_12652703
	input_196)
conv1d_195_12652686:!
conv1d_195_12652688:$
dense_459_12652692:  
dense_459_12652694: $
dense_460_12652697:  
dense_460_12652699:
identity¢"conv1d_195/StatefulPartitionedCall¢!dense_459/StatefulPartitionedCall¢!dense_460/StatefulPartitionedCall
"conv1d_195/StatefulPartitionedCallStatefulPartitionedCall	input_196conv1d_195_12652686conv1d_195_12652688*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512ê
flatten_195/PartitionedCallPartitionedCall+conv1d_195/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524
!dense_459/StatefulPartitionedCallStatefulPartitionedCall$flatten_195/PartitionedCall:output:0dense_459_12652692dense_459_12652694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537£
!dense_460/StatefulPartitionedCallStatefulPartitionedCall*dense_459/StatefulPartitionedCall:output:0dense_460_12652697dense_460_12652699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554y
IdentityIdentity*dense_460/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp#^conv1d_195/StatefulPartitionedCall"^dense_459/StatefulPartitionedCall"^dense_460/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2H
"conv1d_195/StatefulPartitionedCall"conv1d_195/StatefulPartitionedCall2F
!dense_459/StatefulPartitionedCall!dense_459/StatefulPartitionedCall2F
!dense_460/StatefulPartitionedCall!dense_460/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
Á
e
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
¶
G__inference_model_195_layer_call_and_return_conditional_losses_12652814

inputsL
6conv1d_195_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_195_biasadd_readvariableop_resource::
(dense_459_matmul_readvariableop_resource: 7
)dense_459_biasadd_readvariableop_resource: :
(dense_460_matmul_readvariableop_resource: 7
)dense_460_biasadd_readvariableop_resource:
identity¢!conv1d_195/BiasAdd/ReadVariableOp¢-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_459/BiasAdd/ReadVariableOp¢dense_459/MatMul/ReadVariableOp¢ dense_460/BiasAdd/ReadVariableOp¢dense_460/MatMul/ReadVariableOpk
 conv1d_195/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_195/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_195/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_195_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_195/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_195/Conv1D/ExpandDims_1
ExpandDims5conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_195/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_195/Conv1DConv2D%conv1d_195/Conv1D/ExpandDims:output:0'conv1d_195/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_195/Conv1D/SqueezeSqueezeconv1d_195/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_195/BiasAdd/ReadVariableOpReadVariableOp*conv1d_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_195/BiasAddBiasAdd"conv1d_195/Conv1D/Squeeze:output:0)conv1d_195/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_195/ReluReluconv1d_195/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_195/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_195/ReshapeReshapeconv1d_195/Relu:activations:0flatten_195/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_459/MatMul/ReadVariableOpReadVariableOp(dense_459_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_459/MatMulMatMulflatten_195/Reshape:output:0'dense_459/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_459/BiasAdd/ReadVariableOpReadVariableOp)dense_459_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_459/BiasAddBiasAdddense_459/MatMul:product:0(dense_459/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_459/ReluReludense_459/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_460/MatMul/ReadVariableOpReadVariableOp(dense_460_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_460/MatMulMatMuldense_459/Relu:activations:0'dense_460/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_460/BiasAdd/ReadVariableOpReadVariableOp)dense_460_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_460/BiasAddBiasAdddense_460/MatMul:product:0(dense_460/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_460/SigmoidSigmoiddense_460/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_460/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp"^conv1d_195/BiasAdd/ReadVariableOp.^conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp!^dense_459/BiasAdd/ReadVariableOp ^dense_459/MatMul/ReadVariableOp!^dense_460/BiasAdd/ReadVariableOp ^dense_460/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2F
!conv1d_195/BiasAdd/ReadVariableOp!conv1d_195/BiasAdd/ReadVariableOp2^
-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_459/BiasAdd/ReadVariableOp dense_459/BiasAdd/ReadVariableOp2B
dense_459/MatMul/ReadVariableOpdense_459/MatMul/ReadVariableOp2D
 dense_460/BiasAdd/ReadVariableOp dense_460/BiasAdd/ReadVariableOp2B
dense_460/MatMul/ReadVariableOpdense_460/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Á
e
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652882

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ø
G__inference_dense_460_layer_call_and_return_conditional_losses_12652922

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ø
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
±
G__inference_model_195_layer_call_and_return_conditional_losses_12652561

inputs)
conv1d_195_12652513:!
conv1d_195_12652515:$
dense_459_12652538:  
dense_459_12652540: $
dense_460_12652555:  
dense_460_12652557:
identity¢"conv1d_195/StatefulPartitionedCall¢!dense_459/StatefulPartitionedCall¢!dense_460/StatefulPartitionedCall
"conv1d_195/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_195_12652513conv1d_195_12652515*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512ê
flatten_195/PartitionedCallPartitionedCall+conv1d_195/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524
!dense_459/StatefulPartitionedCallStatefulPartitionedCall$flatten_195/PartitionedCall:output:0dense_459_12652538dense_459_12652540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537£
!dense_460/StatefulPartitionedCallStatefulPartitionedCall*dense_459/StatefulPartitionedCall:output:0dense_460_12652555dense_460_12652557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554y
IdentityIdentity*dense_460/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp#^conv1d_195/StatefulPartitionedCall"^dense_459/StatefulPartitionedCall"^dense_460/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2H
"conv1d_195/StatefulPartitionedCall"conv1d_195/StatefulPartitionedCall2F
!dense_459/StatefulPartitionedCall!dense_459/StatefulPartitionedCall2F
!dense_460/StatefulPartitionedCall!dense_460/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ì

H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652871

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ø
G__inference_dense_459_layer_call_and_return_conditional_losses_12652902

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

,__inference_model_195_layer_call_fn_12652683
	input_196
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_196unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_195_layer_call_and_return_conditional_losses_12652651o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
þe

$__inference__traced_restore_12653105
file_prefix8
"assignvariableop_conv1d_195_kernel:0
"assignvariableop_1_conv1d_195_bias:5
#assignvariableop_2_dense_459_kernel: /
!assignvariableop_3_dense_459_bias: 5
#assignvariableop_4_dense_460_kernel: /
!assignvariableop_5_dense_460_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: B
,assignvariableop_13_adam_conv1d_195_kernel_m:8
*assignvariableop_14_adam_conv1d_195_bias_m:=
+assignvariableop_15_adam_dense_459_kernel_m: 7
)assignvariableop_16_adam_dense_459_bias_m: =
+assignvariableop_17_adam_dense_460_kernel_m: 7
)assignvariableop_18_adam_dense_460_bias_m:B
,assignvariableop_19_adam_conv1d_195_kernel_v:8
*assignvariableop_20_adam_conv1d_195_bias_v:=
+assignvariableop_21_adam_dense_459_kernel_v: 7
)assignvariableop_22_adam_dense_459_bias_v: =
+assignvariableop_23_adam_dense_460_kernel_v: 7
)assignvariableop_24_adam_dense_460_bias_v:
identity_26¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*²
value¨B¥B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_conv1d_195_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv1d_195_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_459_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_459_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_460_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_460_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_conv1d_195_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_conv1d_195_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_459_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_459_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_460_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_460_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv1d_195_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv1d_195_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_459_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_459_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_460_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_460_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 õ
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: â
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ú9
Ô

!__inference__traced_save_12653020
file_prefix0
,savev2_conv1d_195_kernel_read_readvariableop.
*savev2_conv1d_195_bias_read_readvariableop/
+savev2_dense_459_kernel_read_readvariableop-
)savev2_dense_459_bias_read_readvariableop/
+savev2_dense_460_kernel_read_readvariableop-
)savev2_dense_460_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv1d_195_kernel_m_read_readvariableop5
1savev2_adam_conv1d_195_bias_m_read_readvariableop6
2savev2_adam_dense_459_kernel_m_read_readvariableop4
0savev2_adam_dense_459_bias_m_read_readvariableop6
2savev2_adam_dense_460_kernel_m_read_readvariableop4
0savev2_adam_dense_460_bias_m_read_readvariableop7
3savev2_adam_conv1d_195_kernel_v_read_readvariableop5
1savev2_adam_conv1d_195_bias_v_read_readvariableop6
2savev2_adam_dense_459_kernel_v_read_readvariableop4
0savev2_adam_dense_459_bias_v_read_readvariableop6
2savev2_adam_dense_460_kernel_v_read_readvariableop4
0savev2_adam_dense_460_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*²
value¨B¥B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¡
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B Ë

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv1d_195_kernel_read_readvariableop*savev2_conv1d_195_bias_read_readvariableop+savev2_dense_459_kernel_read_readvariableop)savev2_dense_459_bias_read_readvariableop+savev2_dense_460_kernel_read_readvariableop)savev2_dense_460_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv1d_195_kernel_m_read_readvariableop1savev2_adam_conv1d_195_bias_m_read_readvariableop2savev2_adam_dense_459_kernel_m_read_readvariableop0savev2_adam_dense_459_bias_m_read_readvariableop2savev2_adam_dense_460_kernel_m_read_readvariableop0savev2_adam_dense_460_bias_m_read_readvariableop3savev2_adam_conv1d_195_kernel_v_read_readvariableop1savev2_adam_conv1d_195_bias_v_read_readvariableop2savev2_adam_dense_459_kernel_v_read_readvariableop0savev2_adam_dense_459_bias_v_read_readvariableop2savev2_adam_dense_460_kernel_v_read_readvariableop0savev2_adam_dense_460_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ã
_input_shapes±
®: ::: : : :: : : : : : : ::: : : :::: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
´
J
.__inference_flatten_195_layer_call_fn_12652876

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à

&__inference_signature_wrapper_12652748
	input_196
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCall	input_196unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *,
f'R%
#__inference__wrapped_model_12652489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
Í

,__inference_dense_460_layer_call_fn_12652911

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Í

,__inference_dense_459_layer_call_fn_12652891

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

-__inference_conv1d_195_layer_call_fn_12652855

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Û
´
G__inference_model_195_layer_call_and_return_conditional_losses_12652723
	input_196)
conv1d_195_12652706:!
conv1d_195_12652708:$
dense_459_12652712:  
dense_459_12652714: $
dense_460_12652717:  
dense_460_12652719:
identity¢"conv1d_195/StatefulPartitionedCall¢!dense_459/StatefulPartitionedCall¢!dense_460/StatefulPartitionedCall
"conv1d_195/StatefulPartitionedCallStatefulPartitionedCall	input_196conv1d_195_12652706conv1d_195_12652708*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512ê
flatten_195/PartitionedCallPartitionedCall+conv1d_195/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524
!dense_459/StatefulPartitionedCallStatefulPartitionedCall$flatten_195/PartitionedCall:output:0dense_459_12652712dense_459_12652714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537£
!dense_460/StatefulPartitionedCallStatefulPartitionedCall*dense_459/StatefulPartitionedCall:output:0dense_460_12652717dense_460_12652719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554y
IdentityIdentity*dense_460/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp#^conv1d_195/StatefulPartitionedCall"^dense_459/StatefulPartitionedCall"^dense_460/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2H
"conv1d_195/StatefulPartitionedCall"conv1d_195/StatefulPartitionedCall2F
!dense_459/StatefulPartitionedCall!dense_459/StatefulPartitionedCall2F
!dense_460/StatefulPartitionedCall!dense_460/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
Ò
±
G__inference_model_195_layer_call_and_return_conditional_losses_12652651

inputs)
conv1d_195_12652634:!
conv1d_195_12652636:$
dense_459_12652640:  
dense_459_12652642: $
dense_460_12652645:  
dense_460_12652647:
identity¢"conv1d_195/StatefulPartitionedCall¢!dense_459/StatefulPartitionedCall¢!dense_460/StatefulPartitionedCall
"conv1d_195/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_195_12652634conv1d_195_12652636*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512ê
flatten_195/PartitionedCallPartitionedCall+conv1d_195/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652524
!dense_459/StatefulPartitionedCallStatefulPartitionedCall$flatten_195/PartitionedCall:output:0dense_459_12652640dense_459_12652642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_459_layer_call_and_return_conditional_losses_12652537£
!dense_460/StatefulPartitionedCallStatefulPartitionedCall*dense_459/StatefulPartitionedCall:output:0dense_460_12652645dense_460_12652647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_460_layer_call_and_return_conditional_losses_12652554y
IdentityIdentity*dense_460/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp#^conv1d_195/StatefulPartitionedCall"^dense_459/StatefulPartitionedCall"^dense_460/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2H
"conv1d_195/StatefulPartitionedCall"conv1d_195/StatefulPartitionedCall2F
!dense_459/StatefulPartitionedCall!dense_459/StatefulPartitionedCall2F
!dense_460/StatefulPartitionedCall!dense_460/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
	

,__inference_model_195_layer_call_fn_12652576
	input_196
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_196unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_195_layer_call_and_return_conditional_losses_12652561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
Ì

H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652512

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
,

#__inference__wrapped_model_12652489
	input_196V
@model_195_conv1d_195_conv1d_expanddims_1_readvariableop_resource:B
4model_195_conv1d_195_biasadd_readvariableop_resource:D
2model_195_dense_459_matmul_readvariableop_resource: A
3model_195_dense_459_biasadd_readvariableop_resource: D
2model_195_dense_460_matmul_readvariableop_resource: A
3model_195_dense_460_biasadd_readvariableop_resource:
identity¢+model_195/conv1d_195/BiasAdd/ReadVariableOp¢7model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp¢*model_195/dense_459/BiasAdd/ReadVariableOp¢)model_195/dense_459/MatMul/ReadVariableOp¢*model_195/dense_460/BiasAdd/ReadVariableOp¢)model_195/dense_460/MatMul/ReadVariableOpu
*model_195/conv1d_195/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
&model_195/conv1d_195/Conv1D/ExpandDims
ExpandDims	input_1963model_195/conv1d_195/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
7model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@model_195_conv1d_195_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0n
,model_195/conv1d_195/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ß
(model_195/conv1d_195/Conv1D/ExpandDims_1
ExpandDims?model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp:value:05model_195/conv1d_195/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ì
model_195/conv1d_195/Conv1DConv2D/model_195/conv1d_195/Conv1D/ExpandDims:output:01model_195/conv1d_195/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
ª
#model_195/conv1d_195/Conv1D/SqueezeSqueeze$model_195/conv1d_195/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
+model_195/conv1d_195/BiasAdd/ReadVariableOpReadVariableOp4model_195_conv1d_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0À
model_195/conv1d_195/BiasAddBiasAdd,model_195/conv1d_195/Conv1D/Squeeze:output:03model_195/conv1d_195/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
model_195/conv1d_195/ReluRelu%model_195/conv1d_195/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
model_195/flatten_195/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
model_195/flatten_195/ReshapeReshape'model_195/conv1d_195/Relu:activations:0$model_195/flatten_195/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_195/dense_459/MatMul/ReadVariableOpReadVariableOp2model_195_dense_459_matmul_readvariableop_resource*
_output_shapes

: *
dtype0±
model_195/dense_459/MatMulMatMul&model_195/flatten_195/Reshape:output:01model_195/dense_459/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_195/dense_459/BiasAdd/ReadVariableOpReadVariableOp3model_195_dense_459_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0²
model_195/dense_459/BiasAddBiasAdd$model_195/dense_459/MatMul:product:02model_195/dense_459/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
model_195/dense_459/ReluRelu$model_195/dense_459/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)model_195/dense_460/MatMul/ReadVariableOpReadVariableOp2model_195_dense_460_matmul_readvariableop_resource*
_output_shapes

: *
dtype0±
model_195/dense_460/MatMulMatMul&model_195/dense_459/Relu:activations:01model_195/dense_460/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_195/dense_460/BiasAdd/ReadVariableOpReadVariableOp3model_195_dense_460_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
model_195/dense_460/BiasAddBiasAdd$model_195/dense_460/MatMul:product:02model_195/dense_460/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
model_195/dense_460/SigmoidSigmoid$model_195/dense_460/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitymodel_195/dense_460/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp,^model_195/conv1d_195/BiasAdd/ReadVariableOp8^model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp+^model_195/dense_459/BiasAdd/ReadVariableOp*^model_195/dense_459/MatMul/ReadVariableOp+^model_195/dense_460/BiasAdd/ReadVariableOp*^model_195/dense_460/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2Z
+model_195/conv1d_195/BiasAdd/ReadVariableOp+model_195/conv1d_195/BiasAdd/ReadVariableOp2r
7model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp7model_195/conv1d_195/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_195/dense_459/BiasAdd/ReadVariableOp*model_195/dense_459/BiasAdd/ReadVariableOp2V
)model_195/dense_459/MatMul/ReadVariableOp)model_195/dense_459/MatMul/ReadVariableOp2X
*model_195/dense_460/BiasAdd/ReadVariableOp*model_195/dense_460/BiasAdd/ReadVariableOp2V
)model_195/dense_460/MatMul/ReadVariableOp)model_195/dense_460/MatMul/ReadVariableOp:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_196
	

,__inference_model_195_layer_call_fn_12652765

inputs
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_195_layer_call_and_return_conditional_losses_12652561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
C
	input_1966
serving_default_input_196:0ÿÿÿÿÿÿÿÿÿ
=
	dense_4600
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
ò
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ý
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
»
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
J
0
1
$2
%3
,4
-5"
trackable_list_wrapper
J
0
1
$2
%3
,4
-5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
å
3trace_0
4trace_1
5trace_2
6trace_32ú
,__inference_model_195_layer_call_fn_12652576
,__inference_model_195_layer_call_fn_12652765
,__inference_model_195_layer_call_fn_12652782
,__inference_model_195_layer_call_fn_12652683¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z3trace_0z4trace_1z5trace_2z6trace_3
Ñ
7trace_0
8trace_1
9trace_2
:trace_32æ
G__inference_model_195_layer_call_and_return_conditional_losses_12652814
G__inference_model_195_layer_call_and_return_conditional_losses_12652846
G__inference_model_195_layer_call_and_return_conditional_losses_12652703
G__inference_model_195_layer_call_and_return_conditional_losses_12652723¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z7trace_0z8trace_1z9trace_2z:trace_3
ÐBÍ
#__inference__wrapped_model_12652489	input_196"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¿
;iter

<beta_1

=beta_2
	>decay
?learning_ratembmc$md%me,mf-mgvhvi$vj%vk,vl-vm"
	optimizer
,
@serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ñ
Ftrace_02Ô
-__inference_conv1d_195_layer_call_fn_12652855¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0

Gtrace_02ï
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652871¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zGtrace_0
':%2conv1d_195/kernel
:2conv1d_195/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò
Mtrace_02Õ
.__inference_flatten_195_layer_call_fn_12652876¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zMtrace_0

Ntrace_02ð
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652882¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zNtrace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ð
Ttrace_02Ó
,__inference_dense_459_layer_call_fn_12652891¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zTtrace_0

Utrace_02î
G__inference_dense_459_layer_call_and_return_conditional_losses_12652902¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zUtrace_0
":  2dense_459/kernel
: 2dense_459/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ð
[trace_02Ó
,__inference_dense_460_layer_call_fn_12652911¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z[trace_0

\trace_02î
G__inference_dense_460_layer_call_and_return_conditional_losses_12652922¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z\trace_0
":  2dense_460/kernel
:2dense_460/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
]0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
,__inference_model_195_layer_call_fn_12652576	input_196"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
,__inference_model_195_layer_call_fn_12652765inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
,__inference_model_195_layer_call_fn_12652782inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bý
,__inference_model_195_layer_call_fn_12652683	input_196"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_model_195_layer_call_and_return_conditional_losses_12652814inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_model_195_layer_call_and_return_conditional_losses_12652846inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_model_195_layer_call_and_return_conditional_losses_12652703	input_196"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_model_195_layer_call_and_return_conditional_losses_12652723	input_196"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÏBÌ
&__inference_signature_wrapper_12652748	input_196"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBÞ
-__inference_conv1d_195_layer_call_fn_12652855inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652871inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
âBß
.__inference_flatten_195_layer_call_fn_12652876inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652882inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_dense_459_layer_call_fn_12652891inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_459_layer_call_and_return_conditional_losses_12652902inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_dense_460_layer_call_fn_12652911inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_460_layer_call_and_return_conditional_losses_12652922inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
^	variables
_	keras_api
	`total
	acount"
_tf_keras_metric
.
`0
a1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
,:*2Adam/conv1d_195/kernel/m
": 2Adam/conv1d_195/bias/m
':% 2Adam/dense_459/kernel/m
!: 2Adam/dense_459/bias/m
':% 2Adam/dense_460/kernel/m
!:2Adam/dense_460/bias/m
,:*2Adam/conv1d_195/kernel/v
": 2Adam/conv1d_195/bias/v
':% 2Adam/dense_459/kernel/v
!: 2Adam/dense_459/bias/v
':% 2Adam/dense_460/kernel/v
!:2Adam/dense_460/bias/v
#__inference__wrapped_model_12652489w$%,-6¢3
,¢)
'$
	input_196ÿÿÿÿÿÿÿÿÿ

ª "5ª2
0
	dense_460# 
	dense_460ÿÿÿÿÿÿÿÿÿ°
H__inference_conv1d_195_layer_call_and_return_conditional_losses_12652871d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_conv1d_195_layer_call_fn_12652855W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_459_layer_call_and_return_conditional_losses_12652902\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_dense_459_layer_call_fn_12652891O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_dense_460_layer_call_and_return_conditional_losses_12652922\,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_460_layer_call_fn_12652911O,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ©
I__inference_flatten_195_layer_call_and_return_conditional_losses_12652882\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_flatten_195_layer_call_fn_12652876O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿº
G__inference_model_195_layer_call_and_return_conditional_losses_12652703o$%,->¢;
4¢1
'$
	input_196ÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
G__inference_model_195_layer_call_and_return_conditional_losses_12652723o$%,->¢;
4¢1
'$
	input_196ÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_195_layer_call_and_return_conditional_losses_12652814l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_195_layer_call_and_return_conditional_losses_12652846l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_model_195_layer_call_fn_12652576b$%,->¢;
4¢1
'$
	input_196ÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_195_layer_call_fn_12652683b$%,->¢;
4¢1
'$
	input_196ÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_195_layer_call_fn_12652765_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_195_layer_call_fn_12652782_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ¯
&__inference_signature_wrapper_12652748$%,-C¢@
¢ 
9ª6
4
	input_196'$
	input_196ÿÿÿÿÿÿÿÿÿ
"5ª2
0
	dense_460# 
	dense_460ÿÿÿÿÿÿÿÿÿ