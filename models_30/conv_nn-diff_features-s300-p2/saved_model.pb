î
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
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ù

Adam/dense_1113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1113/bias/v
}
*Adam/dense_1113/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1113/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1113/kernel/v

,Adam/dense_1113/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1113/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_1112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/dense_1112/bias/v
}
*Adam/dense_1112/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1112/bias/v*
_output_shapes
: *
dtype0

Adam/dense_1112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1112/kernel/v

,Adam/dense_1112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1112/kernel/v*
_output_shapes

: *
dtype0

Adam/conv1d_222/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_222/bias/v
}
*Adam/conv1d_222/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_222/bias/v*
_output_shapes
:*
dtype0

Adam/conv1d_222/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*)
shared_nameAdam/conv1d_222/kernel/v

,Adam/conv1d_222/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_222/kernel/v*"
_output_shapes
:1*
dtype0

Adam/dense_1113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1113/bias/m
}
*Adam/dense_1113/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1113/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1113/kernel/m

,Adam/dense_1113/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1113/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_1112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/dense_1112/bias/m
}
*Adam/dense_1112/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1112/bias/m*
_output_shapes
: *
dtype0

Adam/dense_1112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1112/kernel/m

,Adam/dense_1112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1112/kernel/m*
_output_shapes

: *
dtype0

Adam/conv1d_222/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_222/bias/m
}
*Adam/conv1d_222/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_222/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_222/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*)
shared_nameAdam/conv1d_222/kernel/m

,Adam/conv1d_222/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_222/kernel/m*"
_output_shapes
:1*
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
v
dense_1113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1113/bias
o
#dense_1113/bias/Read/ReadVariableOpReadVariableOpdense_1113/bias*
_output_shapes
:*
dtype0
~
dense_1113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_1113/kernel
w
%dense_1113/kernel/Read/ReadVariableOpReadVariableOpdense_1113/kernel*
_output_shapes

: *
dtype0
v
dense_1112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1112/bias
o
#dense_1112/bias/Read/ReadVariableOpReadVariableOpdense_1112/bias*
_output_shapes
: *
dtype0
~
dense_1112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_1112/kernel
w
%dense_1112/kernel/Read/ReadVariableOpReadVariableOpdense_1112/kernel*
_output_shapes

: *
dtype0
v
conv1d_222/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_222/bias
o
#conv1d_222/bias/Read/ReadVariableOpReadVariableOpconv1d_222/bias*
_output_shapes
:*
dtype0

