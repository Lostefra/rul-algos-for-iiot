Ú
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
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8

Adam/dense_736/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_736/bias/v
{
)Adam/dense_736/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_736/bias/v*
_output_shapes
:*
dtype0

Adam/dense_736/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_736/kernel/v

+Adam/dense_736/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_736/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_735/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_735/bias/v
{
)Adam/dense_735/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_735/bias/v*
_output_shapes
: *
dtype0

Adam/dense_735/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_735/kernel/v

+Adam/dense_735/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_735/kernel/v*
_output_shapes

: *
dtype0

Adam/conv1d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_63/bias/v
{
)Adam/conv1d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_63/bias/v*
_output_shapes
:*
dtype0

Adam/conv1d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*(
shared_nameAdam/conv1d_63/kernel/v

+Adam/conv1d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_63/kernel/v*"
_output_shapes
:1*
dtype0

Adam/dense_736/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_736/bias/m
{
)Adam/dense_736/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_736/bias/m*
_output_shapes
:*
dtype0

Adam/dense_736/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_736/kernel/m

+Adam/dense_736/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_736/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_735/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_735/bias/m
{
)Adam/dense_735/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_735/bias/m*
_output_shapes
: *
dtype0

Adam/dense_735/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_735/kernel/m

+Adam/dense_735/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_735/kernel/m*
_output_shapes

: *
dtype0

Adam/conv1d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_63/bias/m
{
)Adam/conv1d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_63/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*(
shared_nameAdam/conv1d_63/kernel/m

+Adam/conv1d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_63/kernel/m*"
_output_shapes
:1*
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
dense_736/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_736/bias
m
"dense_736/bias/Read/ReadVariableOpReadVariableOpdense_736/bias*
_output_shapes
:*
dtype0
|
dense_736/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_736/kernel
u
$dense_736/kernel/Read/ReadVariableOpReadVariableOpdense_736/kernel*
_output_shapes

: *
dtype0
t
dense_735/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_735/bias
m
"dense_735/bias/Read/ReadVariableOpReadVariableOpdense_735/bias*
_output_shapes
: *
dtype0
|
dense_735/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_735/kernel
u
$dense_735/kernel/Read/ReadVariableOpReadVariableOpdense_735/kernel*
_output_shapes

: *
dtype0
t
conv1d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_63/bias
m
"conv1d_63/bias/Read/ReadVariableOpReadVariableOpconv1d_63/bias*
_output_shapes
:*
dtype0

conv1d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*!
shared_nameconv1d_63/kernel
y
$conv1d_63/kernel/Read/ReadVariableOpReadVariableOpconv1d_63/kernel*"
_output_shapes
:1*
dtype0

serving_default_input_211Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
1
­
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_211conv1d_63/kernelconv1d_63/biasdense_735/kerneldense_735/biasdense_736/kerneldense_736/bias*
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
&__inference_signature_wrapper_51966924

NoOpNoOp
¡1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ü0
valueÒ0BÏ0 BÈ0
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
`Z
VARIABLE_VALUEconv1d_63/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_63/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_735/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_735/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_736/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_736/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
}
VARIABLE_VALUEAdam/conv1d_63/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_63/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_735/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_735/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_736/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_736/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv1d_63/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_63/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_735/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_735/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_736/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_736/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 


StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_63/kernel/Read/ReadVariableOp"conv1d_63/bias/Read/ReadVariableOp$dense_735/kernel/Read/ReadVariableOp"dense_735/bias/Read/ReadVariableOp$dense_736/kernel/Read/ReadVariableOp"dense_736/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv1d_63/kernel/m/Read/ReadVariableOp)Adam/conv1d_63/bias/m/Read/ReadVariableOp+Adam/dense_735/kernel/m/Read/ReadVariableOp)Adam/dense_735/bias/m/Read/ReadVariableOp+Adam/dense_736/kernel/m/Read/ReadVariableOp)Adam/dense_736/bias/m/Read/ReadVariableOp+Adam/conv1d_63/kernel/v/Read/ReadVariableOp)Adam/conv1d_63/bias/v/Read/ReadVariableOp+Adam/dense_735/kernel/v/Read/ReadVariableOp)Adam/dense_735/bias/v/Read/ReadVariableOp+Adam/dense_736/kernel/v/Read/ReadVariableOp)Adam/dense_736/bias/v/Read/ReadVariableOpConst*&
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
!__inference__traced_save_51967196

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_63/kernelconv1d_63/biasdense_735/kerneldense_735/biasdense_736/kerneldense_736/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_63/kernel/mAdam/conv1d_63/bias/mAdam/dense_735/kernel/mAdam/dense_735/bias/mAdam/dense_736/kernel/mAdam/dense_736/bias/mAdam/conv1d_63/kernel/vAdam/conv1d_63/bias/vAdam/dense_735/kernel/vAdam/dense_735/bias/vAdam/dense_736/kernel/vAdam/dense_736/bias/v*%
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
$__inference__traced_restore_51967281ø
Ü%
²
G__inference_model_210_layer_call_and_return_conditional_losses_51966990

inputsK
5conv1d_63_conv1d_expanddims_1_readvariableop_resource:17
)conv1d_63_biasadd_readvariableop_resource::
(dense_735_matmul_readvariableop_resource: 7
)dense_735_biasadd_readvariableop_resource: :
(dense_736_matmul_readvariableop_resource: 7
)dense_736_biasadd_readvariableop_resource:
identity¢ conv1d_63/BiasAdd/ReadVariableOp¢,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_735/BiasAdd/ReadVariableOp¢dense_735/MatMul/ReadVariableOp¢ dense_736/BiasAdd/ReadVariableOp¢dense_736/MatMul/ReadVariableOpj
conv1d_63/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_63/Conv1D/ExpandDims
ExpandDimsinputs(conv1d_63/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1¦
,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_63_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0c
!conv1d_63/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¾
conv1d_63/Conv1D/ExpandDims_1
ExpandDims4conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_63/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1Ë
conv1d_63/Conv1DConv2D$conv1d_63/Conv1D/ExpandDims:output:0&conv1d_63/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_63/Conv1D/SqueezeSqueezeconv1d_63/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
 conv1d_63/BiasAdd/ReadVariableOpReadVariableOp)conv1d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_63/BiasAddBiasAdd!conv1d_63/Conv1D/Squeeze:output:0(conv1d_63/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
conv1d_63/ReluReluconv1d_63/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_63/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_63/ReshapeReshapeconv1d_63/Relu:activations:0flatten_63/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_735/MatMul/ReadVariableOpReadVariableOp(dense_735_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_735/MatMulMatMulflatten_63/Reshape:output:0'dense_735/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_735/BiasAdd/ReadVariableOpReadVariableOp)dense_735_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_735/BiasAddBiasAdddense_735/MatMul:product:0(dense_735/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_735/ReluReludense_735/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_736/MatMul/ReadVariableOpReadVariableOp(dense_736_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_736/MatMulMatMuldense_735/Relu:activations:0'dense_736/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_736/BiasAdd/ReadVariableOpReadVariableOp)dense_736_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_736/BiasAddBiasAdddense_736/MatMul:product:0(dense_736/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_736/SigmoidSigmoiddense_736/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_736/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
NoOpNoOp!^conv1d_63/BiasAdd/ReadVariableOp-^conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp!^dense_735/BiasAdd/ReadVariableOp ^dense_735/MatMul/ReadVariableOp!^dense_736/BiasAdd/ReadVariableOp ^dense_736/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2D
 conv1d_63/BiasAdd/ReadVariableOp conv1d_63/BiasAdd/ReadVariableOp2\
,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_735/BiasAdd/ReadVariableOp dense_735/BiasAdd/ReadVariableOp2B
dense_735/MatMul/ReadVariableOpdense_735/MatMul/ReadVariableOp2D
 dense_736/BiasAdd/ReadVariableOp dense_736/BiasAdd/ReadVariableOp2B
dense_736/MatMul/ReadVariableOpdense_736/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
Ë

G__inference_conv1d_63_layer_call_and_return_conditional_losses_51967047

inputsA
+conv1d_expanddims_1_readvariableop_resource:1-
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
1
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
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
:1­
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
1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
òe

$__inference__traced_restore_51967281
file_prefix7
!assignvariableop_conv1d_63_kernel:1/
!assignvariableop_1_conv1d_63_bias:5
#assignvariableop_2_dense_735_kernel: /
!assignvariableop_3_dense_735_bias: 5
#assignvariableop_4_dense_736_kernel: /
!assignvariableop_5_dense_736_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: A
+assignvariableop_13_adam_conv1d_63_kernel_m:17
)assignvariableop_14_adam_conv1d_63_bias_m:=
+assignvariableop_15_adam_dense_735_kernel_m: 7
)assignvariableop_16_adam_dense_735_bias_m: =
+assignvariableop_17_adam_dense_736_kernel_m: 7
)assignvariableop_18_adam_dense_736_bias_m:A
+assignvariableop_19_adam_conv1d_63_kernel_v:17
)assignvariableop_20_adam_conv1d_63_bias_v:=
+assignvariableop_21_adam_dense_735_kernel_v: 7
)assignvariableop_22_adam_dense_735_bias_v: =
+assignvariableop_23_adam_dense_736_kernel_v: 7
)assignvariableop_24_adam_dense_736_bias_v:
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
:
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_63_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_63_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_735_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_735_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_736_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_736_biasIdentity_5:output:0"/device:CPU:0*
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
:
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_conv1d_63_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_conv1d_63_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_735_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_735_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_736_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_736_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv1d_63_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv1d_63_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_735_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_735_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_736_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_736_bias_vIdentity_24:output:0"/device:CPU:0*
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
Í
±
G__inference_model_210_layer_call_and_return_conditional_losses_51966879
	input_211(
conv1d_63_51966862:1 
conv1d_63_51966864:$
dense_735_51966868:  
dense_735_51966870: $
dense_736_51966873:  
dense_736_51966875:
identity¢!conv1d_63/StatefulPartitionedCall¢!dense_735/StatefulPartitionedCall¢!dense_736/StatefulPartitionedCall
!conv1d_63/StatefulPartitionedCallStatefulPartitionedCall	input_211conv1d_63_51966862conv1d_63_51966864*
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
GPU2*0,1J 8 *P
fKRI
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688ç
flatten_63/PartitionedCallPartitionedCall*conv1d_63/StatefulPartitionedCall:output:0*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700
!dense_735/StatefulPartitionedCallStatefulPartitionedCall#flatten_63/PartitionedCall:output:0dense_735_51966868dense_735_51966870*
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713£
!dense_736/StatefulPartitionedCallStatefulPartitionedCall*dense_735/StatefulPartitionedCall:output:0dense_736_51966873dense_736_51966875*
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730y
IdentityIdentity*dense_736/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^conv1d_63/StatefulPartitionedCall"^dense_735/StatefulPartitionedCall"^dense_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2F
!conv1d_63/StatefulPartitionedCall!conv1d_63/StatefulPartitionedCall2F
!dense_735/StatefulPartitionedCall!dense_735/StatefulPartitionedCall2F
!dense_736/StatefulPartitionedCall!dense_736/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211
à

&__inference_signature_wrapper_51966924
	input_211
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCall	input_211unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_51966665o
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
1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211
²
I
-__inference_flatten_63_layer_call_fn_51967052

inputs
identity¸
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700`
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
	

,__inference_model_210_layer_call_fn_51966752
	input_211
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_211unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966737o
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
1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211


ø
G__inference_dense_736_layer_call_and_return_conditional_losses_51967098

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
á

,__inference_conv1d_63_layer_call_fn_51967031

inputs
unknown:1
	unknown_0:
identity¢StatefulPartitionedCallå
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
GPU2*0,1J 8 *P
fKRI
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688s
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
1: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
Ä
®
G__inference_model_210_layer_call_and_return_conditional_losses_51966827

inputs(
conv1d_63_51966810:1 
conv1d_63_51966812:$
dense_735_51966816:  
dense_735_51966818: $
dense_736_51966821:  
dense_736_51966823:
identity¢!conv1d_63/StatefulPartitionedCall¢!dense_735/StatefulPartitionedCall¢!dense_736/StatefulPartitionedCall
!conv1d_63/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_63_51966810conv1d_63_51966812*
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
GPU2*0,1J 8 *P
fKRI
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688ç
flatten_63/PartitionedCallPartitionedCall*conv1d_63/StatefulPartitionedCall:output:0*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700
!dense_735/StatefulPartitionedCallStatefulPartitionedCall#flatten_63/PartitionedCall:output:0dense_735_51966816dense_735_51966818*
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713£
!dense_736/StatefulPartitionedCallStatefulPartitionedCall*dense_735/StatefulPartitionedCall:output:0dense_736_51966821dense_736_51966823*
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730y
IdentityIdentity*dense_736/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^conv1d_63/StatefulPartitionedCall"^dense_735/StatefulPartitionedCall"^dense_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2F
!conv1d_63/StatefulPartitionedCall!conv1d_63/StatefulPartitionedCall2F
!dense_735/StatefulPartitionedCall!dense_735/StatefulPartitionedCall2F
!dense_736/StatefulPartitionedCall!dense_736/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
À
d
H__inference_flatten_63_layer_call_and_return_conditional_losses_51967058

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
Ä
®
G__inference_model_210_layer_call_and_return_conditional_losses_51966737

inputs(
conv1d_63_51966689:1 
conv1d_63_51966691:$
dense_735_51966714:  
dense_735_51966716: $
dense_736_51966731:  
dense_736_51966733:
identity¢!conv1d_63/StatefulPartitionedCall¢!dense_735/StatefulPartitionedCall¢!dense_736/StatefulPartitionedCall
!conv1d_63/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_63_51966689conv1d_63_51966691*
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
GPU2*0,1J 8 *P
fKRI
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688ç
flatten_63/PartitionedCallPartitionedCall*conv1d_63/StatefulPartitionedCall:output:0*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700
!dense_735/StatefulPartitionedCallStatefulPartitionedCall#flatten_63/PartitionedCall:output:0dense_735_51966714dense_735_51966716*
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713£
!dense_736/StatefulPartitionedCallStatefulPartitionedCall*dense_735/StatefulPartitionedCall:output:0dense_736_51966731dense_736_51966733*
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730y
IdentityIdentity*dense_736/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^conv1d_63/StatefulPartitionedCall"^dense_735/StatefulPartitionedCall"^dense_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2F
!conv1d_63/StatefulPartitionedCall!conv1d_63/StatefulPartitionedCall2F
!dense_735/StatefulPartitionedCall!dense_735/StatefulPartitionedCall2F
!dense_736/StatefulPartitionedCall!dense_736/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
	

,__inference_model_210_layer_call_fn_51966958

inputs
unknown:1
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966827o
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
1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
Í

,__inference_dense_735_layer_call_fn_51967067

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
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713o
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
á+

#__inference__wrapped_model_51966665
	input_211U
?model_210_conv1d_63_conv1d_expanddims_1_readvariableop_resource:1A
3model_210_conv1d_63_biasadd_readvariableop_resource:D
2model_210_dense_735_matmul_readvariableop_resource: A
3model_210_dense_735_biasadd_readvariableop_resource: D
2model_210_dense_736_matmul_readvariableop_resource: A
3model_210_dense_736_biasadd_readvariableop_resource:
identity¢*model_210/conv1d_63/BiasAdd/ReadVariableOp¢6model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp¢*model_210/dense_735/BiasAdd/ReadVariableOp¢)model_210/dense_735/MatMul/ReadVariableOp¢*model_210/dense_736/BiasAdd/ReadVariableOp¢)model_210/dense_736/MatMul/ReadVariableOpt
)model_210/conv1d_63/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¬
%model_210/conv1d_63/Conv1D/ExpandDims
ExpandDims	input_2112model_210/conv1d_63/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1º
6model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_210_conv1d_63_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0m
+model_210/conv1d_63/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_210/conv1d_63/Conv1D/ExpandDims_1
ExpandDims>model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_210/conv1d_63/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1é
model_210/conv1d_63/Conv1DConv2D.model_210/conv1d_63/Conv1D/ExpandDims:output:00model_210/conv1d_63/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_210/conv1d_63/Conv1D/SqueezeSqueeze#model_210/conv1d_63/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_210/conv1d_63/BiasAdd/ReadVariableOpReadVariableOp3model_210_conv1d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_210/conv1d_63/BiasAddBiasAdd+model_210/conv1d_63/Conv1D/Squeeze:output:02model_210/conv1d_63/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_210/conv1d_63/ReluRelu$model_210/conv1d_63/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
model_210/flatten_63/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
model_210/flatten_63/ReshapeReshape&model_210/conv1d_63/Relu:activations:0#model_210/flatten_63/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_210/dense_735/MatMul/ReadVariableOpReadVariableOp2model_210_dense_735_matmul_readvariableop_resource*
_output_shapes

: *
dtype0°
model_210/dense_735/MatMulMatMul%model_210/flatten_63/Reshape:output:01model_210/dense_735/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_210/dense_735/BiasAdd/ReadVariableOpReadVariableOp3model_210_dense_735_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0²
model_210/dense_735/BiasAddBiasAdd$model_210/dense_735/MatMul:product:02model_210/dense_735/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
model_210/dense_735/ReluRelu$model_210/dense_735/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)model_210/dense_736/MatMul/ReadVariableOpReadVariableOp2model_210_dense_736_matmul_readvariableop_resource*
_output_shapes

