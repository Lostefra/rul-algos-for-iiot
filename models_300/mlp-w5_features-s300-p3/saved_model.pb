??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8??
?
Adam/dense_537/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_537/bias/v
{
)Adam/dense_537/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_537/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_537/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_537/kernel/v
?
+Adam/dense_537/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_537/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_536/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_536/bias/v
{
)Adam/dense_536/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_536/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_536/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_536/kernel/v
?
+Adam/dense_536/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_536/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_535/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_535/bias/v
{
)Adam/dense_535/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_535/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_535/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_535/kernel/v
?
+Adam/dense_535/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_535/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_534/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_534/bias/v
|
)Adam/dense_534/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_534/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_534/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_534/kernel/v
?
+Adam/dense_534/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_534/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_537/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_537/bias/m
{
)Adam/dense_537/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_537/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_537/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_537/kernel/m
?
+Adam/dense_537/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_537/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_536/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_536/bias/m
{
)Adam/dense_536/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_536/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_536/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_536/kernel/m
?
+Adam/dense_536/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_536/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_535/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_535/bias/m
{
)Adam/dense_535/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_535/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_535/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_535/kernel/m
?
+Adam/dense_535/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_535/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_534/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_534/bias/m
|
)Adam/dense_534/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_534/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_534/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_534/kernel/m
?
+Adam/dense_534/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_534/kernel/m*
_output_shapes
:	?*
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
dense_537/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_537/bias
m
"dense_537/bias/Read/ReadVariableOpReadVariableOpdense_537/bias*
_output_shapes
:*
dtype0
|
dense_537/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_537/kernel
u
$dense_537/kernel/Read/ReadVariableOpReadVariableOpdense_537/kernel*
_output_shapes

: *
dtype0
t
dense_536/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_536/bias
m
"dense_536/bias/Read/ReadVariableOpReadVariableOpdense_536/bias*
_output_shapes
: *
dtype0
|
dense_536/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *!
shared_namedense_536/kernel
u
$dense_536/kernel/Read/ReadVariableOpReadVariableOpdense_536/kernel*
_output_shapes