conv1d_222/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:1*"
shared_nameconv1d_222/kernel
{
%conv1d_222/kernel/Read/ReadVariableOpReadVariableOpconv1d_222/kernel*"
_output_shapes
:1*
dtype0

serving_default_input_370Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ1
³
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_370conv1d_222/kernelconv1d_222/biasdense_1112/kerneldense_1112/biasdense_1113/kerneldense_1113/bias*
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
&__inference_signature_wrapper_73965188

NoOpNoOp
¹1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ô0
valueê0Bç0 Bà0
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
VARIABLE_VALUEconv1d_222/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_222/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEdense_1112/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1112/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
a[
VARIABLE_VALUEdense_1113/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1113/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv1d_222/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_222/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1112/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1112/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1113/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1113/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv1d_222/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_222/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1112/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1112/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1113/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1113/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 


StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv1d_222/kernel/Read/ReadVariableOp#conv1d_222/bias/Read/ReadVariableOp%dense_1112/kernel/Read/ReadVariableOp#dense_1112/bias/Read/ReadVariableOp%dense_1113/kernel/Read/ReadVariableOp#dense_1113/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv1d_222/kernel/m/Read/ReadVariableOp*Adam/conv1d_222/bias/m/Read/ReadVariableOp,Adam/dense_1112/kernel/m/Read/ReadVariableOp*Adam/dense_1112/bias/m/Read/ReadVariableOp,Adam/dense_1113/kernel/m/Read/ReadVariableOp*Adam/dense_1113/bias/m/Read/ReadVariableOp,Adam/conv1d_222/kernel/v/Read/ReadVariableOp*Adam/conv1d_222/bias/v/Read/ReadVariableOp,Adam/dense_1112/kernel/v/Read/ReadVariableOp*Adam/dense_1112/bias/v/Read/ReadVariableOp,Adam/dense_1113/kernel/v/Read/ReadVariableOp*Adam/dense_1113/bias/v/Read/ReadVariableOpConst*&
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
!__inference__traced_save_73965460
¡
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_222/kernelconv1d_222/biasdense_1112/kerneldense_1112/biasdense_1113/kerneldense_1113/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_222/kernel/mAdam/conv1d_222/bias/mAdam/dense_1112/kernel/mAdam/dense_1112/bias/mAdam/dense_1113/kernel/mAdam/dense_1113/bias/mAdam/conv1d_222/kernel/vAdam/conv1d_222/bias/vAdam/dense_1112/kernel/vAdam/dense_1112/bias/vAdam/dense_1113/kernel/vAdam/dense_1113/bias/v*%
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
$__inference__traced_restore_73965545Ñ
ã

-__inference_conv1d_222_layer_call_fn_73965295

inputs
unknown:1
	unknown_0:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
à

&__inference_signature_wrapper_73965188
	input_370
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCall	input_370unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_73964929o
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
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
Á
e
I__inference_flatten_222_layer_call_and_return_conditional_losses_73965322

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
e
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²,

#__inference__wrapped_model_73964929
	input_370V
@model_369_conv1d_222_conv1d_expanddims_1_readvariableop_resource:1B
4model_369_conv1d_222_biasadd_readvariableop_resource:E
3model_369_dense_1112_matmul_readvariableop_resource: B
4model_369_dense_1112_biasadd_readvariableop_resource: E
3model_369_dense_1113_matmul_readvariableop_resource: B
4model_369_dense_1113_biasadd_readvariableop_resource:
identity¢+model_369/conv1d_222/BiasAdd/ReadVariableOp¢7model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp¢+model_369/dense_1112/BiasAdd/ReadVariableOp¢*model_369/dense_1112/MatMul/ReadVariableOp¢+model_369/dense_1113/BiasAdd/ReadVariableOp¢*model_369/dense_1113/MatMul/ReadVariableOpu
*model_369/conv1d_222/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
&model_369/conv1d_222/Conv1D/ExpandDims
ExpandDims	input_3703model_369/conv1d_222/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¼
7model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@model_369_conv1d_222_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0n
,model_369/conv1d_222/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ß
(model_369/conv1d_222/Conv1D/ExpandDims_1
ExpandDims?model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp:value:05model_369/conv1d_222/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1ì
model_369/conv1d_222/Conv1DConv2D/model_369/conv1d_222/Conv1D/ExpandDims:output:01model_369/conv1d_222/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
ª
#model_369/conv1d_222/Conv1D/SqueezeSqueeze$model_369/conv1d_222/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
+model_369/conv1d_222/BiasAdd/ReadVariableOpReadVariableOp4model_369_conv1d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0À
model_369/conv1d_222/BiasAddBiasAdd,model_369/conv1d_222/Conv1D/Squeeze:output:03model_369/conv1d_222/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
model_369/conv1d_222/ReluRelu%model_369/conv1d_222/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
model_369/flatten_222/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
model_369/flatten_222/ReshapeReshape'model_369/conv1d_222/Relu:activations:0$model_369/flatten_222/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_369/dense_1112/MatMul/ReadVariableOpReadVariableOp3model_369_dense_1112_matmul_readvariableop_resource*
_output_shapes

: *
dtype0³
model_369/dense_1112/MatMulMatMul&model_369/flatten_222/Reshape:output:02model_369/dense_1112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+model_369/dense_1112/BiasAdd/ReadVariableOpReadVariableOp4model_369_dense_1112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
model_369/dense_1112/BiasAddBiasAdd%model_369/dense_1112/MatMul:product:03model_369/dense_1112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
model_369/dense_1112/ReluRelu%model_369/dense_1112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_369/dense_1113/MatMul/ReadVariableOpReadVariableOp3model_369_dense_1113_matmul_readvariableop_resource*
_output_shapes

: *
dtype0´
model_369/dense_1113/MatMulMatMul'model_369/dense_1112/Relu:activations:02model_369/dense_1113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model_369/dense_1113/BiasAdd/ReadVariableOpReadVariableOp4model_369_dense_1113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_369/dense_1113/BiasAddBiasAdd%model_369/dense_1113/MatMul:product:03model_369/dense_1113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_369/dense_1113/SigmoidSigmoid%model_369/dense_1113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity model_369/dense_1113/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
NoOpNoOp,^model_369/conv1d_222/BiasAdd/ReadVariableOp8^model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp,^model_369/dense_1112/BiasAdd/ReadVariableOp+^model_369/dense_1112/MatMul/ReadVariableOp,^model_369/dense_1113/BiasAdd/ReadVariableOp+^model_369/dense_1113/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2Z
+model_369/conv1d_222/BiasAdd/ReadVariableOp+model_369/conv1d_222/BiasAdd/ReadVariableOp2r
7model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp7model_369/conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp2Z
+model_369/dense_1112/BiasAdd/ReadVariableOp+model_369/dense_1112/BiasAdd/ReadVariableOp2X
*model_369/dense_1112/MatMul/ReadVariableOp*model_369/dense_1112/MatMul/ReadVariableOp2Z
+model_369/dense_1113/BiasAdd/ReadVariableOp+model_369/dense_1113/BiasAdd/ReadVariableOp2X
*model_369/dense_1113/MatMul/ReadVariableOp*model_369/dense_1113/MatMul/ReadVariableOp:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
	

,__inference_model_369_layer_call_fn_73965123
	input_370
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_370unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965091o
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
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
ñ
º
G__inference_model_369_layer_call_and_return_conditional_losses_73965163
	input_370)
conv1d_222_73965146:1!
conv1d_222_73965148:%
dense_1112_73965152: !
dense_1112_73965154: %
dense_1113_73965157: !
dense_1113_73965159:
identity¢"conv1d_222/StatefulPartitionedCall¢"dense_1112/StatefulPartitionedCall¢"dense_1113/StatefulPartitionedCall
"conv1d_222/StatefulPartitionedCallStatefulPartitionedCall	input_370conv1d_222_73965146conv1d_222_73965148*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952ê
flatten_222/PartitionedCallPartitionedCall+conv1d_222/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964¡
"dense_1112/StatefulPartitionedCallStatefulPartitionedCall$flatten_222/PartitionedCall:output:0dense_1112_73965152dense_1112_73965154*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977¨
"dense_1113/StatefulPartitionedCallStatefulPartitionedCall+dense_1112/StatefulPartitionedCall:output:0dense_1113_73965157dense_1113_73965159*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994z
IdentityIdentity+dense_1113/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp#^conv1d_222/StatefulPartitionedCall#^dense_1112/StatefulPartitionedCall#^dense_1113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2H
"conv1d_222/StatefulPartitionedCall"conv1d_222/StatefulPartitionedCall2H
"dense_1112/StatefulPartitionedCall"dense_1112/StatefulPartitionedCall2H
"dense_1113/StatefulPartitionedCall"dense_1113/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
Ï

-__inference_dense_1112_layer_call_fn_73965331

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallâ
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977o
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
J
.__inference_flatten_222_layer_call_fn_73965316

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
º
G__inference_model_369_layer_call_and_return_conditional_losses_73965143
	input_370)
conv1d_222_73965126:1!
conv1d_222_73965128:%
dense_1112_73965132: !
dense_1112_73965134: %
dense_1113_73965137: !
dense_1113_73965139:
identity¢"conv1d_222/StatefulPartitionedCall¢"dense_1112/StatefulPartitionedCall¢"dense_1113/StatefulPartitionedCall
"conv1d_222/StatefulPartitionedCallStatefulPartitionedCall	input_370conv1d_222_73965126conv1d_222_73965128*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952ê
flatten_222/PartitionedCallPartitionedCall+conv1d_222/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964¡
"dense_1112/StatefulPartitionedCallStatefulPartitionedCall$flatten_222/PartitionedCall:output:0dense_1112_73965132dense_1112_73965134*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977¨
"dense_1113/StatefulPartitionedCallStatefulPartitionedCall+dense_1112/StatefulPartitionedCall:output:0dense_1113_73965137dense_1113_73965139*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994z
IdentityIdentity+dense_1113/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp#^conv1d_222/StatefulPartitionedCall#^dense_1112/StatefulPartitionedCall#^dense_1113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2H
"conv1d_222/StatefulPartitionedCall"conv1d_222/StatefulPartitionedCall2H
"dense_1112/StatefulPartitionedCall"dense_1112/StatefulPartitionedCall2H
"dense_1113/StatefulPartitionedCall"dense_1113/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
¬&
¾
G__inference_model_369_layer_call_and_return_conditional_losses_73965286

inputsL
6conv1d_222_conv1d_expanddims_1_readvariableop_resource:18
*conv1d_222_biasadd_readvariableop_resource:;
)dense_1112_matmul_readvariableop_resource: 8
*dense_1112_biasadd_readvariableop_resource: ;
)dense_1113_matmul_readvariableop_resource: 8
*dense_1113_biasadd_readvariableop_resource:
identity¢!conv1d_222/BiasAdd/ReadVariableOp¢-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp¢!dense_1112/BiasAdd/ReadVariableOp¢ dense_1112/MatMul/ReadVariableOp¢!dense_1113/BiasAdd/ReadVariableOp¢ dense_1113/MatMul/ReadVariableOpk
 conv1d_222/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_222/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_222/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¨