: *
dtype0±
model_210/dense_736/MatMulMatMul&model_210/dense_735/Relu:activations:01model_210/dense_736/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_210/dense_736/BiasAdd/ReadVariableOpReadVariableOp3model_210_dense_736_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
model_210/dense_736/BiasAddBiasAdd$model_210/dense_736/MatMul:product:02model_210/dense_736/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
model_210/dense_736/SigmoidSigmoid$model_210/dense_736/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitymodel_210/dense_736/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
NoOpNoOp+^model_210/conv1d_63/BiasAdd/ReadVariableOp7^model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp+^model_210/dense_735/BiasAdd/ReadVariableOp*^model_210/dense_735/MatMul/ReadVariableOp+^model_210/dense_736/BiasAdd/ReadVariableOp*^model_210/dense_736/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2X
*model_210/conv1d_63/BiasAdd/ReadVariableOp*model_210/conv1d_63/BiasAdd/ReadVariableOp2p
6model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp6model_210/conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_210/dense_735/BiasAdd/ReadVariableOp*model_210/dense_735/BiasAdd/ReadVariableOp2V
)model_210/dense_735/MatMul/ReadVariableOp)model_210/dense_735/MatMul/ReadVariableOp2X
*model_210/dense_736/BiasAdd/ReadVariableOp*model_210/dense_736/BiasAdd/ReadVariableOp2V
)model_210/dense_736/MatMul/ReadVariableOp)model_210/dense_736/MatMul/ReadVariableOp:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211
Í

