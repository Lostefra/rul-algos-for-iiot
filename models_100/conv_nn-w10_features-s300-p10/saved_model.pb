ÜÙ
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
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8¡

Adam/dense_1029/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1029/bias/v
}
*Adam/dense_1029/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1029/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1029/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1029/kernel/v

,Adam/dense_1029/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1029/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_1028/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/dense_1028/bias/v
}
*Adam/dense_1028/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1028/bias/v*
_output_shapes
: *
dtype0

Adam/dense_1028/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *)
shared_nameAdam/dense_1028/kernel/v

,Adam/dense_1028/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1028/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_1027/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/dense_1027/bias/v
}
*Adam/dense_1027/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1027/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_1027/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*)
shared_nameAdam/dense_1027/kernel/v

,Adam/dense_1027/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1027/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_1026/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1026/bias/v
~
*Adam/dense_1026/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1026/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_1026/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/dense_1026/kernel/v

,Adam/dense_1026/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1026/kernel/v*
_output_shapes
:	*
dtype0

Adam/conv1d_186/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_186/bias/v
}
*Adam/conv1d_186/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_186/bias/v*
_output_shapes
:*
dtype0

Adam/conv1d_186/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv1d_186/kernel/v

,Adam/conv1d_186/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_186/kernel/v*"
_output_shapes
:*
dtype0

Adam/dense_1029/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1029/bias/m
}
*Adam/dense_1029/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1029/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1029/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dense_1029/kernel/m

,Adam/dense_1029/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1029/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_1028/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/dense_1028/bias/m
}
*Adam/dense_1028/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1028/bias/m*
_output_shapes
: *
dtype0

Adam/dense_1028/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *)
shared_nameAdam/dense_1028/kernel/m

,Adam/dense_1028/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1028/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_1027/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/dense_1027/bias/m
}
*Adam/dense_1027/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1027/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_1027/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*)
shared_nameAdam/dense_1027/kernel/m

,Adam/dense_1027/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1027/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_1026/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1026/bias/m
~
*Adam/dense_1026/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1026/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_1026/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/dense_1026/kernel/m

,Adam/dense_1026/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1026/kernel/m*
_output_shapes
:	*
dtype0

Adam/conv1d_186/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_186/bias/m
}
*Adam/conv1d_186/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_186/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_186/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv1d_186/kernel/m

,Adam/conv1d_186/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_186/kernel/m*"
_output_shapes
:*
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
dense_1029/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1029/bias
o
#dense_1029/bias/Read/ReadVariableOpReadVariableOpdense_1029/bias*
_output_shapes
:*
dtype0
~
dense_1029/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_1029/kernel
w
%dense_1029/kernel/Read/ReadVariableOpReadVariableOpdense_1029/kernel*
_output_shapes

: *
dtype0
v
dense_1028/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1028/bias
o
#dense_1028/bias/Read/ReadVariableOpReadVariableOpdense_1028/bias*
_output_shapes
: *
dtype0
~
dense_1028/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *"
shared_namedense_1028/kernel
w
%dense_1028/kernel/Read/ReadVariableOpReadVariableOpdense_1028/kernel*
_output_shapes

:@ *
dtype0
v
dense_1027/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namedense_1027/bias
o
#dense_1027/bias/Read/ReadVariableOpReadVariableOpdense_1027/bias*
_output_shapes
:@*
dtype0

dense_1027/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*"
shared_namedense_1027/kernel
x
%dense_1027/kernel/Read/ReadVariableOpReadVariableOpdense_1027/kernel*
_output_shapes
:	@*
dtype0
w
dense_1026/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1026/bias
p
#dense_1026/bias/Read/ReadVariableOpReadVariableOpdense_1026/bias*
_output_shapes	
:*
dtype0

dense_1026/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_namedense_1026/kernel
x
%dense_1026/kernel/Read/ReadVariableOpReadVariableOpdense_1026/kernel*
_output_shapes
:	*
dtype0
v
conv1d_186/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_186/bias
o
#conv1d_186/bias/Read/ReadVariableOpReadVariableOpconv1d_186/bias*
_output_shapes
:*
dtype0