-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_222_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0d
"conv1d_222/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_222/Conv1D/ExpandDims_1
ExpandDims5conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_222/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1Î
conv1d_222/Conv1DConv2D%conv1d_222/Conv1D/ExpandDims:output:0'conv1d_222/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_222/Conv1D/SqueezeSqueezeconv1d_222/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_222/BiasAdd/ReadVariableOpReadVariableOp*conv1d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_222/BiasAddBiasAdd"conv1d_222/Conv1D/Squeeze:output:0)conv1d_222/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_222/ReluReluconv1d_222/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_222/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_222/ReshapeReshapeconv1d_222/Relu:activations:0flatten_222/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1112/MatMul/ReadVariableOpReadVariableOp)dense_1112_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1112/MatMulMatMulflatten_222/Reshape:output:0(dense_1112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!dense_1112/BiasAdd/ReadVariableOpReadVariableOp*dense_1112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1112/BiasAddBiasAdddense_1112/MatMul:product:0)dense_1112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
dense_1112/ReluReludense_1112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_1113/MatMul/ReadVariableOpReadVariableOp)dense_1113_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1113/MatMulMatMuldense_1112/Relu:activations:0(dense_1113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1113/BiasAdd/ReadVariableOpReadVariableOp*dense_1113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1113/BiasAddBiasAdddense_1113/MatMul:product:0)dense_1113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
dense_1113/SigmoidSigmoiddense_1113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentitydense_1113/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp"^conv1d_222/BiasAdd/ReadVariableOp.^conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp"^dense_1112/BiasAdd/ReadVariableOp!^dense_1112/MatMul/ReadVariableOp"^dense_1113/BiasAdd/ReadVariableOp!^dense_1113/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2F
!conv1d_222/BiasAdd/ReadVariableOp!conv1d_222/BiasAdd/ReadVariableOp2^
-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp2F
!dense_1112/BiasAdd/ReadVariableOp!dense_1112/BiasAdd/ReadVariableOp2D
 dense_1112/MatMul/ReadVariableOp dense_1112/MatMul/ReadVariableOp2F