,__inference_dense_736_layer_call_fn_51967087

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
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730o
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
Ü%
²
G__inference_model_210_layer_call_and_return_conditional_losses_51967022

inputsK
5conv1d_63_conv1d_expanddims_1_readvariableop_resource:17
)conv1d_63_biasadd_readvariableop_resource::
(dense_735_matmul_readvariableop_resource: 7
)dense_735_biasadd_readvariableop_resource: :
(dense_736_matmul_readvariableop_resource: 7
)dense_736_biasadd_readvariableop_resource:
identity¢ conv1d_63/BiasAdd/ReadVariableOp¢,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_735/BiasAdd/ReadVariableOp¢dense_735/MatMul/ReadVariableOp¢ dense_736/BiasAdd/ReadVariableOp¢dense_736/MatMul/ReadVariableOpj
conv1d_63/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_63/Conv1D/ExpandDims
ExpandDimsinputs(conv1d_63/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1¦
,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_63_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0c
!conv1d_63/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¾
conv1d_63/Conv1D/ExpandDims_1
ExpandDims4conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_63/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1Ë
conv1d_63/Conv1DConv2D$conv1d_63/Conv1D/ExpandDims:output:0&conv1d_63/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_63/Conv1D/SqueezeSqueezeconv1d_63/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
 conv1d_63/BiasAdd/ReadVariableOpReadVariableOp)conv1d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_63/BiasAddBiasAdd!conv1d_63/Conv1D/Squeeze:output:0(conv1d_63/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
conv1d_63/ReluReluconv1d_63/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_63/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_63/ReshapeReshapeconv1d_63/Relu:activations:0flatten_63/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_735/MatMul/ReadVariableOpReadVariableOp(dense_735_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_735/MatMulMatMulflatten_63/Reshape:output:0'dense_735/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_735/BiasAdd/ReadVariableOpReadVariableOp)dense_735_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_735/BiasAddBiasAdddense_735/MatMul:product:0(dense_735/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_735/ReluReludense_735/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_736/MatMul/ReadVariableOpReadVariableOp(dense_736_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_736/MatMulMatMuldense_735/Relu:activations:0'dense_736/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_736/BiasAdd/ReadVariableOpReadVariableOp)dense_736_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_736/BiasAddBiasAdddense_736/MatMul:product:0(dense_736/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_736/SigmoidSigmoiddense_736/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_736/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
NoOpNoOp!^conv1d_63/BiasAdd/ReadVariableOp-^conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp!^dense_735/BiasAdd/ReadVariableOp ^dense_735/MatMul/ReadVariableOp!^dense_736/BiasAdd/ReadVariableOp ^dense_736/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2D
 conv1d_63/BiasAdd/ReadVariableOp conv1d_63/BiasAdd/ReadVariableOp2\
,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_63/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_735/BiasAdd/ReadVariableOp dense_735/BiasAdd/ReadVariableOp2B
dense_735/MatMul/ReadVariableOpdense_735/MatMul/ReadVariableOp2D
 dense_736/BiasAdd/ReadVariableOp dense_736/BiasAdd/ReadVariableOp2B
dense_736/MatMul/ReadVariableOpdense_736/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
Î9
Î

!__inference__traced_save_51967196
file_prefix/
+savev2_conv1d_63_kernel_read_readvariableop-
)savev2_conv1d_63_bias_read_readvariableop/
+savev2_dense_735_kernel_read_readvariableop-
)savev2_dense_735_bias_read_readvariableop/
+savev2_dense_736_kernel_read_readvariableop-
)savev2_dense_736_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv1d_63_kernel_m_read_readvariableop4
0savev2_adam_conv1d_63_bias_m_read_readvariableop6
2savev2_adam_dense_735_kernel_m_read_readvariableop4
0savev2_adam_dense_735_bias_m_read_readvariableop6
2savev2_adam_dense_736_kernel_m_read_readvariableop4
0savev2_adam_dense_736_bias_m_read_readvariableop6
2savev2_adam_conv1d_63_kernel_v_read_readvariableop4
0savev2_adam_conv1d_63_bias_v_read_readvariableop6
2savev2_adam_dense_735_kernel_v_read_readvariableop4
0savev2_adam_dense_735_bias_v_read_readvariableop6
2savev2_adam_dense_736_kernel_v_read_readvariableop4
0savev2_adam_dense_736_bias_v_read_readvariableop
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
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B Å

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_63_kernel_read_readvariableop)savev2_conv1d_63_bias_read_readvariableop+savev2_dense_735_kernel_read_readvariableop)savev2_dense_735_bias_read_readvariableop+savev2_dense_736_kernel_read_readvariableop)savev2_dense_736_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv1d_63_kernel_m_read_readvariableop0savev2_adam_conv1d_63_bias_m_read_readvariableop2savev2_adam_dense_735_kernel_m_read_readvariableop0savev2_adam_dense_735_bias_m_read_readvariableop2savev2_adam_dense_736_kernel_m_read_readvariableop0savev2_adam_dense_736_bias_m_read_readvariableop2savev2_adam_conv1d_63_kernel_v_read_readvariableop0savev2_adam_conv1d_63_bias_v_read_readvariableop2savev2_adam_dense_735_kernel_v_read_readvariableop0savev2_adam_dense_735_bias_v_read_readvariableop2savev2_adam_dense_736_kernel_v_read_readvariableop0savev2_adam_dense_736_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
®: :1:: : : :: : : : : : : :1:: : : ::1:: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:1: 
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
:1: 
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
:1: 
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