:@ *
dtype0
t
dense_535/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_535/bias
m
"dense_535/bias/Read/ReadVariableOpReadVariableOpdense_535/bias*
_output_shapes
:@*
dtype0
}
dense_535/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_535/kernel
v
$dense_535/kernel/Read/ReadVariableOpReadVariableOpdense_535/kernel*
_output_shapes
:	?@*
dtype0
u
dense_534/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_534/bias
n
"dense_534/bias/Read/ReadVariableOpReadVariableOpdense_534/bias*
_output_shapes	
:?*
dtype0
}
dense_534/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_534/kernel
v
$dense_534/kernel/Read/ReadVariableOpReadVariableOpdense_534/kernel*
_output_shapes
:	?*
dtype0
|
serving_default_input_127Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_127dense_534/kerneldense_534/biasdense_535/kerneldense_535/biasdense_536/kerneldense_536/biasdense_537/kerneldense_537/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? */
f*R(
&__inference_signature_wrapper_14369975

NoOpNoOp
?7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?7
value?7B?7 B?7
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
<
0
1
2
3
%4
&5
-6
.7*
<
0
1
2
3
%4
&5
-6
.7*
* 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
4trace_0
5trace_1
6trace_2
7trace_3* 
6
8trace_0
9trace_1
:trace_2
;trace_3* 
* 
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratemcmdmemf%mg&mh-mi.mjvkvlvmvn%vo&vp-vq.vr*

Aserving_default* 

0
1*

0
1*
* 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Gtrace_0* 

Htrace_0* 
`Z
VARIABLE_VALUEdense_534/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_534/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
`Z
VARIABLE_VALUEdense_535/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_535/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Utrace_0* 

Vtrace_0* 
`Z
VARIABLE_VALUEdense_536/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_536/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
`Z
VARIABLE_VALUEdense_537/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_537/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

^0*
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
_	variables
`	keras_api
	atotal
	bcount*

a0
b1*

_	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_534/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_534/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_535/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_535/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_536/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_536/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_537/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_537/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_534/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_534/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_535/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_535/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_536/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_536/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_537/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_537/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_534/kernel/Read/ReadVariableOp"dense_534/bias/Read/ReadVariableOp$dense_535/kernel/Read/ReadVariableOp"dense_535/bias/Read/ReadVariableOp$dense_536/kernel/Read/ReadVariableOp"dense_536/bias/Read/ReadVariableOp$dense_537/kernel/Read/ReadVariableOp"dense_537/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_534/kernel/m/Read/ReadVariableOp)Adam/dense_534/bias/m/Read/ReadVariableOp+Adam/dense_535/kernel/m/Read/ReadVariableOp)Adam/dense_535/bias/m/Read/ReadVariableOp+Adam/dense_536/kernel/m/Read/ReadVariableOp)Adam/dense_536/bias/m/Read/ReadVariableOp+Adam/dense_537/kernel/m/Read/ReadVariableOp)Adam/dense_537/bias/m/Read/ReadVariableOp+Adam/dense_534/kernel/v/Read/ReadVariableOp)Adam/dense_534/bias/v/Read/ReadVariableOp+Adam/dense_535/kernel/v/Read/ReadVariableOp)Adam/dense_535/bias/v/Read/ReadVariableOp+Adam/dense_536/kernel/v/Read/ReadVariableOp)Adam/dense_536/bias/v/Read/ReadVariableOp+Adam/dense_537/kernel/v/Read/ReadVariableOp)Adam/dense_537/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
GPU2*0,1J 8? **
f%R#
!__inference__traced_save_14370277
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_534/kerneldense_534/biasdense_535/kerneldense_535/biasdense_536/kerneldense_536/biasdense_537/kerneldense_537/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_534/kernel/mAdam/dense_534/bias/mAdam/dense_535/kernel/mAdam/dense_535/bias/mAdam/dense_536/kernel/mAdam/dense_536/bias/mAdam/dense_537/kernel/mAdam/dense_537/bias/mAdam/dense_534/kernel/vAdam/dense_534/bias/vAdam/dense_535/kernel/vAdam/dense_535/bias/vAdam/dense_536/kernel/vAdam/dense_536/bias/vAdam/dense_537/kernel/vAdam/dense_537/bias/v*+
Tin$
"2 *
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
GPU2*0,1J 8? *-
f(R&
$__inference__traced_restore_14370380޷
?

?
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_dense_537_layer_call_and_return_conditional_losses_14370161

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_model_126_layer_call_and_return_conditional_losses_14369752

inputs%
dense_534_14369695:	?!
dense_534_14369697:	?%
dense_535_14369712:	?@ 
dense_535_14369714:@$
dense_536_14369729:@  
dense_536_14369731: $
dense_537_14369746:  
dense_537_14369748:
identity??!dense_534/StatefulPartitionedCall?!dense_535/StatefulPartitionedCall?!dense_536/StatefulPartitionedCall?!dense_537/StatefulPartitionedCall?
!dense_534/StatefulPartitionedCallStatefulPartitionedCallinputsdense_534_14369695dense_534_14369697*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694?
!dense_535/StatefulPartitionedCallStatefulPartitionedCall*dense_534/StatefulPartitionedCall:output:0dense_535_14369712dense_535_14369714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711?
!dense_536/StatefulPartitionedCallStatefulPartitionedCall*dense_535/StatefulPartitionedCall:output:0dense_536_14369729dense_536_14369731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728?
!dense_537/StatefulPartitionedCallStatefulPartitionedCall*dense_536/StatefulPartitionedCall:output:0dense_537_14369746dense_537_14369748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745y
IdentityIdentity*dense_537/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_534/StatefulPartitionedCall"^dense_535/StatefulPartitionedCall"^dense_536/StatefulPartitionedCall"^dense_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_534/StatefulPartitionedCall!dense_534/StatefulPartitionedCall2F
!dense_535/StatefulPartitionedCall!dense_535/StatefulPartitionedCall2F
!dense_536/StatefulPartitionedCall!dense_536/StatefulPartitionedCall2F
!dense_537/StatefulPartitionedCall!dense_537/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
G__inference_model_126_layer_call_and_return_conditional_losses_14370049

inputs;
(dense_534_matmul_readvariableop_resource:	?8
)dense_534_biasadd_readvariableop_resource:	?;
(dense_535_matmul_readvariableop_resource:	?@7
)dense_535_biasadd_readvariableop_resource:@:
(dense_536_matmul_readvariableop_resource:@ 7
)dense_536_biasadd_readvariableop_resource: :
(dense_537_matmul_readvariableop_resource: 7
)dense_537_biasadd_readvariableop_resource:
identity?? dense_534/BiasAdd/ReadVariableOp?dense_534/MatMul/ReadVariableOp? dense_535/BiasAdd/ReadVariableOp?dense_535/MatMul/ReadVariableOp? dense_536/BiasAdd/ReadVariableOp?dense_536/MatMul/ReadVariableOp? dense_537/BiasAdd/ReadVariableOp?dense_537/MatMul/ReadVariableOp?
dense_534/MatMul/ReadVariableOpReadVariableOp(dense_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0~
dense_534/MatMulMatMulinputs'dense_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_534/BiasAdd/ReadVariableOpReadVariableOp)dense_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_534/BiasAddBiasAdddense_534/MatMul:product:0(dense_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_534/ReluReludense_534/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_535/MatMul/ReadVariableOpReadVariableOp(dense_535_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_535/MatMulMatMuldense_534/Relu:activations:0'dense_535/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_535/BiasAdd/ReadVariableOpReadVariableOp)dense_535_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_535/BiasAddBiasAdddense_535/MatMul:product:0(dense_535/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_535/ReluReludense_535/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_536/MatMul/ReadVariableOpReadVariableOp(dense_536_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_536/MatMulMatMuldense_535/Relu:activations:0'dense_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
 dense_536/BiasAdd/ReadVariableOpReadVariableOp)dense_536_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_536/BiasAddBiasAdddense_536/MatMul:product:0(dense_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
dense_536/ReluReludense_536/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_537/MatMul/ReadVariableOpReadVariableOp(dense_537_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_537/MatMulMatMuldense_536/Relu:activations:0'dense_537/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_537/BiasAdd/ReadVariableOpReadVariableOp)dense_537_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_537/BiasAddBiasAdddense_537/MatMul:product:0(dense_537/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_537/SigmoidSigmoiddense_537/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_537/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_534/BiasAdd/ReadVariableOp ^dense_534/MatMul/ReadVariableOp!^dense_535/BiasAdd/ReadVariableOp ^dense_535/MatMul/ReadVariableOp!^dense_536/BiasAdd/ReadVariableOp ^dense_536/MatMul/ReadVariableOp!^dense_537/BiasAdd/ReadVariableOp ^dense_537/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_534/BiasAdd/ReadVariableOp dense_534/BiasAdd/ReadVariableOp2B
dense_534/MatMul/ReadVariableOpdense_534/MatMul/ReadVariableOp2D
 dense_535/BiasAdd/ReadVariableOp dense_535/BiasAdd/ReadVariableOp2B
dense_535/MatMul/ReadVariableOpdense_535/MatMul/ReadVariableOp2D
 dense_536/BiasAdd/ReadVariableOp dense_536/BiasAdd/ReadVariableOp2B
dense_536/MatMul/ReadVariableOpdense_536/MatMul/ReadVariableOp2D
 dense_537/BiasAdd/ReadVariableOp dense_537/BiasAdd/ReadVariableOp2B
dense_537/MatMul/ReadVariableOpdense_537/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
G__inference_model_126_layer_call_and_return_conditional_losses_14370081

inputs;
(dense_534_matmul_readvariableop_resource:	?8
)dense_534_biasadd_readvariableop_resource:	?;
(dense_535_matmul_readvariableop_resource:	?@7
)dense_535_biasadd_readvariableop_resource:@:
(dense_536_matmul_readvariableop_resource:@ 7
)dense_536_biasadd_readvariableop_resource: :
(dense_537_matmul_readvariableop_resource: 7
)dense_537_biasadd_readvariableop_resource:
identity?? dense_534/BiasAdd/ReadVariableOp?dense_534/MatMul/ReadVariableOp? dense_535/BiasAdd/ReadVariableOp?dense_535/MatMul/ReadVariableOp? dense_536/BiasAdd/ReadVariableOp?dense_536/MatMul/ReadVariableOp? dense_537/BiasAdd/ReadVariableOp?dense_537/MatMul/ReadVariableOp?
dense_534/MatMul/ReadVariableOpReadVariableOp(dense_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0~
dense_534/MatMulMatMulinputs'dense_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_534/BiasAdd/ReadVariableOpReadVariableOp)dense_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_534/BiasAddBiasAdddense_534/MatMul:product:0(dense_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_534/ReluReludense_534/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_535/MatMul/ReadVariableOpReadVariableOp(dense_535_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_535/MatMulMatMuldense_534/Relu:activations:0'dense_535/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_535/BiasAdd/ReadVariableOpReadVariableOp)dense_535_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_535/BiasAddBiasAdddense_535/MatMul:product:0(dense_535/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_535/ReluReludense_535/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_536/MatMul/ReadVariableOpReadVariableOp(dense_536_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_536/MatMulMatMuldense_535/Relu:activations:0'dense_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
 dense_536/BiasAdd/ReadVariableOpReadVariableOp)dense_536_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_536/BiasAddBiasAdddense_536/MatMul:product:0(dense_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
dense_536/ReluReludense_536/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_537/MatMul/ReadVariableOpReadVariableOp(dense_537_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_537/MatMulMatMuldense_536/Relu:activations:0'dense_537/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_537/BiasAdd/ReadVariableOpReadVariableOp)dense_537_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_537/BiasAddBiasAdddense_537/MatMul:product:0(dense_537/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_537/SigmoidSigmoiddense_537/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_537/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_534/BiasAdd/ReadVariableOp ^dense_534/MatMul/ReadVariableOp!^dense_535/BiasAdd/ReadVariableOp ^dense_535/MatMul/ReadVariableOp!^dense_536/BiasAdd/ReadVariableOp ^dense_536/MatMul/ReadVariableOp!^dense_537/BiasAdd/ReadVariableOp ^dense_537/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_534/BiasAdd/ReadVariableOp dense_534/BiasAdd/ReadVariableOp2B
dense_534/MatMul/ReadVariableOpdense_534/MatMul/ReadVariableOp2D
 dense_535/BiasAdd/ReadVariableOp dense_535/BiasAdd/ReadVariableOp2B
dense_535/MatMul/ReadVariableOpdense_535/MatMul/ReadVariableOp2D
 dense_536/BiasAdd/ReadVariableOp dense_536/BiasAdd/ReadVariableOp2B
dense_536/MatMul/ReadVariableOpdense_536/MatMul/ReadVariableOp2D
 dense_537/BiasAdd/ReadVariableOp dense_537/BiasAdd/ReadVariableOp2B
dense_537/MatMul/ReadVariableOpdense_537/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_dense_537_layer_call_fn_14370150

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
G__inference_dense_536_layer_call_and_return_conditional_losses_14370141

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
,__inference_model_126_layer_call_fn_14369898
	input_127
unknown:	?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_127unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_model_126_layer_call_and_return_conditional_losses_14369858o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?}
?
$__inference__traced_restore_14370380
file_prefix4
!assignvariableop_dense_534_kernel:	?0
!assignvariableop_1_dense_534_bias:	?6
#assignvariableop_2_dense_535_kernel:	?@/
!assignvariableop_3_dense_535_bias:@5
#assignvariableop_4_dense_536_kernel:@ /
!assignvariableop_5_dense_536_bias: 5
#assignvariableop_6_dense_537_kernel: /
!assignvariableop_7_dense_537_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: >
+assignvariableop_15_adam_dense_534_kernel_m:	?8
)assignvariableop_16_adam_dense_534_bias_m:	?>
+assignvariableop_17_adam_dense_535_kernel_m:	?@7
)assignvariableop_18_adam_dense_535_bias_m:@=
+assignvariableop_19_adam_dense_536_kernel_m:@ 7
)assignvariableop_20_adam_dense_536_bias_m: =
+assignvariableop_21_adam_dense_537_kernel_m: 7
)assignvariableop_22_adam_dense_537_bias_m:>
+assignvariableop_23_adam_dense_534_kernel_v:	?8
)assignvariableop_24_adam_dense_534_bias_v:	?>
+assignvariableop_25_adam_dense_535_kernel_v:	?@7
)assignvariableop_26_adam_dense_535_bias_v:@=
+assignvariableop_27_adam_dense_536_kernel_v:@ 7
)assignvariableop_28_adam_dense_536_bias_v: =
+assignvariableop_29_adam_dense_537_kernel_v: 7
)assignvariableop_30_adam_dense_537_bias_v:
identity_32??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_dense_534_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_534_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_535_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_535_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_536_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_536_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_537_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_537_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_534_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_534_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_535_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_535_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_536_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_536_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_537_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_537_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_534_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_534_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_535_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_535_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_536_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_536_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_537_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_537_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
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
?
?
,__inference_dense_535_layer_call_fn_14370110

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_model_126_layer_call_and_return_conditional_losses_14369858

inputs%
dense_534_14369837:	?!
dense_534_14369839:	?%
dense_535_14369842:	?@ 
dense_535_14369844:@$
dense_536_14369847:@  
dense_536_14369849: $
dense_537_14369852:  
dense_537_14369854:
identity??!dense_534/StatefulPartitionedCall?!dense_535/StatefulPartitionedCall?!dense_536/StatefulPartitionedCall?!dense_537/StatefulPartitionedCall?
!dense_534/StatefulPartitionedCallStatefulPartitionedCallinputsdense_534_14369837dense_534_14369839*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694?
!dense_535/StatefulPartitionedCallStatefulPartitionedCall*dense_534/StatefulPartitionedCall:output:0dense_535_14369842dense_535_14369844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711?
!dense_536/StatefulPartitionedCallStatefulPartitionedCall*dense_535/StatefulPartitionedCall:output:0dense_536_14369847dense_536_14369849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728?
!dense_537/StatefulPartitionedCallStatefulPartitionedCall*dense_536/StatefulPartitionedCall:output:0dense_537_14369852dense_537_14369854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745y
IdentityIdentity*dense_537/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_534/StatefulPartitionedCall"^dense_535/StatefulPartitionedCall"^dense_536/StatefulPartitionedCall"^dense_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_534/StatefulPartitionedCall!dense_534/StatefulPartitionedCall2F
!dense_535/StatefulPartitionedCall!dense_535/StatefulPartitionedCall2F
!dense_536/StatefulPartitionedCall!dense_536/StatefulPartitionedCall2F
!dense_537/StatefulPartitionedCall!dense_537/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
#__inference__wrapped_model_14369676
	input_127E
2model_126_dense_534_matmul_readvariableop_resource:	?B
3model_126_dense_534_biasadd_readvariableop_resource:	?E
2model_126_dense_535_matmul_readvariableop_resource:	?@A
3model_126_dense_535_biasadd_readvariableop_resource:@D
2model_126_dense_536_matmul_readvariableop_resource:@ A
3model_126_dense_536_biasadd_readvariableop_resource: D
2model_126_dense_537_matmul_readvariableop_resource: A
3model_126_dense_537_biasadd_readvariableop_resource:
identity??*model_126/dense_534/BiasAdd/ReadVariableOp?)model_126/dense_534/MatMul/ReadVariableOp?*model_126/dense_535/BiasAdd/ReadVariableOp?)model_126/dense_535/MatMul/ReadVariableOp?*model_126/dense_536/BiasAdd/ReadVariableOp?)model_126/dense_536/MatMul/ReadVariableOp?*model_126/dense_537/BiasAdd/ReadVariableOp?)model_126/dense_537/MatMul/ReadVariableOp?
)model_126/dense_534/MatMul/ReadVariableOpReadVariableOp2model_126_dense_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model_126/dense_534/MatMulMatMul	input_1271model_126/dense_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*model_126/dense_534/BiasAdd/ReadVariableOpReadVariableOp3model_126_dense_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_126/dense_534/BiasAddBiasAdd$model_126/dense_534/MatMul:product:02model_126/dense_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
model_126/dense_534/ReluRelu$model_126/dense_534/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
)model_126/dense_535/MatMul/ReadVariableOpReadVariableOp2model_126_dense_535_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
model_126/dense_535/MatMulMatMul&model_126/dense_534/Relu:activations:01model_126/dense_535/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
*model_126/dense_535/BiasAdd/ReadVariableOpReadVariableOp3model_126_dense_535_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_126/dense_535/BiasAddBiasAdd$model_126/dense_535/MatMul:product:02model_126/dense_535/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
model_126/dense_535/ReluRelu$model_126/dense_535/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
)model_126/dense_536/MatMul/ReadVariableOpReadVariableOp2model_126_dense_536_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
model_126/dense_536/MatMulMatMul&model_126/dense_535/Relu:activations:01model_126/dense_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
*model_126/dense_536/BiasAdd/ReadVariableOpReadVariableOp3model_126_dense_536_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_126/dense_536/BiasAddBiasAdd$model_126/dense_536/MatMul:product:02model_126/dense_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
model_126/dense_536/ReluRelu$model_126/dense_536/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
)model_126/dense_537/MatMul/ReadVariableOpReadVariableOp2model_126_dense_537_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_126/dense_537/MatMulMatMul&model_126/dense_536/Relu:activations:01model_126/dense_537/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*model_126/dense_537/BiasAdd/ReadVariableOpReadVariableOp3model_126_dense_537_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_126/dense_537/BiasAddBiasAdd$model_126/dense_537/MatMul:product:02model_126/dense_537/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
model_126/dense_537/SigmoidSigmoid$model_126/dense_537/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentitymodel_126/dense_537/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp+^model_126/dense_534/BiasAdd/ReadVariableOp*^model_126/dense_534/MatMul/ReadVariableOp+^model_126/dense_535/BiasAdd/ReadVariableOp*^model_126/dense_535/MatMul/ReadVariableOp+^model_126/dense_536/BiasAdd/ReadVariableOp*^model_126/dense_536/MatMul/ReadVariableOp+^model_126/dense_537/BiasAdd/ReadVariableOp*^model_126/dense_537/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2X
*model_126/dense_534/BiasAdd/ReadVariableOp*model_126/dense_534/BiasAdd/ReadVariableOp2V
)model_126/dense_534/MatMul/ReadVariableOp)model_126/dense_534/MatMul/ReadVariableOp2X
*model_126/dense_535/BiasAdd/ReadVariableOp*model_126/dense_535/BiasAdd/ReadVariableOp2V
)model_126/dense_535/MatMul/ReadVariableOp)model_126/dense_535/MatMul/ReadVariableOp2X
*model_126/dense_536/BiasAdd/ReadVariableOp*model_126/dense_536/BiasAdd/ReadVariableOp2V
)model_126/dense_536/MatMul/ReadVariableOp)model_126/dense_536/MatMul/ReadVariableOp2X
*model_126/dense_537/BiasAdd/ReadVariableOp*model_126/dense_537/BiasAdd/ReadVariableOp2V
)model_126/dense_537/MatMul/ReadVariableOp)model_126/dense_537/MatMul/ReadVariableOp:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?
?
,__inference_dense_534_layer_call_fn_14370090

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_model_126_layer_call_and_return_conditional_losses_14369946
	input_127%
dense_534_14369925:	?!
dense_534_14369927:	?%
dense_535_14369930:	?@ 
dense_535_14369932:@$
dense_536_14369935:@  
dense_536_14369937: $
dense_537_14369940:  
dense_537_14369942:
identity??!dense_534/StatefulPartitionedCall?!dense_535/StatefulPartitionedCall?!dense_536/StatefulPartitionedCall?!dense_537/StatefulPartitionedCall?
!dense_534/StatefulPartitionedCallStatefulPartitionedCall	input_127dense_534_14369925dense_534_14369927*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694?
!dense_535/StatefulPartitionedCallStatefulPartitionedCall*dense_534/StatefulPartitionedCall:output:0dense_535_14369930dense_535_14369932*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711?
!dense_536/StatefulPartitionedCallStatefulPartitionedCall*dense_535/StatefulPartitionedCall:output:0dense_536_14369935dense_536_14369937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728?
!dense_537/StatefulPartitionedCallStatefulPartitionedCall*dense_536/StatefulPartitionedCall:output:0dense_537_14369940dense_537_14369942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745y
IdentityIdentity*dense_537/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_534/StatefulPartitionedCall"^dense_535/StatefulPartitionedCall"^dense_536/StatefulPartitionedCall"^dense_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_534/StatefulPartitionedCall!dense_534/StatefulPartitionedCall2F
!dense_535/StatefulPartitionedCall!dense_535/StatefulPartitionedCall2F
!dense_536/StatefulPartitionedCall!dense_536/StatefulPartitionedCall2F
!dense_537/StatefulPartitionedCall!dense_537/StatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?
?
G__inference_model_126_layer_call_and_return_conditional_losses_14369922
	input_127%
dense_534_14369901:	?!
dense_534_14369903:	?%
dense_535_14369906:	?@ 
dense_535_14369908:@$
dense_536_14369911:@  
dense_536_14369913: $
dense_537_14369916:  
dense_537_14369918:
identity??!dense_534/StatefulPartitionedCall?!dense_535/StatefulPartitionedCall?!dense_536/StatefulPartitionedCall?!dense_537/StatefulPartitionedCall?
!dense_534/StatefulPartitionedCallStatefulPartitionedCall	input_127dense_534_14369901dense_534_14369903*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_534_layer_call_and_return_conditional_losses_14369694?
!dense_535/StatefulPartitionedCallStatefulPartitionedCall*dense_534/StatefulPartitionedCall:output:0dense_535_14369906dense_535_14369908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711?
!dense_536/StatefulPartitionedCallStatefulPartitionedCall*dense_535/StatefulPartitionedCall:output:0dense_536_14369911dense_536_14369913*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728?
!dense_537/StatefulPartitionedCallStatefulPartitionedCall*dense_536/StatefulPartitionedCall:output:0dense_537_14369916dense_537_14369918*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745y
IdentityIdentity*dense_537/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_534/StatefulPartitionedCall"^dense_535/StatefulPartitionedCall"^dense_536/StatefulPartitionedCall"^dense_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_534/StatefulPartitionedCall!dense_534/StatefulPartitionedCall2F
!dense_535/StatefulPartitionedCall!dense_535/StatefulPartitionedCall2F
!dense_536/StatefulPartitionedCall!dense_536/StatefulPartitionedCall2F
!dense_537/StatefulPartitionedCall!dense_537/StatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?
?
,__inference_dense_536_layer_call_fn_14370130

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?C
?
!__inference__traced_save_14370277
file_prefix/
+savev2_dense_534_kernel_read_readvariableop-
)savev2_dense_534_bias_read_readvariableop/
+savev2_dense_535_kernel_read_readvariableop-
)savev2_dense_535_bias_read_readvariableop/
+savev2_dense_536_kernel_read_readvariableop-
)savev2_dense_536_bias_read_readvariableop/
+savev2_dense_537_kernel_read_readvariableop-
)savev2_dense_537_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_534_kernel_m_read_readvariableop4
0savev2_adam_dense_534_bias_m_read_readvariableop6
2savev2_adam_dense_535_kernel_m_read_readvariableop4
0savev2_adam_dense_535_bias_m_read_readvariableop6
2savev2_adam_dense_536_kernel_m_read_readvariableop4
0savev2_adam_dense_536_bias_m_read_readvariableop6
2savev2_adam_dense_537_kernel_m_read_readvariableop4
0savev2_adam_dense_537_bias_m_read_readvariableop6
2savev2_adam_dense_534_kernel_v_read_readvariableop4
0savev2_adam_dense_534_bias_v_read_readvariableop6
2savev2_adam_dense_535_kernel_v_read_readvariableop4
0savev2_adam_dense_535_bias_v_read_readvariableop6
2savev2_adam_dense_536_kernel_v_read_readvariableop4
0savev2_adam_dense_536_bias_v_read_readvariableop6
2savev2_adam_dense_537_kernel_v_read_readvariableop4
0savev2_adam_dense_537_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_534_kernel_read_readvariableop)savev2_dense_534_bias_read_readvariableop+savev2_dense_535_kernel_read_readvariableop)savev2_dense_535_bias_read_readvariableop+savev2_dense_536_kernel_read_readvariableop)savev2_dense_536_bias_read_readvariableop+savev2_dense_537_kernel_read_readvariableop)savev2_dense_537_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_534_kernel_m_read_readvariableop0savev2_adam_dense_534_bias_m_read_readvariableop2savev2_adam_dense_535_kernel_m_read_readvariableop0savev2_adam_dense_535_bias_m_read_readvariableop2savev2_adam_dense_536_kernel_m_read_readvariableop0savev2_adam_dense_536_bias_m_read_readvariableop2savev2_adam_dense_537_kernel_m_read_readvariableop0savev2_adam_dense_537_bias_m_read_readvariableop2savev2_adam_dense_534_kernel_v_read_readvariableop0savev2_adam_dense_534_bias_v_read_readvariableop2savev2_adam_dense_535_kernel_v_read_readvariableop0savev2_adam_dense_535_bias_v_read_readvariableop2savev2_adam_dense_536_kernel_v_read_readvariableop0savev2_adam_dense_536_bias_v_read_readvariableop2savev2_adam_dense_537_kernel_v_read_readvariableop0savev2_adam_dense_537_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:?:	?@:@:@ : : :: : : : : : : :	?:?:	?@:@:@ : : ::	?:?:	?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
: 
?

?
G__inference_dense_537_layer_call_and_return_conditional_losses_14369745

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
,__inference_model_126_layer_call_fn_14370017

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_model_126_layer_call_and_return_conditional_losses_14369858o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
,__inference_model_126_layer_call_fn_14369996

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_model_126_layer_call_and_return_conditional_losses_14369752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
,__inference_model_126_layer_call_fn_14369771
	input_127
unknown:	?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_127unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? *P
fKRI
G__inference_model_126_layer_call_and_return_conditional_losses_14369752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?	
?
&__inference_signature_wrapper_14369975
	input_127
unknown:	?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_127unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8? *,
f'R%
#__inference__wrapped_model_14369676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_127
?

?
G__inference_dense_535_layer_call_and_return_conditional_losses_14370121

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_535_layer_call_and_return_conditional_losses_14369711

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_534_layer_call_and_return_conditional_losses_14370101

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_dense_536_layer_call_and_return_conditional_losses_14369728

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
	input_1272
serving_default_input_127:0?????????=
	dense_5370
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
X
0
1
2
3
%4
&5
-6
.7"
trackable_list_wrapper
X
0
1
2
3
%4
&5
-6
.7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
4trace_0
5trace_1
6trace_2
7trace_32?
,__inference_model_126_layer_call_fn_14369771
,__inference_model_126_layer_call_fn_14369996
,__inference_model_126_layer_call_fn_14370017
,__inference_model_126_layer_call_fn_14369898?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z4trace_0z5trace_1z6trace_2z7trace_3
?
8trace_0
9trace_1
:trace_2
;trace_32?
G__inference_model_126_layer_call_and_return_conditional_losses_14370049
G__inference_model_126_layer_call_and_return_conditional_losses_14370081
G__inference_model_126_layer_call_and_return_conditional_losses_14369922
G__inference_model_126_layer_call_and_return_conditional_losses_14369946?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z8trace_0z9trace_1z:trace_2z;trace_3
?B?
#__inference__wrapped_model_14369676	input_127"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratemcmdmemf%mg&mh-mi.mjvkvlvmvn%vo&vp-vq.vr"
	optimizer
,
Aserving_default"
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
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Gtrace_02?
,__inference_dense_534_layer_call_fn_14370090?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zGtrace_0
?
Htrace_02?
G__inference_dense_534_layer_call_and_return_conditional_losses_14370101?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zHtrace_0
#:!	?2dense_534/kernel
:?2dense_534/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Ntrace_02?
,__inference_dense_535_layer_call_fn_14370110?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zNtrace_0
?
Otrace_02?
G__inference_dense_535_layer_call_and_return_conditional_losses_14370121?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zOtrace_0
#:!	?@2dense_535/kernel
:@2dense_535/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?
Utrace_02?
,__inference_dense_536_layer_call_fn_14370130?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zUtrace_0
?
Vtrace_02?
G__inference_dense_536_layer_call_and_return_conditional_losses_14370141?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zVtrace_0
": @ 2dense_536/kernel
: 2dense_536/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?
\trace_02?
,__inference_dense_537_layer_call_fn_14370150?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z\trace_0
?
]trace_02?
G__inference_dense_537_layer_call_and_return_conditional_losses_14370161?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z]trace_0
":  2dense_537/kernel
:2dense_537/bias
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
^0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_model_126_layer_call_fn_14369771	input_127"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
,__inference_model_126_layer_call_fn_14369996inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
,__inference_model_126_layer_call_fn_14370017inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
,__inference_model_126_layer_call_fn_14369898	input_127"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_model_126_layer_call_and_return_conditional_losses_14370049inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_model_126_layer_call_and_return_conditional_losses_14370081inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_model_126_layer_call_and_return_conditional_losses_14369922	input_127"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_model_126_layer_call_and_return_conditional_losses_14369946	input_127"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
&__inference_signature_wrapper_14369975	input_127"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
,__inference_dense_534_layer_call_fn_14370090inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_dense_534_layer_call_and_return_conditional_losses_14370101inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
,__inference_dense_535_layer_call_fn_14370110inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_dense_535_layer_call_and_return_conditional_losses_14370121inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
,__inference_dense_536_layer_call_fn_14370130inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_dense_536_layer_call_and_return_conditional_losses_14370141inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
,__inference_dense_537_layer_call_fn_14370150inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_dense_537_layer_call_and_return_conditional_losses_14370161inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
N
_	variables
`	keras_api
	atotal
	bcount"
_tf_keras_metric
.
a0
b1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
:  (2total
:  (2count
(:&	?2Adam/dense_534/kernel/m
": ?2Adam/dense_534/bias/m
(:&	?@2Adam/dense_535/kernel/m
!:@2Adam/dense_535/bias/m
':%@ 2Adam/dense_536/kernel/m
!: 2Adam/dense_536/bias/m
':% 2Adam/dense_537/kernel/m
!:2Adam/dense_537/bias/m
(:&	?2Adam/dense_534/kernel/v
": ?2Adam/dense_534/bias/v
(:&	?@2Adam/dense_535/kernel/v
!:@2Adam/dense_535/bias/v
':%@ 2Adam/dense_536/kernel/v
!: 2Adam/dense_536/bias/v
':% 2Adam/dense_537/kernel/v
!:2Adam/dense_537/bias/v?
#__inference__wrapped_model_14369676u%&-.2?/
(?%
#? 
	input_127?????????
? "5?2
0
	dense_537#? 
	dense_537??????????
G__inference_dense_534_layer_call_and_return_conditional_losses_14370101]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? ?
,__inference_dense_534_layer_call_fn_14370090P/?,
%?"
 ?
inputs?????????
? "????????????
G__inference_dense_535_layer_call_and_return_conditional_losses_14370121]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
,__inference_dense_535_layer_call_fn_14370110P0?-
&?#
!?
inputs??????????
? "??????????@?
G__inference_dense_536_layer_call_and_return_conditional_losses_14370141\%&/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? 
,__inference_dense_536_layer_call_fn_14370130O%&/?,
%?"
 ?
inputs?????????@
? "?????????? ?
G__inference_dense_537_layer_call_and_return_conditional_losses_14370161\-./?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? 
,__inference_dense_537_layer_call_fn_14370150O-./?,
%?"
 ?
inputs????????? 
? "???????????
G__inference_model_126_layer_call_and_return_conditional_losses_14369922m%&-.:?7
0?-
#? 
	input_127?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_model_126_layer_call_and_return_conditional_losses_14369946m%&-.:?7
0?-
#? 
	input_127?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_model_126_layer_call_and_return_conditional_losses_14370049j%&-.7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_model_126_layer_call_and_return_conditional_losses_14370081j%&-.7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
,__inference_model_126_layer_call_fn_14369771`%&-.:?7
0?-
#? 
	input_127?????????
p 

 
? "???????????
,__inference_model_126_layer_call_fn_14369898`%&-.:?7
0?-
#? 
	input_127?????????
p

 
? "???????????
,__inference_model_126_layer_call_fn_14369996]%&-.7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
,__inference_model_126_layer_call_fn_14370017]%&-.7?4
-?*
 ?
inputs?????????
p

 
? "???????????
&__inference_signature_wrapper_14369975?%&-.??<
? 
5?2
0
	input_127#? 
	input_127?????????"5?2
0
	dense_537#? 
	dense_537?????????