!dense_1113/BiasAdd/ReadVariableOp!dense_1113/BiasAdd/ReadVariableOp2D
 dense_1113/MatMul/ReadVariableOp dense_1113/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
¬&
¾
G__inference_model_369_layer_call_and_return_conditional_losses_73965254

inputsL
6conv1d_222_conv1d_expanddims_1_readvariableop_resource:18
*conv1d_222_biasadd_readvariableop_resource:;
)dense_1112_matmul_readvariableop_resource: 8
*dense_1112_biasadd_readvariableop_resource: ;
)dense_1113_matmul_readvariableop_resource: 8
*dense_1113_biasadd_readvariableop_resource:
identity¢!conv1d_222/BiasAdd/ReadVariableOp¢-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp¢!dense_1112/BiasAdd/ReadVariableOp¢ dense_1112/MatMul/ReadVariableOp¢!dense_1113/BiasAdd/ReadVariableOp¢ dense_1113/MatMul/ReadVariableOpk
 conv1d_222/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_222/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_222/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¨
-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_222_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
dtype0d
"conv1d_222/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_222/Conv1D/ExpandDims_1
ExpandDims5conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_222/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:1Î
conv1d_222/Conv1DConv2D%conv1d_222/Conv1D/ExpandDims:output:0'conv1d_222/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_222/Conv1D/SqueezeSqueezeconv1d_222/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_222/BiasAdd/ReadVariableOpReadVariableOp*conv1d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_222/BiasAddBiasAdd"conv1d_222/Conv1D/Squeeze:output:0)conv1d_222/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_222/ReluReluconv1d_222/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_222/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_222/ReshapeReshapeconv1d_222/Relu:activations:0flatten_222/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1112/MatMul/ReadVariableOpReadVariableOp)dense_1112_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1112/MatMulMatMulflatten_222/Reshape:output:0(dense_1112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!dense_1112/BiasAdd/ReadVariableOpReadVariableOp*dense_1112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1112/BiasAddBiasAdddense_1112/MatMul:product:0)dense_1112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
dense_1112/ReluReludense_1112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_1113/MatMul/ReadVariableOpReadVariableOp)dense_1113_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1113/MatMulMatMuldense_1112/Relu:activations:0(dense_1113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1113/BiasAdd/ReadVariableOpReadVariableOp*dense_1113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1113/BiasAddBiasAdddense_1113/MatMul:product:0)dense_1113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
dense_1113/SigmoidSigmoiddense_1113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentitydense_1113/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp"^conv1d_222/BiasAdd/ReadVariableOp.^conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp"^dense_1112/BiasAdd/ReadVariableOp!^dense_1112/MatMul/ReadVariableOp"^dense_1113/BiasAdd/ReadVariableOp!^dense_1113/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2F
!conv1d_222/BiasAdd/ReadVariableOp!conv1d_222/BiasAdd/ReadVariableOp2^
-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_222/Conv1D/ExpandDims_1/ReadVariableOp2F
!dense_1112/BiasAdd/ReadVariableOp!dense_1112/BiasAdd/ReadVariableOp2D
 dense_1112/MatMul/ReadVariableOp dense_1112/MatMul/ReadVariableOp2F