ø
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713

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
Ë

G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688

inputsA
+conv1d_expanddims_1_readvariableop_resource:1-
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
1
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
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
:1­
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
1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs
	

,__inference_model_210_layer_call_fn_51966941

inputs
unknown:1
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966737o
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
1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
 
_user_specified_nameinputs


ø
G__inference_dense_735_layer_call_and_return_conditional_losses_51967078

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


ø
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730

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
	

,__inference_model_210_layer_call_fn_51966859
	input_211
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_211unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966827o
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
1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211
Í
±
G__inference_model_210_layer_call_and_return_conditional_losses_51966899
	input_211(
conv1d_63_51966882:1 
conv1d_63_51966884:$
dense_735_51966888:  
dense_735_51966890: $
dense_736_51966893:  
dense_736_51966895:
identity¢!conv1d_63/StatefulPartitionedCall¢!dense_735/StatefulPartitionedCall¢!dense_736/StatefulPartitionedCall
!conv1d_63/StatefulPartitionedCallStatefulPartitionedCall	input_211conv1d_63_51966882conv1d_63_51966884*
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
GPU2*0,1J 8 *P
fKRI
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51966688ç
flatten_63/PartitionedCallPartitionedCall*conv1d_63/StatefulPartitionedCall:output:0*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700
!dense_735/StatefulPartitionedCallStatefulPartitionedCall#flatten_63/PartitionedCall:output:0dense_735_51966888dense_735_51966890*
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51966713£
!dense_736/StatefulPartitionedCallStatefulPartitionedCall*dense_735/StatefulPartitionedCall:output:0dense_736_51966893dense_736_51966895*
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51966730y
IdentityIdentity*dense_736/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^conv1d_63/StatefulPartitionedCall"^dense_735/StatefulPartitionedCall"^dense_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
1: : : : : : 2F
!conv1d_63/StatefulPartitionedCall!conv1d_63/StatefulPartitionedCall2F
!dense_735/StatefulPartitionedCall!dense_735/StatefulPartitionedCall2F
!dense_736/StatefulPartitionedCall!dense_736/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
#
_user_specified_name	input_211
À
d
H__inference_flatten_63_layer_call_and_return_conditional_losses_51966700

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
	input_2116
serving_default_input_211:0ÿÿÿÿÿÿÿÿÿ
1=
	dense_7360
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
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
,__inference_model_210_layer_call_fn_51966752
,__inference_model_210_layer_call_fn_51966941
,__inference_model_210_layer_call_fn_51966958
,__inference_model_210_layer_call_fn_51966859¿
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966990
G__inference_model_210_layer_call_and_return_conditional_losses_51967022
G__inference_model_210_layer_call_and_return_conditional_losses_51966879
G__inference_model_210_layer_call_and_return_conditional_losses_51966899¿
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
#__inference__wrapped_model_51966665	input_211"
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
ð
Ftrace_02Ó
,__inference_conv1d_63_layer_call_fn_51967031¢
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

Gtrace_02î
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51967047¢
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
&:$12conv1d_63/kernel
:2conv1d_63/bias
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
ñ
Mtrace_02Ô
-__inference_flatten_63_layer_call_fn_51967052¢
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

Ntrace_02ï
H__inference_flatten_63_layer_call_and_return_conditional_losses_51967058¢
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
,__inference_dense_735_layer_call_fn_51967067¢
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51967078¢
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
":  2dense_735/kernel
: 2dense_735/bias
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
,__inference_dense_736_layer_call_fn_51967087¢
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51967098¢
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
":  2dense_736/kernel
:2dense_736/bias
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
,__inference_model_210_layer_call_fn_51966752	input_211"¿
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
,__inference_model_210_layer_call_fn_51966941inputs"¿
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
,__inference_model_210_layer_call_fn_51966958inputs"¿
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
,__inference_model_210_layer_call_fn_51966859	input_211"¿
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966990inputs"¿
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
G__inference_model_210_layer_call_and_return_conditional_losses_51967022inputs"¿
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966879	input_211"¿
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
G__inference_model_210_layer_call_and_return_conditional_losses_51966899	input_211"¿
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
&__inference_signature_wrapper_51966924	input_211"
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
àBÝ
,__inference_conv1d_63_layer_call_fn_51967031inputs"¢
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
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51967047inputs"¢
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
áBÞ
-__inference_flatten_63_layer_call_fn_51967052inputs"¢
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
H__inference_flatten_63_layer_call_and_return_conditional_losses_51967058inputs"¢
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
,__inference_dense_735_layer_call_fn_51967067inputs"¢
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
G__inference_dense_735_layer_call_and_return_conditional_losses_51967078inputs"¢
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
,__inference_dense_736_layer_call_fn_51967087inputs"¢
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
G__inference_dense_736_layer_call_and_return_conditional_losses_51967098inputs"¢
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
+:)12Adam/conv1d_63/kernel/m
!:2Adam/conv1d_63/bias/m
':% 2Adam/dense_735/kernel/m
!: 2Adam/dense_735/bias/m
':% 2Adam/dense_736/kernel/m
!:2Adam/dense_736/bias/m
+:)12Adam/conv1d_63/kernel/v
!:2Adam/conv1d_63/bias/v
':% 2Adam/dense_735/kernel/v
!: 2Adam/dense_735/bias/v
':% 2Adam/dense_736/kernel/v
!:2Adam/dense_736/bias/v
#__inference__wrapped_model_51966665w$%,-6¢3
,¢)
'$
	input_211ÿÿÿÿÿÿÿÿÿ