conv1d_186/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_186/kernel
{
%conv1d_186/kernel/Read/ReadVariableOpReadVariableOpconv1d_186/kernel*"
_output_shapes
:*
dtype0

serving_default_input_334Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ


StatefulPartitionedCallStatefulPartitionedCallserving_default_input_334conv1d_186/kernelconv1d_186/biasdense_1026/kerneldense_1026/biasdense_1027/kerneldense_1027/biasdense_1028/kerneldense_1028/biasdense_1029/kerneldense_1029/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 */
f*R(
&__inference_signature_wrapper_75676993

NoOpNoOp
«G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*æF
valueÜFBÙF BÒF
©
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
È
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¦
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias*
¦
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
¦
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias*
¦
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias*
J
0
1
&2
'3
.4
/5
66
77
>8
?9*
J
0
1
&2
'3
.4
/5
66
77
>8
?9*
* 
°
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
* 

Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemm&m'm.m/m6m7m>m?mvv&v'v.v/v6v7v>v?v*

Rserving_default* 

0
1*

0
1*
* 

Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
a[
VARIABLE_VALUEconv1d_186/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_186/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

_trace_0* 

`trace_0* 

&0
'1*

&0
'1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
a[
VARIABLE_VALUEdense_1026/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1026/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
a[
VARIABLE_VALUEdense_1027/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1027/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
a[
VARIABLE_VALUEdense_1028/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1028/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

>0
?1*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
a[
VARIABLE_VALUEdense_1029/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1029/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

}0*
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
:
~	variables
	keras_api

total

count*

0
1*

~	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv1d_186/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_186/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1026/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1026/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1027/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1027/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1028/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1028/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1029/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1029/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv1d_186/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1d_186/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1026/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1026/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1027/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1027/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1028/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1028/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_1029/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_1029/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¦
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv1d_186/kernel/Read/ReadVariableOp#conv1d_186/bias/Read/ReadVariableOp%dense_1026/kernel/Read/ReadVariableOp#dense_1026/bias/Read/ReadVariableOp%dense_1027/kernel/Read/ReadVariableOp#dense_1027/bias/Read/ReadVariableOp%dense_1028/kernel/Read/ReadVariableOp#dense_1028/bias/Read/ReadVariableOp%dense_1029/kernel/Read/ReadVariableOp#dense_1029/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv1d_186/kernel/m/Read/ReadVariableOp*Adam/conv1d_186/bias/m/Read/ReadVariableOp,Adam/dense_1026/kernel/m/Read/ReadVariableOp*Adam/dense_1026/bias/m/Read/ReadVariableOp,Adam/dense_1027/kernel/m/Read/ReadVariableOp*Adam/dense_1027/bias/m/Read/ReadVariableOp,Adam/dense_1028/kernel/m/Read/ReadVariableOp*Adam/dense_1028/bias/m/Read/ReadVariableOp,Adam/dense_1029/kernel/m/Read/ReadVariableOp*Adam/dense_1029/bias/m/Read/ReadVariableOp,Adam/conv1d_186/kernel/v/Read/ReadVariableOp*Adam/conv1d_186/bias/v/Read/ReadVariableOp,Adam/dense_1026/kernel/v/Read/ReadVariableOp*Adam/dense_1026/bias/v/Read/ReadVariableOp,Adam/dense_1027/kernel/v/Read/ReadVariableOp*Adam/dense_1027/bias/v/Read/ReadVariableOp,Adam/dense_1028/kernel/v/Read/ReadVariableOp*Adam/dense_1028/bias/v/Read/ReadVariableOp,Adam/dense_1029/kernel/v/Read/ReadVariableOp*Adam/dense_1029/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
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
!__inference__traced_save_75677385
½
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_186/kernelconv1d_186/biasdense_1026/kerneldense_1026/biasdense_1027/kerneldense_1027/biasdense_1028/kerneldense_1028/biasdense_1029/kerneldense_1029/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_186/kernel/mAdam/conv1d_186/bias/mAdam/dense_1026/kernel/mAdam/dense_1026/bias/mAdam/dense_1027/kernel/mAdam/dense_1027/bias/mAdam/dense_1028/kernel/mAdam/dense_1028/bias/mAdam/dense_1029/kernel/mAdam/dense_1029/bias/mAdam/conv1d_186/kernel/vAdam/conv1d_186/bias/vAdam/dense_1026/kernel/vAdam/dense_1026/bias/vAdam/dense_1027/kernel/vAdam/dense_1027/bias/vAdam/dense_1028/kernel/vAdam/dense_1028/bias/vAdam/dense_1029/kernel/vAdam/dense_1029/bias/v*1
Tin*
(2&*
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
$__inference__traced_restore_75677506Åñ
É7
½
G__inference_model_333_layer_call_and_return_conditional_losses_75677135

inputsL
6conv1d_186_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_186_biasadd_readvariableop_resource:<
)dense_1026_matmul_readvariableop_resource:	9
*dense_1026_biasadd_readvariableop_resource:	<
)dense_1027_matmul_readvariableop_resource:	@8
*dense_1027_biasadd_readvariableop_resource:@;
)dense_1028_matmul_readvariableop_resource:@ 8
*dense_1028_biasadd_readvariableop_resource: ;
)dense_1029_matmul_readvariableop_resource: 8
*dense_1029_biasadd_readvariableop_resource:
identity¢!conv1d_186/BiasAdd/ReadVariableOp¢-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp¢!dense_1026/BiasAdd/ReadVariableOp¢ dense_1026/MatMul/ReadVariableOp¢!dense_1027/BiasAdd/ReadVariableOp¢ dense_1027/MatMul/ReadVariableOp¢!dense_1028/BiasAdd/ReadVariableOp¢ dense_1028/MatMul/ReadVariableOp¢!dense_1029/BiasAdd/ReadVariableOp¢ dense_1029/MatMul/ReadVariableOpk
 conv1d_186/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_186/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_186/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_186_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_186/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_186/Conv1D/ExpandDims_1
ExpandDims5conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_186/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_186/Conv1DConv2D%conv1d_186/Conv1D/ExpandDims:output:0'conv1d_186/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_186/Conv1D/SqueezeSqueezeconv1d_186/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_186/BiasAdd/ReadVariableOpReadVariableOp*conv1d_186_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_186/BiasAddBiasAdd"conv1d_186/Conv1D/Squeeze:output:0)conv1d_186/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_186/ReluReluconv1d_186/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_186/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_186/ReshapeReshapeconv1d_186/Relu:activations:0flatten_186/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1026/MatMul/ReadVariableOpReadVariableOp)dense_1026_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_1026/MatMulMatMulflatten_186/Reshape:output:0(dense_1026/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1026/BiasAdd/ReadVariableOpReadVariableOp*dense_1026_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1026/BiasAddBiasAdddense_1026/MatMul:product:0)dense_1026/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
dense_1026/ReluReludense_1026/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1027/MatMul/ReadVariableOpReadVariableOp)dense_1027_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_1027/MatMulMatMuldense_1026/Relu:activations:0(dense_1027/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!dense_1027/BiasAdd/ReadVariableOpReadVariableOp*dense_1027_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_1027/BiasAddBiasAdddense_1027/MatMul:product:0)dense_1027/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
dense_1027/ReluReludense_1027/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_1028/MatMul/ReadVariableOpReadVariableOp)dense_1028_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1028/MatMulMatMuldense_1027/Relu:activations:0(dense_1028/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!dense_1028/BiasAdd/ReadVariableOpReadVariableOp*dense_1028_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1028/BiasAddBiasAdddense_1028/MatMul:product:0)dense_1028/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
dense_1028/ReluReludense_1028/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_1029/MatMul/ReadVariableOpReadVariableOp)dense_1029_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1029/MatMulMatMuldense_1028/Relu:activations:0(dense_1029/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1029/BiasAdd/ReadVariableOpReadVariableOp*dense_1029_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1029/BiasAddBiasAdddense_1029/MatMul:product:0)dense_1029/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
dense_1029/SigmoidSigmoiddense_1029/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentitydense_1029/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^conv1d_186/BiasAdd/ReadVariableOp.^conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp"^dense_1026/BiasAdd/ReadVariableOp!^dense_1026/MatMul/ReadVariableOp"^dense_1027/BiasAdd/ReadVariableOp!^dense_1027/MatMul/ReadVariableOp"^dense_1028/BiasAdd/ReadVariableOp!^dense_1028/MatMul/ReadVariableOp"^dense_1029/BiasAdd/ReadVariableOp!^dense_1029/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2F
!conv1d_186/BiasAdd/ReadVariableOp!conv1d_186/BiasAdd/ReadVariableOp2^
-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp2F
!dense_1026/BiasAdd/ReadVariableOp!dense_1026/BiasAdd/ReadVariableOp2D
 dense_1026/MatMul/ReadVariableOp dense_1026/MatMul/ReadVariableOp2F
!dense_1027/BiasAdd/ReadVariableOp!dense_1027/BiasAdd/ReadVariableOp2D
 dense_1027/MatMul/ReadVariableOp dense_1027/MatMul/ReadVariableOp2F
!dense_1028/BiasAdd/ReadVariableOp!dense_1028/BiasAdd/ReadVariableOp2D
 dense_1028/MatMul/ReadVariableOp dense_1028/MatMul/ReadVariableOp2F
!dense_1029/BiasAdd/ReadVariableOp!dense_1029/BiasAdd/ReadVariableOp2D
 dense_1029/MatMul/ReadVariableOp dense_1029/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ï

-__inference_dense_1028_layer_call_fn_75677220

inputs
unknown:@ 
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692o
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
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 

G__inference_model_333_layer_call_and_return_conditional_losses_75676960
	input_334)
conv1d_186_75676933:!
conv1d_186_75676935:&
dense_1026_75676939:	"
dense_1026_75676941:	&
dense_1027_75676944:	@!
dense_1027_75676946:@%
dense_1028_75676949:@ !
dense_1028_75676951: %
dense_1029_75676954: !
dense_1029_75676956:
identity¢"conv1d_186/StatefulPartitionedCall¢"dense_1026/StatefulPartitionedCall¢"dense_1027/StatefulPartitionedCall¢"dense_1028/StatefulPartitionedCall¢"dense_1029/StatefulPartitionedCall
"conv1d_186/StatefulPartitionedCallStatefulPartitionedCall	input_334conv1d_186_75676933conv1d_186_75676935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633ê
flatten_186/PartitionedCallPartitionedCall+conv1d_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645¢
"dense_1026/StatefulPartitionedCallStatefulPartitionedCall$flatten_186/PartitionedCall:output:0dense_1026_75676939dense_1026_75676941*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658¨
"dense_1027/StatefulPartitionedCallStatefulPartitionedCall+dense_1026/StatefulPartitionedCall:output:0dense_1027_75676944dense_1027_75676946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675¨
"dense_1028/StatefulPartitionedCallStatefulPartitionedCall+dense_1027/StatefulPartitionedCall:output:0dense_1028_75676949dense_1028_75676951*
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692¨
"dense_1029/StatefulPartitionedCallStatefulPartitionedCall+dense_1028/StatefulPartitionedCall:output:0dense_1029_75676954dense_1029_75676956*
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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709z
IdentityIdentity+dense_1029/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_186/StatefulPartitionedCall#^dense_1026/StatefulPartitionedCall#^dense_1027/StatefulPartitionedCall#^dense_1028/StatefulPartitionedCall#^dense_1029/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2H
"conv1d_186/StatefulPartitionedCall"conv1d_186/StatefulPartitionedCall2H
"dense_1026/StatefulPartitionedCall"dense_1026/StatefulPartitionedCall2H
"dense_1027/StatefulPartitionedCall"dense_1027/StatefulPartitionedCall2H
"dense_1028/StatefulPartitionedCall"dense_1028/StatefulPartitionedCall2H
"dense_1029/StatefulPartitionedCall"dense_1029/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334


ù
H__inference_dense_1029_layer_call_and_return_conditional_losses_75677251

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
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
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

"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
´
J
.__inference_flatten_186_layer_call_fn_75677165

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
O
ä
!__inference__traced_save_75677385
file_prefix0
,savev2_conv1d_186_kernel_read_readvariableop.
*savev2_conv1d_186_bias_read_readvariableop0
,savev2_dense_1026_kernel_read_readvariableop.
*savev2_dense_1026_bias_read_readvariableop0
,savev2_dense_1027_kernel_read_readvariableop.
*savev2_dense_1027_bias_read_readvariableop0
,savev2_dense_1028_kernel_read_readvariableop.
*savev2_dense_1028_bias_read_readvariableop0
,savev2_dense_1029_kernel_read_readvariableop.
*savev2_dense_1029_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv1d_186_kernel_m_read_readvariableop5
1savev2_adam_conv1d_186_bias_m_read_readvariableop7
3savev2_adam_dense_1026_kernel_m_read_readvariableop5
1savev2_adam_dense_1026_bias_m_read_readvariableop7
3savev2_adam_dense_1027_kernel_m_read_readvariableop5
1savev2_adam_dense_1027_bias_m_read_readvariableop7
3savev2_adam_dense_1028_kernel_m_read_readvariableop5
1savev2_adam_dense_1028_bias_m_read_readvariableop7
3savev2_adam_dense_1029_kernel_m_read_readvariableop5
1savev2_adam_dense_1029_bias_m_read_readvariableop7
3savev2_adam_conv1d_186_kernel_v_read_readvariableop5
1savev2_adam_conv1d_186_bias_v_read_readvariableop7
3savev2_adam_dense_1026_kernel_v_read_readvariableop5
1savev2_adam_dense_1026_bias_v_read_readvariableop7
3savev2_adam_dense_1027_kernel_v_read_readvariableop5
1savev2_adam_dense_1027_bias_v_read_readvariableop7
3savev2_adam_dense_1028_kernel_v_read_readvariableop5
1savev2_adam_dense_1028_bias_v_read_readvariableop7
3savev2_adam_dense_1029_kernel_v_read_readvariableop5
1savev2_adam_dense_1029_bias_v_read_readvariableop
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
: ý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¦
valueB&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¹
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ·
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv1d_186_kernel_read_readvariableop*savev2_conv1d_186_bias_read_readvariableop,savev2_dense_1026_kernel_read_readvariableop*savev2_dense_1026_bias_read_readvariableop,savev2_dense_1027_kernel_read_readvariableop*savev2_dense_1027_bias_read_readvariableop,savev2_dense_1028_kernel_read_readvariableop*savev2_dense_1028_bias_read_readvariableop,savev2_dense_1029_kernel_read_readvariableop*savev2_dense_1029_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv1d_186_kernel_m_read_readvariableop1savev2_adam_conv1d_186_bias_m_read_readvariableop3savev2_adam_dense_1026_kernel_m_read_readvariableop1savev2_adam_dense_1026_bias_m_read_readvariableop3savev2_adam_dense_1027_kernel_m_read_readvariableop1savev2_adam_dense_1027_bias_m_read_readvariableop3savev2_adam_dense_1028_kernel_m_read_readvariableop1savev2_adam_dense_1028_bias_m_read_readvariableop3savev2_adam_dense_1029_kernel_m_read_readvariableop1savev2_adam_dense_1029_bias_m_read_readvariableop3savev2_adam_conv1d_186_kernel_v_read_readvariableop1savev2_adam_conv1d_186_bias_v_read_readvariableop3savev2_adam_dense_1026_kernel_v_read_readvariableop1savev2_adam_dense_1026_bias_v_read_readvariableop3savev2_adam_dense_1027_kernel_v_read_readvariableop1savev2_adam_dense_1027_bias_v_read_readvariableop3savev2_adam_dense_1028_kernel_v_read_readvariableop1savev2_adam_dense_1028_bias_v_read_readvariableop3savev2_adam_dense_1029_kernel_v_read_readvariableop1savev2_adam_dense_1029_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	
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

identity_1Identity_1:output:0*¬
_input_shapes
: :::	::	@:@:@ : : :: : : : : : : :::	::	@:@:@ : : ::::	::	@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::% !

_output_shapes
:	@: !

_output_shapes
:@:$" 

_output_shapes

:@ : #

_output_shapes
: :$$ 

_output_shapes

: : %

_output_shapes
::&

_output_shapes
: 
Ï

-__inference_dense_1029_layer_call_fn_75677240

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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709o
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
§

û
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ú
H__inference_dense_1027_layer_call_and_return_conditional_losses_75677211

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

G__inference_model_333_layer_call_and_return_conditional_losses_75676852

inputs)
conv1d_186_75676825:!
conv1d_186_75676827:&
dense_1026_75676831:	"
dense_1026_75676833:	&
dense_1027_75676836:	@!
dense_1027_75676838:@%
dense_1028_75676841:@ !
dense_1028_75676843: %
dense_1029_75676846: !
dense_1029_75676848:
identity¢"conv1d_186/StatefulPartitionedCall¢"dense_1026/StatefulPartitionedCall¢"dense_1027/StatefulPartitionedCall¢"dense_1028/StatefulPartitionedCall¢"dense_1029/StatefulPartitionedCall
"conv1d_186/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_186_75676825conv1d_186_75676827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633ê
flatten_186/PartitionedCallPartitionedCall+conv1d_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645¢
"dense_1026/StatefulPartitionedCallStatefulPartitionedCall$flatten_186/PartitionedCall:output:0dense_1026_75676831dense_1026_75676833*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658¨
"dense_1027/StatefulPartitionedCallStatefulPartitionedCall+dense_1026/StatefulPartitionedCall:output:0dense_1027_75676836dense_1027_75676838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675¨
"dense_1028/StatefulPartitionedCallStatefulPartitionedCall+dense_1027/StatefulPartitionedCall:output:0dense_1028_75676841dense_1028_75676843*
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692¨
"dense_1029/StatefulPartitionedCallStatefulPartitionedCall+dense_1028/StatefulPartitionedCall:output:0dense_1029_75676846dense_1029_75676848*
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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709z
IdentityIdentity+dense_1029/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_186/StatefulPartitionedCall#^dense_1026/StatefulPartitionedCall#^dense_1027/StatefulPartitionedCall#^dense_1028/StatefulPartitionedCall#^dense_1029/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2H
"conv1d_186/StatefulPartitionedCall"conv1d_186/StatefulPartitionedCall2H
"dense_1026/StatefulPartitionedCall"dense_1026/StatefulPartitionedCall2H
"dense_1027/StatefulPartitionedCall"dense_1027/StatefulPartitionedCall2H
"dense_1028/StatefulPartitionedCall"dense_1028/StatefulPartitionedCall2H
"dense_1029/StatefulPartitionedCall"dense_1029/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ó

-__inference_dense_1026_layer_call_fn_75677180

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

û
H__inference_dense_1026_layer_call_and_return_conditional_losses_75677191

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò

-__inference_dense_1027_layer_call_fn_75677200

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

-__inference_conv1d_186_layer_call_fn_75677144

inputs
unknown:
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
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¬

ø
,__inference_model_333_layer_call_fn_75677018

inputs
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_333_layer_call_and_return_conditional_losses_75676716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¬

ø
,__inference_model_333_layer_call_fn_75677043

inputs
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_333_layer_call_and_return_conditional_losses_75676852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ù
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709

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
Á
e
I__inference_flatten_186_layer_call_and_return_conditional_losses_75677171

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
A
ä	
#__inference__wrapped_model_75676610
	input_334V
@model_333_conv1d_186_conv1d_expanddims_1_readvariableop_resource:B
4model_333_conv1d_186_biasadd_readvariableop_resource:F
3model_333_dense_1026_matmul_readvariableop_resource:	C
4model_333_dense_1026_biasadd_readvariableop_resource:	F
3model_333_dense_1027_matmul_readvariableop_resource:	@B
4model_333_dense_1027_biasadd_readvariableop_resource:@E
3model_333_dense_1028_matmul_readvariableop_resource:@ B
4model_333_dense_1028_biasadd_readvariableop_resource: E
3model_333_dense_1029_matmul_readvariableop_resource: B
4model_333_dense_1029_biasadd_readvariableop_resource:
identity¢+model_333/conv1d_186/BiasAdd/ReadVariableOp¢7model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp¢+model_333/dense_1026/BiasAdd/ReadVariableOp¢*model_333/dense_1026/MatMul/ReadVariableOp¢+model_333/dense_1027/BiasAdd/ReadVariableOp¢*model_333/dense_1027/MatMul/ReadVariableOp¢+model_333/dense_1028/BiasAdd/ReadVariableOp¢*model_333/dense_1028/MatMul/ReadVariableOp¢+model_333/dense_1029/BiasAdd/ReadVariableOp¢*model_333/dense_1029/MatMul/ReadVariableOpu
*model_333/conv1d_186/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
&model_333/conv1d_186/Conv1D/ExpandDims
ExpandDims	input_3343model_333/conv1d_186/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
7model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@model_333_conv1d_186_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0n
,model_333/conv1d_186/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ß
(model_333/conv1d_186/Conv1D/ExpandDims_1
ExpandDims?model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp:value:05model_333/conv1d_186/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ì
model_333/conv1d_186/Conv1DConv2D/model_333/conv1d_186/Conv1D/ExpandDims:output:01model_333/conv1d_186/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
ª
#model_333/conv1d_186/Conv1D/SqueezeSqueeze$model_333/conv1d_186/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
+model_333/conv1d_186/BiasAdd/ReadVariableOpReadVariableOp4model_333_conv1d_186_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0À
model_333/conv1d_186/BiasAddBiasAdd,model_333/conv1d_186/Conv1D/Squeeze:output:03model_333/conv1d_186/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
model_333/conv1d_186/ReluRelu%model_333/conv1d_186/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
model_333/flatten_186/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
model_333/flatten_186/ReshapeReshape'model_333/conv1d_186/Relu:activations:0$model_333/flatten_186/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_333/dense_1026/MatMul/ReadVariableOpReadVariableOp3model_333_dense_1026_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0´
model_333/dense_1026/MatMulMatMul&model_333/flatten_186/Reshape:output:02model_333/dense_1026/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model_333/dense_1026/BiasAdd/ReadVariableOpReadVariableOp4model_333_dense_1026_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¶
model_333/dense_1026/BiasAddBiasAdd%model_333/dense_1026/MatMul:product:03model_333/dense_1026/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
model_333/dense_1026/ReluRelu%model_333/dense_1026/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_333/dense_1027/MatMul/ReadVariableOpReadVariableOp3model_333_dense_1027_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0´
model_333/dense_1027/MatMulMatMul'model_333/dense_1026/Relu:activations:02model_333/dense_1027/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+model_333/dense_1027/BiasAdd/ReadVariableOpReadVariableOp4model_333_dense_1027_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0µ
model_333/dense_1027/BiasAddBiasAdd%model_333/dense_1027/MatMul:product:03model_333/dense_1027/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
model_333/dense_1027/ReluRelu%model_333/dense_1027/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*model_333/dense_1028/MatMul/ReadVariableOpReadVariableOp3model_333_dense_1028_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0´
model_333/dense_1028/MatMulMatMul'model_333/dense_1027/Relu:activations:02model_333/dense_1028/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+model_333/dense_1028/BiasAdd/ReadVariableOpReadVariableOp4model_333_dense_1028_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
model_333/dense_1028/BiasAddBiasAdd%model_333/dense_1028/MatMul:product:03model_333/dense_1028/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
model_333/dense_1028/ReluRelu%model_333/dense_1028/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_333/dense_1029/MatMul/ReadVariableOpReadVariableOp3model_333_dense_1029_matmul_readvariableop_resource*
_output_shapes

: *
dtype0´
model_333/dense_1029/MatMulMatMul'model_333/dense_1028/Relu:activations:02model_333/dense_1029/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model_333/dense_1029/BiasAdd/ReadVariableOpReadVariableOp4model_333_dense_1029_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_333/dense_1029/BiasAddBiasAdd%model_333/dense_1029/MatMul:product:03model_333/dense_1029/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_333/dense_1029/SigmoidSigmoid%model_333/dense_1029/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity model_333/dense_1029/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp,^model_333/conv1d_186/BiasAdd/ReadVariableOp8^model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp,^model_333/dense_1026/BiasAdd/ReadVariableOp+^model_333/dense_1026/MatMul/ReadVariableOp,^model_333/dense_1027/BiasAdd/ReadVariableOp+^model_333/dense_1027/MatMul/ReadVariableOp,^model_333/dense_1028/BiasAdd/ReadVariableOp+^model_333/dense_1028/MatMul/ReadVariableOp,^model_333/dense_1029/BiasAdd/ReadVariableOp+^model_333/dense_1029/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2Z
+model_333/conv1d_186/BiasAdd/ReadVariableOp+model_333/conv1d_186/BiasAdd/ReadVariableOp2r
7model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp7model_333/conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp2Z
+model_333/dense_1026/BiasAdd/ReadVariableOp+model_333/dense_1026/BiasAdd/ReadVariableOp2X
*model_333/dense_1026/MatMul/ReadVariableOp*model_333/dense_1026/MatMul/ReadVariableOp2Z
+model_333/dense_1027/BiasAdd/ReadVariableOp+model_333/dense_1027/BiasAdd/ReadVariableOp2X
*model_333/dense_1027/MatMul/ReadVariableOp*model_333/dense_1027/MatMul/ReadVariableOp2Z
+model_333/dense_1028/BiasAdd/ReadVariableOp+model_333/dense_1028/BiasAdd/ReadVariableOp2X
*model_333/dense_1028/MatMul/ReadVariableOp*model_333/dense_1028/MatMul/ReadVariableOp2Z
+model_333/dense_1029/BiasAdd/ReadVariableOp+model_333/dense_1029/BiasAdd/ReadVariableOp2X
*model_333/dense_1029/MatMul/ReadVariableOp*model_333/dense_1029/MatMul/ReadVariableOp:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334
 

G__inference_model_333_layer_call_and_return_conditional_losses_75676716

inputs)
conv1d_186_75676634:!
conv1d_186_75676636:&
dense_1026_75676659:	"
dense_1026_75676661:	&
dense_1027_75676676:	@!
dense_1027_75676678:@%
dense_1028_75676693:@ !
dense_1028_75676695: %
dense_1029_75676710: !
dense_1029_75676712:
identity¢"conv1d_186/StatefulPartitionedCall¢"dense_1026/StatefulPartitionedCall¢"dense_1027/StatefulPartitionedCall¢"dense_1028/StatefulPartitionedCall¢"dense_1029/StatefulPartitionedCall
"conv1d_186/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_186_75676634conv1d_186_75676636*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633ê
flatten_186/PartitionedCallPartitionedCall+conv1d_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645¢
"dense_1026/StatefulPartitionedCallStatefulPartitionedCall$flatten_186/PartitionedCall:output:0dense_1026_75676659dense_1026_75676661*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658¨
"dense_1027/StatefulPartitionedCallStatefulPartitionedCall+dense_1026/StatefulPartitionedCall:output:0dense_1027_75676676dense_1027_75676678*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675¨
"dense_1028/StatefulPartitionedCallStatefulPartitionedCall+dense_1027/StatefulPartitionedCall:output:0dense_1028_75676693dense_1028_75676695*
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692¨
"dense_1029/StatefulPartitionedCallStatefulPartitionedCall+dense_1028/StatefulPartitionedCall:output:0dense_1029_75676710dense_1029_75676712*
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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709z
IdentityIdentity+dense_1029/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_186/StatefulPartitionedCall#^dense_1026/StatefulPartitionedCall#^dense_1027/StatefulPartitionedCall#^dense_1028/StatefulPartitionedCall#^dense_1029/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2H
"conv1d_186/StatefulPartitionedCall"conv1d_186/StatefulPartitionedCall2H
"dense_1026/StatefulPartitionedCall"dense_1026/StatefulPartitionedCall2H
"dense_1027/StatefulPartitionedCall"dense_1027/StatefulPartitionedCall2H
"dense_1028/StatefulPartitionedCall"dense_1028/StatefulPartitionedCall2H
"dense_1029/StatefulPartitionedCall"dense_1029/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
µ

û
,__inference_model_333_layer_call_fn_75676900
	input_334
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCall	input_334unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_333_layer_call_and_return_conditional_losses_75676852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334
Î
û
$__inference__traced_restore_75677506
file_prefix8
"assignvariableop_conv1d_186_kernel:0
"assignvariableop_1_conv1d_186_bias:7
$assignvariableop_2_dense_1026_kernel:	1
"assignvariableop_3_dense_1026_bias:	7
$assignvariableop_4_dense_1027_kernel:	@0
"assignvariableop_5_dense_1027_bias:@6
$assignvariableop_6_dense_1028_kernel:@ 0
"assignvariableop_7_dense_1028_bias: 6
$assignvariableop_8_dense_1029_kernel: 0
"assignvariableop_9_dense_1029_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: B
,assignvariableop_17_adam_conv1d_186_kernel_m:8
*assignvariableop_18_adam_conv1d_186_bias_m:?
,assignvariableop_19_adam_dense_1026_kernel_m:	9
*assignvariableop_20_adam_dense_1026_bias_m:	?
,assignvariableop_21_adam_dense_1027_kernel_m:	@8
*assignvariableop_22_adam_dense_1027_bias_m:@>
,assignvariableop_23_adam_dense_1028_kernel_m:@ 8
*assignvariableop_24_adam_dense_1028_bias_m: >
,assignvariableop_25_adam_dense_1029_kernel_m: 8
*assignvariableop_26_adam_dense_1029_bias_m:B
,assignvariableop_27_adam_conv1d_186_kernel_v:8
*assignvariableop_28_adam_conv1d_186_bias_v:?
,assignvariableop_29_adam_dense_1026_kernel_v:	9
*assignvariableop_30_adam_dense_1026_bias_v:	?
,assignvariableop_31_adam_dense_1027_kernel_v:	@8
*assignvariableop_32_adam_dense_1027_bias_v:@>
,assignvariableop_33_adam_dense_1028_kernel_v:@ 8
*assignvariableop_34_adam_dense_1028_bias_v: >
,assignvariableop_35_adam_dense_1029_kernel_v: 8
*assignvariableop_36_adam_dense_1029_bias_v:
identity_38¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¦
valueB&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¼
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ß
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_conv1d_186_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv1d_186_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_1026_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_1026_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_1027_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_1027_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_1028_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_1028_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_1029_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_1029_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv1d_186_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv1d_186_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_1026_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_1026_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_1027_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_1027_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_1028_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_1028_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_dense_1029_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_1029_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv1d_186_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv1d_186_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_1026_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_1026_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_dense_1027_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_1027_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_dense_1028_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_1028_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_dense_1029_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_1029_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ý
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ê
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
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
Ì

H__inference_conv1d_186_layer_call_and_return_conditional_losses_75677160

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
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

"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ù
H__inference_dense_1028_layer_call_and_return_conditional_losses_75677231

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
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
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ù
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
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
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 

G__inference_model_333_layer_call_and_return_conditional_losses_75676930
	input_334)
conv1d_186_75676903:!
conv1d_186_75676905:&
dense_1026_75676909:	"
dense_1026_75676911:	&
dense_1027_75676914:	@!
dense_1027_75676916:@%
dense_1028_75676919:@ !
dense_1028_75676921: %
dense_1029_75676924: !
dense_1029_75676926:
identity¢"conv1d_186/StatefulPartitionedCall¢"dense_1026/StatefulPartitionedCall¢"dense_1027/StatefulPartitionedCall¢"dense_1028/StatefulPartitionedCall¢"dense_1029/StatefulPartitionedCall
"conv1d_186/StatefulPartitionedCallStatefulPartitionedCall	input_334conv1d_186_75676903conv1d_186_75676905*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75676633ê
flatten_186/PartitionedCallPartitionedCall+conv1d_186/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645¢
"dense_1026/StatefulPartitionedCallStatefulPartitionedCall$flatten_186/PartitionedCall:output:0dense_1026_75676909dense_1026_75676911*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1026_layer_call_and_return_conditional_losses_75676658¨
"dense_1027/StatefulPartitionedCallStatefulPartitionedCall+dense_1026/StatefulPartitionedCall:output:0dense_1027_75676914dense_1027_75676916*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675¨
"dense_1028/StatefulPartitionedCallStatefulPartitionedCall+dense_1027/StatefulPartitionedCall:output:0dense_1028_75676919dense_1028_75676921*
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75676692¨
"dense_1029/StatefulPartitionedCallStatefulPartitionedCall+dense_1028/StatefulPartitionedCall:output:0dense_1029_75676924dense_1029_75676926*
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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75676709z
IdentityIdentity+dense_1029/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_186/StatefulPartitionedCall#^dense_1026/StatefulPartitionedCall#^dense_1027/StatefulPartitionedCall#^dense_1028/StatefulPartitionedCall#^dense_1029/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2H
"conv1d_186/StatefulPartitionedCall"conv1d_186/StatefulPartitionedCall2H
"dense_1026/StatefulPartitionedCall"dense_1026/StatefulPartitionedCall2H
"dense_1027/StatefulPartitionedCall"dense_1027/StatefulPartitionedCall2H
"dense_1028/StatefulPartitionedCall"dense_1028/StatefulPartitionedCall2H
"dense_1029/StatefulPartitionedCall"dense_1029/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334
µ

û
,__inference_model_333_layer_call_fn_75676739
	input_334
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCall	input_334unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_333_layer_call_and_return_conditional_losses_75676716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334
Á
e
I__inference_flatten_186_layer_call_and_return_conditional_losses_75676645

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ú
H__inference_dense_1027_layer_call_and_return_conditional_losses_75676675

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É7
½
G__inference_model_333_layer_call_and_return_conditional_losses_75677089

inputsL
6conv1d_186_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_186_biasadd_readvariableop_resource:<
)dense_1026_matmul_readvariableop_resource:	9
*dense_1026_biasadd_readvariableop_resource:	<
)dense_1027_matmul_readvariableop_resource:	@8
*dense_1027_biasadd_readvariableop_resource:@;
)dense_1028_matmul_readvariableop_resource:@ 8
*dense_1028_biasadd_readvariableop_resource: ;
)dense_1029_matmul_readvariableop_resource: 8
*dense_1029_biasadd_readvariableop_resource:
identity¢!conv1d_186/BiasAdd/ReadVariableOp¢-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp¢!dense_1026/BiasAdd/ReadVariableOp¢ dense_1026/MatMul/ReadVariableOp¢!dense_1027/BiasAdd/ReadVariableOp¢ dense_1027/MatMul/ReadVariableOp¢!dense_1028/BiasAdd/ReadVariableOp¢ dense_1028/MatMul/ReadVariableOp¢!dense_1029/BiasAdd/ReadVariableOp¢ dense_1029/MatMul/ReadVariableOpk
 conv1d_186/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
conv1d_186/Conv1D/ExpandDims
ExpandDimsinputs)conv1d_186/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_186_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_186/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_186/Conv1D/ExpandDims_1
ExpandDims5conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_186/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_186/Conv1DConv2D%conv1d_186/Conv1D/ExpandDims:output:0'conv1d_186/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_186/Conv1D/SqueezeSqueezeconv1d_186/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_186/BiasAdd/ReadVariableOpReadVariableOp*conv1d_186_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_186/BiasAddBiasAdd"conv1d_186/Conv1D/Squeeze:output:0)conv1d_186/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_186/ReluReluconv1d_186/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
flatten_186/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_186/ReshapeReshapeconv1d_186/Relu:activations:0flatten_186/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1026/MatMul/ReadVariableOpReadVariableOp)dense_1026_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_1026/MatMulMatMulflatten_186/Reshape:output:0(dense_1026/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1026/BiasAdd/ReadVariableOpReadVariableOp*dense_1026_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1026/BiasAddBiasAdddense_1026/MatMul:product:0)dense_1026/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
dense_1026/ReluReludense_1026/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_1027/MatMul/ReadVariableOpReadVariableOp)dense_1027_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_1027/MatMulMatMuldense_1026/Relu:activations:0(dense_1027/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!dense_1027/BiasAdd/ReadVariableOpReadVariableOp*dense_1027_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_1027/BiasAddBiasAdddense_1027/MatMul:product:0)dense_1027/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
dense_1027/ReluReludense_1027/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_1028/MatMul/ReadVariableOpReadVariableOp)dense_1028_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1028/MatMulMatMuldense_1027/Relu:activations:0(dense_1028/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!dense_1028/BiasAdd/ReadVariableOpReadVariableOp*dense_1028_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1028/BiasAddBiasAdddense_1028/MatMul:product:0)dense_1028/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
dense_1028/ReluReludense_1028/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 dense_1029/MatMul/ReadVariableOpReadVariableOp)dense_1029_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1029/MatMulMatMuldense_1028/Relu:activations:0(dense_1029/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_1029/BiasAdd/ReadVariableOpReadVariableOp*dense_1029_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1029/BiasAddBiasAdddense_1029/MatMul:product:0)dense_1029/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
dense_1029/SigmoidSigmoiddense_1029/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentitydense_1029/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^conv1d_186/BiasAdd/ReadVariableOp.^conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp"^dense_1026/BiasAdd/ReadVariableOp!^dense_1026/MatMul/ReadVariableOp"^dense_1027/BiasAdd/ReadVariableOp!^dense_1027/MatMul/ReadVariableOp"^dense_1028/BiasAdd/ReadVariableOp!^dense_1028/MatMul/ReadVariableOp"^dense_1029/BiasAdd/ReadVariableOp!^dense_1029/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2F
!conv1d_186/BiasAdd/ReadVariableOp!conv1d_186/BiasAdd/ReadVariableOp2^
-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_186/Conv1D/ExpandDims_1/ReadVariableOp2F
!dense_1026/BiasAdd/ReadVariableOp!dense_1026/BiasAdd/ReadVariableOp2D
 dense_1026/MatMul/ReadVariableOp dense_1026/MatMul/ReadVariableOp2F
!dense_1027/BiasAdd/ReadVariableOp!dense_1027/BiasAdd/ReadVariableOp2D
 dense_1027/MatMul/ReadVariableOp dense_1027/MatMul/ReadVariableOp2F
!dense_1028/BiasAdd/ReadVariableOp!dense_1028/BiasAdd/ReadVariableOp2D
 dense_1028/MatMul/ReadVariableOp dense_1028/MatMul/ReadVariableOp2F
!dense_1029/BiasAdd/ReadVariableOp!dense_1029/BiasAdd/ReadVariableOp2D
 dense_1029/MatMul/ReadVariableOp dense_1029/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


õ
&__inference_signature_wrapper_75676993
	input_334
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCall	input_334unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 *,
f'R%
#__inference__wrapped_model_75676610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#
_user_specified_name	input_334"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
C
	input_3346
serving_default_input_334:0ÿÿÿÿÿÿÿÿÿ
>

dense_10290
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÿ¥
À
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ý
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
»
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
»
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
»
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias"
_tf_keras_layer
f
0
1
&2
'3
.4
/5
66
77
>8
?9"
trackable_list_wrapper
f
0
1
&2
'3
.4
/5
66
77
>8
?9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
å
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32ú
,__inference_model_333_layer_call_fn_75676739
,__inference_model_333_layer_call_fn_75677018
,__inference_model_333_layer_call_fn_75677043
,__inference_model_333_layer_call_fn_75676900¿
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
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
Ñ
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32æ
G__inference_model_333_layer_call_and_return_conditional_losses_75677089
G__inference_model_333_layer_call_and_return_conditional_losses_75677135
G__inference_model_333_layer_call_and_return_conditional_losses_75676930
G__inference_model_333_layer_call_and_return_conditional_losses_75676960¿
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
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
ÐBÍ
#__inference__wrapped_model_75676610	input_334"
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

Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemm&m'm.m/m6m7m>m?mvv&v'v.v/v6v7v>v?v"
	optimizer
,
Rserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ñ
Xtrace_02Ô
-__inference_conv1d_186_layer_call_fn_75677144¢
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
 zXtrace_0

Ytrace_02ï
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75677160¢
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
 zYtrace_0
':%2conv1d_186/kernel
:2conv1d_186/bias
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
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò
_trace_02Õ
.__inference_flatten_186_layer_call_fn_75677165¢
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
 z_trace_0

`trace_02ð
I__inference_flatten_186_layer_call_and_return_conditional_losses_75677171¢
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
 z`trace_0
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ñ
ftrace_02Ô
-__inference_dense_1026_layer_call_fn_75677180¢
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
 zftrace_0

gtrace_02ï
H__inference_dense_1026_layer_call_and_return_conditional_losses_75677191¢
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
 zgtrace_0
$:"	2dense_1026/kernel
:2dense_1026/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
ñ
mtrace_02Ô
-__inference_dense_1027_layer_call_fn_75677200¢
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
 zmtrace_0

ntrace_02ï
H__inference_dense_1027_layer_call_and_return_conditional_losses_75677211¢
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
 zntrace_0
$:"	@2dense_1027/kernel
:@2dense_1027/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ñ
ttrace_02Ô
-__inference_dense_1028_layer_call_fn_75677220¢
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
 zttrace_0

utrace_02ï
H__inference_dense_1028_layer_call_and_return_conditional_losses_75677231¢
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
 zutrace_0
#:!@ 2dense_1028/kernel
: 2dense_1028/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ñ
{trace_02Ô
-__inference_dense_1029_layer_call_fn_75677240¢
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
 z{trace_0

|trace_02ï
H__inference_dense_1029_layer_call_and_return_conditional_losses_75677251¢
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
 z|trace_0
#:! 2dense_1029/kernel
:2dense_1029/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
}0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
,__inference_model_333_layer_call_fn_75676739	input_334"¿
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
,__inference_model_333_layer_call_fn_75677018inputs"¿
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
,__inference_model_333_layer_call_fn_75677043inputs"¿
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
,__inference_model_333_layer_call_fn_75676900	input_334"¿
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
G__inference_model_333_layer_call_and_return_conditional_losses_75677089inputs"¿
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
G__inference_model_333_layer_call_and_return_conditional_losses_75677135inputs"¿
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
G__inference_model_333_layer_call_and_return_conditional_losses_75676930	input_334"¿
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
G__inference_model_333_layer_call_and_return_conditional_losses_75676960	input_334"¿
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
&__inference_signature_wrapper_75676993	input_334"
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
-__inference_conv1d_186_layer_call_fn_75677144inputs"¢
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
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75677160inputs"¢
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
.__inference_flatten_186_layer_call_fn_75677165inputs"¢
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
I__inference_flatten_186_layer_call_and_return_conditional_losses_75677171inputs"¢
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
-__inference_dense_1026_layer_call_fn_75677180inputs"¢
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
H__inference_dense_1026_layer_call_and_return_conditional_losses_75677191inputs"¢
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
-__inference_dense_1027_layer_call_fn_75677200inputs"¢
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
H__inference_dense_1027_layer_call_and_return_conditional_losses_75677211inputs"¢
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
-__inference_dense_1028_layer_call_fn_75677220inputs"¢
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
H__inference_dense_1028_layer_call_and_return_conditional_losses_75677231inputs"¢
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
-__inference_dense_1029_layer_call_fn_75677240inputs"¢
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
H__inference_dense_1029_layer_call_and_return_conditional_losses_75677251inputs"¢
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
P
~	variables
	keras_api

total

count"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
:  (2total
:  (2count
,:*2Adam/conv1d_186/kernel/m
": 2Adam/conv1d_186/bias/m
):'	2Adam/dense_1026/kernel/m
#:!2Adam/dense_1026/bias/m
):'	@2Adam/dense_1027/kernel/m
": @2Adam/dense_1027/bias/m
(:&@ 2Adam/dense_1028/kernel/m
":  2Adam/dense_1028/bias/m
(:& 2Adam/dense_1029/kernel/m
": 2Adam/dense_1029/bias/m
,:*2Adam/conv1d_186/kernel/v
": 2Adam/conv1d_186/bias/v
):'	2Adam/dense_1026/kernel/v
#:!2Adam/dense_1026/bias/v
):'	@2Adam/dense_1027/kernel/v
": @2Adam/dense_1027/bias/v
(:&@ 2Adam/dense_1028/kernel/v
":  2Adam/dense_1028/bias/v
(:& 2Adam/dense_1029/kernel/v
": 2Adam/dense_1029/bias/v¤
#__inference__wrapped_model_75676610}
&'./67>?6¢3
,¢)
'$
	input_334ÿÿÿÿÿÿÿÿÿ

ª "7ª4
2

dense_1029$!

dense_1029ÿÿÿÿÿÿÿÿÿ°
H__inference_conv1d_186_layer_call_and_return_conditional_losses_75677160d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_conv1d_186_layer_call_fn_75677144W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ©
H__inference_dense_1026_layer_call_and_return_conditional_losses_75677191]&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_1026_layer_call_fn_75677180P&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
H__inference_dense_1027_layer_call_and_return_conditional_losses_75677211]./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_dense_1027_layer_call_fn_75677200P./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¨
H__inference_dense_1028_layer_call_and_return_conditional_losses_75677231\67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
-__inference_dense_1028_layer_call_fn_75677220O67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¨
H__inference_dense_1029_layer_call_and_return_conditional_losses_75677251\>?/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_1029_layer_call_fn_75677240O>?/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ©
I__inference_flatten_186_layer_call_and_return_conditional_losses_75677171\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_flatten_186_layer_call_fn_75677165O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
G__inference_model_333_layer_call_and_return_conditional_losses_75676930s
&'./67>?>¢;
4¢1
'$
	input_334ÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
G__inference_model_333_layer_call_and_return_conditional_losses_75676960s
&'./67>?>¢;
4¢1
'$
	input_334ÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
G__inference_model_333_layer_call_and_return_conditional_losses_75677089p
&'./67>?;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
G__inference_model_333_layer_call_and_return_conditional_losses_75677135p
&'./67>?;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_model_333_layer_call_fn_75676739f
&'./67>?>¢;
4¢1
'$
	input_334ÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_333_layer_call_fn_75676900f
&'./67>?>¢;
4¢1
'$
	input_334ÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_333_layer_call_fn_75677018c
&'./67>?;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_model_333_layer_call_fn_75677043c
&'./67>?;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿµ
&__inference_signature_wrapper_75676993
&'./67>?C¢@
¢ 
9ª6
4
	input_334'$
	input_334ÿÿÿÿÿÿÿÿÿ
"7ª4
2

dense_1029$!

dense_1029ÿÿÿÿÿÿÿÿÿ