!dense_1113/BiasAdd/ReadVariableOp!dense_1113/BiasAdd/ReadVariableOp2D
 dense_1113/MatMul/ReadVariableOp dense_1113/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
Ï

-__inference_dense_1113_layer_call_fn_73965351

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallâ
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994o
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
	

,__inference_model_369_layer_call_fn_73965222

inputs
unknown:1
	unknown_0:
	unknown_1: 
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965091o
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
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
	

,__inference_model_369_layer_call_fn_73965205

inputs
unknown:1
	unknown_0:
	unknown_1: 
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965001o
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
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
f
ª
$__inference__traced_restore_73965545
file_prefix8
"assignvariableop_conv1d_222_kernel:10
"assignvariableop_1_conv1d_222_bias:6
$assignvariableop_2_dense_1112_kernel: 0
"assignvariableop_3_dense_1112_bias: 6
$assignvariableop_4_dense_1113_kernel: 0
"assignvariableop_5_dense_1113_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: B
,assignvariableop_13_adam_conv1d_222_kernel_m:18
*assignvariableop_14_adam_conv1d_222_bias_m:>
,assignvariableop_15_adam_dense_1112_kernel_m: 8
*assignvariableop_16_adam_dense_1112_bias_m: >
,assignvariableop_17_adam_dense_1113_kernel_m: 8
*assignvariableop_18_adam_dense_1113_bias_m:B
,assignvariableop_19_adam_conv1d_222_kernel_v:18
*assignvariableop_20_adam_conv1d_222_bias_v:>
,assignvariableop_21_adam_dense_1112_kernel_v: 8
*assignvariableop_22_adam_dense_1112_bias_v: >
,assignvariableop_23_adam_dense_1113_kernel_v: 8
*assignvariableop_24_adam_dense_1113_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv1d_222_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv1d_222_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_1112_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_1112_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_1113_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_1113_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_conv1d_222_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_conv1d_222_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_1112_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_1112_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_1113_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_1113_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv1d_222_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv1d_222_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_1112_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_1112_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_1113_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_1113_bias_vIdentity_24:output:0"/device:CPU:0*
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
	