1
ª "5ª2
0
	dense_736# 
	dense_736ÿÿÿÿÿÿÿÿÿ¯
G__inference_conv1d_63_layer_call_and_return_conditional_losses_51967047d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
1
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_63_layer_call_fn_51967031W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
1
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_735_layer_call_and_return_conditional_losses_51967078\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_dense_735_layer_call_fn_51967067O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_dense_736_layer_call_and_return_conditional_losses_51967098\,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_736_layer_call_fn_51967087O,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¨
H__inference_flatten_63_layer_call_and_return_conditional_losses_51967058\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_flatten_63_layer_call_fn_51967052O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿº
G__inference_model_210_layer_call_and_return_conditional_losses_51966879o$%,->¢;
4¢1
'$
	input_211ÿÿÿÿÿÿÿÿÿ
1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
G__inference_model_210_layer_call_and_return_conditional_losses_51966899o$%,->¢;
4¢1
'$
	input_211ÿÿÿÿÿÿÿÿÿ
1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_210_layer_call_and_return_conditional_losses_51966990l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_210_layer_call_and_return_conditional_losses_51967022l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_model_210_layer_call_fn_51966752b$%,->¢;
4¢1
'$
	input_211ÿÿÿÿÿÿÿÿÿ
1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_210_layer_call_fn_51966859b$%,->¢;
4¢1
'$
	input_211ÿÿÿÿÿÿÿÿÿ
1
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_210_layer_call_fn_51966941_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_210_layer_call_fn_51966958_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
1
p

 
ª "ÿÿÿÿÿÿÿÿÿ¯
&__inference_signature_wrapper_51966924$%,-C¢@
¢ 
9ª6
4
	input_211'$
	input_211ÿÿÿÿÿÿÿÿÿ
1"5ª2
0
	dense_736# 
	dense_736ÿÿÿÿÿÿÿÿÿ