,__inference_model_369_layer_call_fn_73965016
	input_370
unknown:1
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	input_370unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965001o
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
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
#
_user_specified_name	input_370
Ì

H__inference_conv1d_222_layer_call_and_return_conditional_losses_73965311

inputsA
+conv1d_expanddims_1_readvariableop_resource:1-
biasadd_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ1
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
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
:1­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
è
·
G__inference_model_369_layer_call_and_return_conditional_losses_73965091

inputs)
conv1d_222_73965074:1!
conv1d_222_73965076:%
dense_1112_73965080: !
dense_1112_73965082: %
dense_1113_73965085: !
dense_1113_73965087:
identity¢"conv1d_222/StatefulPartitionedCall¢"dense_1112/StatefulPartitionedCall¢"dense_1113/StatefulPartitionedCall
"conv1d_222/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_222_73965074conv1d_222_73965076*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952ê
flatten_222/PartitionedCallPartitionedCall+conv1d_222/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964¡
"dense_1112/StatefulPartitionedCallStatefulPartitionedCall$flatten_222/PartitionedCall:output:0dense_1112_73965080dense_1112_73965082*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977¨
"dense_1113/StatefulPartitionedCallStatefulPartitionedCall+dense_1112/StatefulPartitionedCall:output:0dense_1113_73965085dense_1113_73965087*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994z
IdentityIdentity+dense_1113/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp#^conv1d_222/StatefulPartitionedCall#^dense_1112/StatefulPartitionedCall#^dense_1113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2H
"conv1d_222/StatefulPartitionedCall"conv1d_222/StatefulPartitionedCall2H
"dense_1112/StatefulPartitionedCall"dense_1112/StatefulPartitionedCall2H
"dense_1113/StatefulPartitionedCall"dense_1113/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs


ù
H__inference_dense_1113_layer_call_and_return_conditional_losses_73965362

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

ù
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994

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
Ì

H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952

inputsA
+conv1d_expanddims_1_readvariableop_resource:1-
biasadd_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ1
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:1*
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
:1­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs


ù
H__inference_dense_1112_layer_call_and_return_conditional_losses_73965342

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
·
G__inference_model_369_layer_call_and_return_conditional_losses_73965001

inputs)
conv1d_222_73964953:1!
conv1d_222_73964955:%
dense_1112_73964978: !
dense_1112_73964980: %
dense_1113_73964995: !
dense_1113_73964997:
identity¢"conv1d_222/StatefulPartitionedCall¢"dense_1112/StatefulPartitionedCall¢"dense_1113/StatefulPartitionedCall
"conv1d_222/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_222_73964953conv1d_222_73964955*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73964952ê
flatten_222/PartitionedCallPartitionedCall+conv1d_222/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_222_layer_call_and_return_conditional_losses_73964964¡
"dense_1112/StatefulPartitionedCallStatefulPartitionedCall$flatten_222/PartitionedCall:output:0dense_1112_73964978dense_1112_73964980*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977¨
"dense_1113/StatefulPartitionedCallStatefulPartitionedCall+dense_1112/StatefulPartitionedCall:output:0dense_1113_73964995dense_1113_73964997*
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
GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1113_layer_call_and_return_conditional_losses_73964994z
IdentityIdentity+dense_1113/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp#^conv1d_222/StatefulPartitionedCall#^dense_1112/StatefulPartitionedCall#^dense_1113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ1: : : : : : 2H
"conv1d_222/StatefulPartitionedCall"conv1d_222/StatefulPartitionedCall2H
"dense_1112/StatefulPartitionedCall"dense_1112/StatefulPartitionedCall2H
"dense_1113/StatefulPartitionedCall"dense_1113/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
ò9
à

!__inference__traced_save_73965460
file_prefix0
,savev2_conv1d_222_kernel_read_readvariableop.
*savev2_conv1d_222_bias_read_readvariableop0
,savev2_dense_1112_kernel_read_readvariableop.
*savev2_dense_1112_bias_read_readvariableop0
,savev2_dense_1113_kernel_read_readvariableop.
*savev2_dense_1113_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv1d_222_kernel_m_read_readvariableop5
1savev2_adam_conv1d_222_bias_m_read_readvariableop7
3savev2_adam_dense_1112_kernel_m_read_readvariableop5
1savev2_adam_dense_1112_bias_m_read_readvariableop7
3savev2_adam_dense_1113_kernel_m_read_readvariableop5
1savev2_adam_dense_1113_bias_m_read_readvariableop7
3savev2_adam_conv1d_222_kernel_v_read_readvariableop5
1savev2_adam_conv1d_222_bias_v_read_readvariableop7
3savev2_adam_dense_1112_kernel_v_read_readvariableop5
1savev2_adam_dense_1112_bias_v_read_readvariableop7
3savev2_adam_dense_1113_kernel_v_read_readvariableop5
1savev2_adam_dense_1113_bias_v_read_readvariableop
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
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B ×

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv1d_222_kernel_read_readvariableop*savev2_conv1d_222_bias_read_readvariableop,savev2_dense_1112_kernel_read_readvariableop*savev2_dense_1112_bias_read_readvariableop,savev2_dense_1113_kernel_read_readvariableop*savev2_dense_1113_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv1d_222_kernel_m_read_readvariableop1savev2_adam_conv1d_222_bias_m_read_readvariableop3savev2_adam_dense_1112_kernel_m_read_readvariableop1savev2_adam_dense_1112_bias_m_read_readvariableop3savev2_adam_dense_1113_kernel_m_read_readvariableop1savev2_adam_dense_1113_bias_m_read_readvariableop3savev2_adam_conv1d_222_kernel_v_read_readvariableop1savev2_adam_conv1d_222_bias_v_read_readvariableop3savev2_adam_dense_1112_kernel_v_read_readvariableop1savev2_adam_dense_1112_bias_v_read_readvariableop3savev2_adam_dense_1113_kernel_v_read_readvariableop1savev2_adam_dense_1113_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
®: :1:: : : :: : : : : : : :1:: : : ::1:: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:1: 

_output_shapes
::$ 

_output_shapes

: : 
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
:1: 

_output_shapes
::$ 

_output_shapes

: : 
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
:1: 

_output_shapes
::$ 

_output_shapes

: : 
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


ù
H__inference_dense_1112_layer_call_and_return_conditional_losses_73964977

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
C
	input_3706
serving_default_input_370:0ÿÿÿÿÿÿÿÿÿ1>

dense_11130
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:º
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
,__inference_model_369_layer_call_fn_73965016
,__inference_model_369_layer_call_fn_73965205
,__inference_model_369_layer_call_fn_73965222
,__inference_model_369_layer_call_fn_73965123¿
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965254
G__inference_model_369_layer_call_and_return_conditional_losses_73965286
G__inference_model_369_layer_call_and_return_conditional_losses_73965143
G__inference_model_369_layer_call_and_return_conditional_losses_73965163¿
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
#__inference__wrapped_model_73964929	input_370"
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
-__inference_conv1d_222_layer_call_fn_73965295¢
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
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73965311¢
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
':%12conv1d_222/kernel
:2conv1d_222/bias
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
.__inference_flatten_222_layer_call_fn_73965316¢
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
I__inference_flatten_222_layer_call_and_return_conditional_losses_73965322¢
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
ñ
Ttrace_02Ô
-__inference_dense_1112_layer_call_fn_73965331¢
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

Utrace_02ï
H__inference_dense_1112_layer_call_and_return_conditional_losses_73965342¢
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
#:! 2dense_1112/kernel
: 2dense_1112/bias
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
ñ
[trace_02Ô
-__inference_dense_1113_layer_call_fn_73965351¢
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

\trace_02ï
H__inference_dense_1113_layer_call_and_return_conditional_losses_73965362¢
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
#:! 2dense_1113/kernel
:2dense_1113/bias
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
,__inference_model_369_layer_call_fn_73965016	input_370"¿
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
,__inference_model_369_layer_call_fn_73965205inputs"¿
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
,__inference_model_369_layer_call_fn_73965222inputs"¿
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
,__inference_model_369_layer_call_fn_73965123	input_370"¿
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965254inputs"¿
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965286inputs"¿
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965143	input_370"¿
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
G__inference_model_369_layer_call_and_return_conditional_losses_73965163	input_370"¿
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
&__inference_signature_wrapper_73965188	input_370"
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
-__inference_conv1d_222_layer_call_fn_73965295inputs"¢
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
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73965311inputs"¢
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
.__inference_flatten_222_layer_call_fn_73965316inputs"¢
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
I__inference_flatten_222_layer_call_and_return_conditional_losses_73965322inputs"¢
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
-__inference_dense_1112_layer_call_fn_73965331inputs"¢
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
H__inference_dense_1112_layer_call_and_return_conditional_losses_73965342inputs"¢
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
-__inference_dense_1113_layer_call_fn_73965351inputs"¢
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
H__inference_dense_1113_layer_call_and_return_conditional_losses_73965362inputs"¢
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
,:*12Adam/conv1d_222/kernel/m
": 2Adam/conv1d_222/bias/m
(:& 2Adam/dense_1112/kernel/m
":  2Adam/dense_1112/bias/m
(:& 2Adam/dense_1113/kernel/m
": 2Adam/dense_1113/bias/m
,:*12Adam/conv1d_222/kernel/v
": 2Adam/conv1d_222/bias/v
(:& 2Adam/dense_1112/kernel/v
":  2Adam/dense_1112/bias/v
(:& 2Adam/dense_1113/kernel/v
": 2Adam/dense_1113/bias/v 
#__inference__wrapped_model_73964929y$%,-6¢3
,¢)
'$
	input_370ÿÿÿÿÿÿÿÿÿ1
ª "7ª4
2

dense_1113$!

dense_1113ÿÿÿÿÿÿÿÿÿ°
H__inference_conv1d_222_layer_call_and_return_conditional_losses_73965311d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ1
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_conv1d_222_layer_call_fn_73965295W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ1
ª "ÿÿÿÿÿÿÿÿÿ¨
H__inference_dense_1112_layer_call_and_return_conditional_losses_73965342\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
-__inference_dense_1112_layer_call_fn_73965331O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¨
H__inference_dense_1113_layer_call_and_return_conditional_losses_73965362\,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_1113_layer_call_fn_73965351O,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ©
I__inference_flatten_222_layer_call_and_return_conditional_losses_73965322\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_flatten_222_layer_call_fn_73965316O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿº
G__inference_model_369_layer_call_and_return_conditional_losses_73965143o$%,->¢;
4¢1
'$
	input_370ÿÿÿÿÿÿÿÿÿ1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
G__inference_model_369_layer_call_and_return_conditional_losses_73965163o$%,->¢;
4¢1
'$
	input_370ÿÿÿÿÿÿÿÿÿ1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_369_layer_call_and_return_conditional_losses_73965254l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_model_369_layer_call_and_return_conditional_losses_73965286l$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_model_369_layer_call_fn_73965016b$%,->¢;
4¢1
'$
	input_370ÿÿÿÿÿÿÿÿÿ1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_369_layer_call_fn_73965123b$%,->¢;
4¢1
'$
	input_370ÿÿÿÿÿÿÿÿÿ1
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_369_layer_call_fn_73965205_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_369_layer_call_fn_73965222_$%,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ1
p

 
ª "ÿÿÿÿÿÿÿÿÿ±
&__inference_signature_wrapper_73965188$%,-C¢@
¢ 
9ª6
4
	input_370'$
	input_370ÿÿÿÿÿÿÿÿÿ1"7ª4
2

dense_1113$!

dense_1113ÿÿÿÿÿÿÿÿÿ