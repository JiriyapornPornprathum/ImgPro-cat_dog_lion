■«	
■╬
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
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
«
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring ѕе
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ЧЬ
ђ
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:*
dtype0
і
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
љ­*'
shared_nameAdam/dense_21/kernel/v
Ѓ
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v* 
_output_shapes
:
љ­*
dtype0
ђ
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:*
dtype0
ѕ
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_20/kernel/v
Ђ
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:*
dtype0
ђ
Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0
Ѕ
Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_19/kernel/v
ѓ
*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes
:	ђ*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:ђ*
dtype0
Ї
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/conv2d/kernel/v
є
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:ђ*
dtype0
ђ
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:*
dtype0
і
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
љ­*'
shared_nameAdam/dense_21/kernel/m
Ѓ
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m* 
_output_shapes
:
љ­*
dtype0
ђ
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_20/kernel/m
Ђ
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:*
dtype0
ђ
Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0
Ѕ
Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_19/kernel/m
ѓ
*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes
:	ђ*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:ђ*
dtype0
Ї
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/conv2d/kernel/m
є
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:ђ*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
љ­* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
љ­*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
{
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ* 
shared_namedense_19/kernel
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes
:	ђ*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:ђ*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:ђ*
dtype0
Њ
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         ђђ*
dtype0*&
shape:         ђђ
┴
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference_signature_wrapper_6507

NoOpNoOp
ЉB
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠A
value┬AB┐A BИA
ѓ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
д
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
д
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
ј
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
д
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias*
<
0
1
%2
&3
-4
.5
;6
<7*
<
0
1
%2
&3
-4
.5
;6
<7*
* 
░
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
* 
С
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratemЁmє%mЄ&mѕ-mЅ.mі;mІ<mїvЇvј%vЈ&vљ-vЉ.vњ;vЊ<vћ*

Oserving_default* 

0
1*

0
1*
* 
Њ
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Utrace_0* 

Vtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

\trace_0* 

]trace_0* 

%0
&1*

%0
&1*
* 
Њ
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
Њ
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
_Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Љ
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

qtrace_0* 

rtrace_0* 

;0
<1*

;0
<1*
* 
Њ
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
_Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

z0
{1*
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
8
|	variables
}	keras_api
	~total
	count*
M
ђ	variables
Ђ	keras_api

ѓtotal

Ѓcount
ё
_fn_kwargs*

~0
1*

|	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ѓ0
Ѓ1*

ђ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
ђz
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *&
f!R
__inference__traced_save_6956
■
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/dense_19/kernel/mAdam/dense_19/bias/mAdam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/dense_19/kernel/vAdam/dense_19/bias/vAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__traced_restore_7065цо
Т
щ
B__inference_dense_20_layer_call_and_return_conditional_losses_6240

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:         ??і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ??z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
Ж
ю
%__inference_conv2d_layer_call_fn_6704

inputs"
unknown:ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_6167x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ~~ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ХS
╬
F__inference_sequential_7_layer_call_and_return_conditional_losses_6695

inputs@
%conv2d_conv2d_readvariableop_resource:ђ5
&conv2d_biasadd_readvariableop_resource:	ђ=
*dense_19_tensordot_readvariableop_resource:	ђ6
(dense_19_biasadd_readvariableop_resource:<
*dense_20_tensordot_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:;
'dense_21_matmul_readvariableop_resource:
љ­6
(dense_21_biasadd_readvariableop_resource:
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбdense_19/BiasAdd/ReadVariableOpб!dense_19/Tensordot/ReadVariableOpбdense_20/BiasAdd/ReadVariableOpб!dense_20/Tensordot/ReadVariableOpбdense_21/BiasAdd/ReadVariableOpбdense_21/MatMul/ReadVariableOpІ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ*
dtype0Е
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђ*
paddingVALID*
strides
Ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Њ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         ~~ђЕ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:         ??ђ*
ksize
*
paddingVALID*
strides
Ї
!dense_19/Tensordot/ReadVariableOpReadVariableOp*dense_19_tensordot_readvariableop_resource*
_output_shapes
:	ђ*
dtype0a
dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          f
dense_19/Tensordot/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:b
 dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_19/Tensordot/GatherV2GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/free:output:0)dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : с
dense_19/Tensordot/GatherV2_1GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/axes:output:0+dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ѕ
dense_19/Tensordot/ProdProd$dense_19/Tensordot/GatherV2:output:0!dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ј
dense_19/Tensordot/Prod_1Prod&dense_19/Tensordot/GatherV2_1:output:0#dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : └
dense_19/Tensordot/concatConcatV2 dense_19/Tensordot/free:output:0 dense_19/Tensordot/axes:output:0'dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ћ
dense_19/Tensordot/stackPack dense_19/Tensordot/Prod:output:0"dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:е
dense_19/Tensordot/transpose	Transposemax_pooling2d/MaxPool:output:0"dense_19/Tensordot/concat:output:0*
T0*0
_output_shapes
:         ??ђЦ
dense_19/Tensordot/ReshapeReshape dense_19/Tensordot/transpose:y:0!dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ц
dense_19/Tensordot/MatMulMatMul#dense_19/Tensordot/Reshape:output:0)dense_19/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
dense_19/Tensordot/concat_1ConcatV2$dense_19/Tensordot/GatherV2:output:0#dense_19/Tensordot/Const_2:output:0)dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:б
dense_19/TensordotReshape#dense_19/Tensordot/MatMul:product:0$dense_19/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ё
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
dense_19/BiasAddBiasAdddense_19/Tensordot:output:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??ї
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0a
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          a
dense_20/Tensordot/ShapeShapedense_19/BiasAdd:output:0*
T0*
_output_shapes
:b
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : с
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ѕ
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ј
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : └
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ћ
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:б
dense_20/Tensordot/transpose	Transposedense_19/BiasAdd:output:0"dense_20/Tensordot/concat:output:0*
T0*/
_output_shapes
:         ??Ц
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ц
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:б
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ё
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    Э  Ё
flatten_7/ReshapeReshapedense_20/BiasAdd:output:0flatten_7/Const:output:0*
T0*)
_output_shapes
:         љ­ѕ
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
љ­*
dtype0Ј
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_21/SoftmaxSoftmaxdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp"^dense_19/Tensordot/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2F
!dense_19/Tensordot/ReadVariableOp!dense_19/Tensordot/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
д

ш
B__inference_dense_21_layer_call_and_return_conditional_losses_6265

inputs2
matmul_readvariableop_resource:
љ­-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љ­*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         љ­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         љ­
 
_user_specified_nameinputs
К
_
C__inference_flatten_7_layer_call_and_return_conditional_losses_6814

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    Э  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         љ­Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         љ­"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ??:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
с	
К
+__inference_sequential_7_layer_call_fn_6528

inputs"
unknown:ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
љ­
	unknown_6:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_6272o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ХS
╬
F__inference_sequential_7_layer_call_and_return_conditional_losses_6622

inputs@
%conv2d_conv2d_readvariableop_resource:ђ5
&conv2d_biasadd_readvariableop_resource:	ђ=
*dense_19_tensordot_readvariableop_resource:	ђ6
(dense_19_biasadd_readvariableop_resource:<
*dense_20_tensordot_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:;
'dense_21_matmul_readvariableop_resource:
љ­6
(dense_21_biasadd_readvariableop_resource:
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбdense_19/BiasAdd/ReadVariableOpб!dense_19/Tensordot/ReadVariableOpбdense_20/BiasAdd/ReadVariableOpб!dense_20/Tensordot/ReadVariableOpбdense_21/BiasAdd/ReadVariableOpбdense_21/MatMul/ReadVariableOpІ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ*
dtype0Е
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђ*
paddingVALID*
strides
Ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Њ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         ~~ђЕ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:         ??ђ*
ksize
*
paddingVALID*
strides
Ї
!dense_19/Tensordot/ReadVariableOpReadVariableOp*dense_19_tensordot_readvariableop_resource*
_output_shapes
:	ђ*
dtype0a
dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          f
dense_19/Tensordot/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:b
 dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_19/Tensordot/GatherV2GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/free:output:0)dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : с
dense_19/Tensordot/GatherV2_1GatherV2!dense_19/Tensordot/Shape:output:0 dense_19/Tensordot/axes:output:0+dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ѕ
dense_19/Tensordot/ProdProd$dense_19/Tensordot/GatherV2:output:0!dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ј
dense_19/Tensordot/Prod_1Prod&dense_19/Tensordot/GatherV2_1:output:0#dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : └
dense_19/Tensordot/concatConcatV2 dense_19/Tensordot/free:output:0 dense_19/Tensordot/axes:output:0'dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ћ
dense_19/Tensordot/stackPack dense_19/Tensordot/Prod:output:0"dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:е
dense_19/Tensordot/transpose	Transposemax_pooling2d/MaxPool:output:0"dense_19/Tensordot/concat:output:0*
T0*0
_output_shapes
:         ??ђЦ
dense_19/Tensordot/ReshapeReshape dense_19/Tensordot/transpose:y:0!dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ц
dense_19/Tensordot/MatMulMatMul#dense_19/Tensordot/Reshape:output:0)dense_19/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
dense_19/Tensordot/concat_1ConcatV2$dense_19/Tensordot/GatherV2:output:0#dense_19/Tensordot/Const_2:output:0)dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:б
dense_19/TensordotReshape#dense_19/Tensordot/MatMul:product:0$dense_19/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ё
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
dense_19/BiasAddBiasAdddense_19/Tensordot:output:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??ї
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0a
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          a
dense_20/Tensordot/ShapeShapedense_19/BiasAdd:output:0*
T0*
_output_shapes
:b
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : с
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ѕ
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ј
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : └
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ћ
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:б
dense_20/Tensordot/transpose	Transposedense_19/BiasAdd:output:0"dense_20/Tensordot/concat:output:0*
T0*/
_output_shapes
:         ??Ц
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ц
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:б
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ё
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    Э  Ё
flatten_7/ReshapeReshapedense_20/BiasAdd:output:0flatten_7/Const:output:0*
T0*)
_output_shapes
:         љ­ѕ
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
љ­*
dtype0Ј
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_21/SoftmaxSoftmaxdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp"^dense_19/Tensordot/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2F
!dense_19/Tensordot/ReadVariableOp!dense_19/Tensordot/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
в
Щ
B__inference_dense_19_layer_call_and_return_conditional_losses_6204

inputs4
!tensordot_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	ђ*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:         ??ђі
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ??z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ??ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:         ??ђ
 
_user_specified_nameinputs
ХF
▓
__inference__traced_save_6956
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: »
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ћ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*њ
_input_shapesђ
§: :ђ:ђ:	ђ::::
љ­:: : : : : : : : : :ђ:ђ:	ђ::::
љ­::ђ:ђ:	ђ::::
љ­:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:ђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
љ­: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
љ­: 

_output_shapes
::-)
'
_output_shapes
:ђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::& "
 
_output_shapes
:
љ­: !

_output_shapes
::"

_output_shapes
: 
Т
щ
B__inference_dense_20_layer_call_and_return_conditional_losses_6803

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:         ??і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ??z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
в
Щ
B__inference_dense_19_layer_call_and_return_conditional_losses_6764

inputs4
!tensordot_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	ђ*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:         ??ђі
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ??z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ??ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:         ??ђ
 
_user_specified_nameinputs
╚e
§
__inference__wrapped_model_6137
conv2d_inputM
2sequential_7_conv2d_conv2d_readvariableop_resource:ђB
3sequential_7_conv2d_biasadd_readvariableop_resource:	ђJ
7sequential_7_dense_19_tensordot_readvariableop_resource:	ђC
5sequential_7_dense_19_biasadd_readvariableop_resource:I
7sequential_7_dense_20_tensordot_readvariableop_resource:C
5sequential_7_dense_20_biasadd_readvariableop_resource:H
4sequential_7_dense_21_matmul_readvariableop_resource:
љ­C
5sequential_7_dense_21_biasadd_readvariableop_resource:
identityѕб*sequential_7/conv2d/BiasAdd/ReadVariableOpб)sequential_7/conv2d/Conv2D/ReadVariableOpб,sequential_7/dense_19/BiasAdd/ReadVariableOpб.sequential_7/dense_19/Tensordot/ReadVariableOpб,sequential_7/dense_20/BiasAdd/ReadVariableOpб.sequential_7/dense_20/Tensordot/ReadVariableOpб,sequential_7/dense_21/BiasAdd/ReadVariableOpб+sequential_7/dense_21/MatMul/ReadVariableOpЦ
)sequential_7/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_7_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ*
dtype0╔
sequential_7/conv2d/Conv2DConv2Dconv2d_input1sequential_7/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђ*
paddingVALID*
strides
Џ
*sequential_7/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_7_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0║
sequential_7/conv2d/BiasAddBiasAdd#sequential_7/conv2d/Conv2D:output:02sequential_7/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђЂ
sequential_7/conv2d/ReluRelu$sequential_7/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         ~~ђ├
"sequential_7/max_pooling2d/MaxPoolMaxPool&sequential_7/conv2d/Relu:activations:0*0
_output_shapes
:         ??ђ*
ksize
*
paddingVALID*
strides
Д
.sequential_7/dense_19/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_19_tensordot_readvariableop_resource*
_output_shapes
:	ђ*
dtype0n
$sequential_7/dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
$sequential_7/dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          ђ
%sequential_7/dense_19/Tensordot/ShapeShape+sequential_7/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:o
-sequential_7/dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Њ
(sequential_7/dense_19/Tensordot/GatherV2GatherV2.sequential_7/dense_19/Tensordot/Shape:output:0-sequential_7/dense_19/Tensordot/free:output:06sequential_7/dense_19/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_7/dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ќ
*sequential_7/dense_19/Tensordot/GatherV2_1GatherV2.sequential_7/dense_19/Tensordot/Shape:output:0-sequential_7/dense_19/Tensordot/axes:output:08sequential_7/dense_19/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_7/dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
$sequential_7/dense_19/Tensordot/ProdProd1sequential_7/dense_19/Tensordot/GatherV2:output:0.sequential_7/dense_19/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_7/dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Х
&sequential_7/dense_19/Tensordot/Prod_1Prod3sequential_7/dense_19/Tensordot/GatherV2_1:output:00sequential_7/dense_19/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_7/dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&sequential_7/dense_19/Tensordot/concatConcatV2-sequential_7/dense_19/Tensordot/free:output:0-sequential_7/dense_19/Tensordot/axes:output:04sequential_7/dense_19/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:╗
%sequential_7/dense_19/Tensordot/stackPack-sequential_7/dense_19/Tensordot/Prod:output:0/sequential_7/dense_19/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¤
)sequential_7/dense_19/Tensordot/transpose	Transpose+sequential_7/max_pooling2d/MaxPool:output:0/sequential_7/dense_19/Tensordot/concat:output:0*
T0*0
_output_shapes
:         ??ђ╠
'sequential_7/dense_19/Tensordot/ReshapeReshape-sequential_7/dense_19/Tensordot/transpose:y:0.sequential_7/dense_19/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╠
&sequential_7/dense_19/Tensordot/MatMulMatMul0sequential_7/dense_19/Tensordot/Reshape:output:06sequential_7/dense_19/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         q
'sequential_7/dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_7/dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
(sequential_7/dense_19/Tensordot/concat_1ConcatV21sequential_7/dense_19/Tensordot/GatherV2:output:00sequential_7/dense_19/Tensordot/Const_2:output:06sequential_7/dense_19/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╔
sequential_7/dense_19/TensordotReshape0sequential_7/dense_19/Tensordot/MatMul:product:01sequential_7/dense_19/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ъ
,sequential_7/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┬
sequential_7/dense_19/BiasAddBiasAdd(sequential_7/dense_19/Tensordot:output:04sequential_7/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??д
.sequential_7/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_20_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0n
$sequential_7/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
$sequential_7/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          {
%sequential_7/dense_20/Tensordot/ShapeShape&sequential_7/dense_19/BiasAdd:output:0*
T0*
_output_shapes
:o
-sequential_7/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Њ
(sequential_7/dense_20/Tensordot/GatherV2GatherV2.sequential_7/dense_20/Tensordot/Shape:output:0-sequential_7/dense_20/Tensordot/free:output:06sequential_7/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_7/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ќ
*sequential_7/dense_20/Tensordot/GatherV2_1GatherV2.sequential_7/dense_20/Tensordot/Shape:output:0-sequential_7/dense_20/Tensordot/axes:output:08sequential_7/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_7/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
$sequential_7/dense_20/Tensordot/ProdProd1sequential_7/dense_20/Tensordot/GatherV2:output:0.sequential_7/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_7/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Х
&sequential_7/dense_20/Tensordot/Prod_1Prod3sequential_7/dense_20/Tensordot/GatherV2_1:output:00sequential_7/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_7/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&sequential_7/dense_20/Tensordot/concatConcatV2-sequential_7/dense_20/Tensordot/free:output:0-sequential_7/dense_20/Tensordot/axes:output:04sequential_7/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:╗
%sequential_7/dense_20/Tensordot/stackPack-sequential_7/dense_20/Tensordot/Prod:output:0/sequential_7/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╔
)sequential_7/dense_20/Tensordot/transpose	Transpose&sequential_7/dense_19/BiasAdd:output:0/sequential_7/dense_20/Tensordot/concat:output:0*
T0*/
_output_shapes
:         ??╠
'sequential_7/dense_20/Tensordot/ReshapeReshape-sequential_7/dense_20/Tensordot/transpose:y:0.sequential_7/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╠
&sequential_7/dense_20/Tensordot/MatMulMatMul0sequential_7/dense_20/Tensordot/Reshape:output:06sequential_7/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         q
'sequential_7/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_7/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
(sequential_7/dense_20/Tensordot/concat_1ConcatV21sequential_7/dense_20/Tensordot/GatherV2:output:00sequential_7/dense_20/Tensordot/Const_2:output:06sequential_7/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╔
sequential_7/dense_20/TensordotReshape0sequential_7/dense_20/Tensordot/MatMul:product:01sequential_7/dense_20/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:         ??ъ
,sequential_7/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┬
sequential_7/dense_20/BiasAddBiasAdd(sequential_7/dense_20/Tensordot:output:04sequential_7/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ??m
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    Э  г
sequential_7/flatten_7/ReshapeReshape&sequential_7/dense_20/BiasAdd:output:0%sequential_7/flatten_7/Const:output:0*
T0*)
_output_shapes
:         љ­б
+sequential_7/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
љ­*
dtype0Х
sequential_7/dense_21/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_7/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_7/dense_21/BiasAddBiasAdd&sequential_7/dense_21/MatMul:product:04sequential_7/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
sequential_7/dense_21/SoftmaxSoftmax&sequential_7/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_7/dense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╝
NoOpNoOp+^sequential_7/conv2d/BiasAdd/ReadVariableOp*^sequential_7/conv2d/Conv2D/ReadVariableOp-^sequential_7/dense_19/BiasAdd/ReadVariableOp/^sequential_7/dense_19/Tensordot/ReadVariableOp-^sequential_7/dense_20/BiasAdd/ReadVariableOp/^sequential_7/dense_20/Tensordot/ReadVariableOp-^sequential_7/dense_21/BiasAdd/ReadVariableOp,^sequential_7/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2X
*sequential_7/conv2d/BiasAdd/ReadVariableOp*sequential_7/conv2d/BiasAdd/ReadVariableOp2V
)sequential_7/conv2d/Conv2D/ReadVariableOp)sequential_7/conv2d/Conv2D/ReadVariableOp2\
,sequential_7/dense_19/BiasAdd/ReadVariableOp,sequential_7/dense_19/BiasAdd/ReadVariableOp2`
.sequential_7/dense_19/Tensordot/ReadVariableOp.sequential_7/dense_19/Tensordot/ReadVariableOp2\
,sequential_7/dense_20/BiasAdd/ReadVariableOp,sequential_7/dense_20/BiasAdd/ReadVariableOp2`
.sequential_7/dense_20/Tensordot/ReadVariableOp.sequential_7/dense_20/Tensordot/ReadVariableOp2\
,sequential_7/dense_21/BiasAdd/ReadVariableOp,sequential_7/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_21/MatMul/ReadVariableOp+sequential_7/dense_21/MatMul/ReadVariableOp:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
ї
ч
@__inference_conv2d_layer_call_and_return_conditional_losses_6715

inputs9
conv2d_readvariableop_resource:ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ~~ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ~~ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ш	
═
+__inference_sequential_7_layer_call_fn_6426
conv2d_input"
unknown:ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
љ­
	unknown_6:
identityѕбStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_6386o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
░
H
,__inference_max_pooling2d_layer_call_fn_6720

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
­
F__inference_sequential_7_layer_call_and_return_conditional_losses_6386

inputs&
conv2d_6363:ђ
conv2d_6365:	ђ 
dense_19_6369:	ђ
dense_19_6371:
dense_20_6374:
dense_20_6376:!
dense_21_6380:
љ­
dense_21_6382:
identityѕбconv2d/StatefulPartitionedCallб dense_19/StatefulPartitionedCallб dense_20/StatefulPartitionedCallб dense_21/StatefulPartitionedCallв
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6363conv2d_6365*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_6167Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146њ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_19_6369dense_19_6371*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_6204Ћ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_6374dense_20_6376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_6240П
flatten_7/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         љ­* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252є
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_21_6380dense_21_6382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_21_layer_call_and_return_conditional_losses_6265x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp^conv2d/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
р
Ћ
'__inference_dense_19_layer_call_fn_6734

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_6204w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ??`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ??ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ??ђ
 
_user_specified_nameinputs
й
Ш
F__inference_sequential_7_layer_call_and_return_conditional_losses_6478
conv2d_input&
conv2d_6455:ђ
conv2d_6457:	ђ 
dense_19_6461:	ђ
dense_19_6463:
dense_20_6466:
dense_20_6468:!
dense_21_6472:
љ­
dense_21_6474:
identityѕбconv2d/StatefulPartitionedCallб dense_19/StatefulPartitionedCallб dense_20/StatefulPartitionedCallб dense_21/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_6455conv2d_6457*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_6167Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146њ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_19_6461dense_19_6463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_6204Ћ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_6466dense_20_6468*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_6240П
flatten_7/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         љ­* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252є
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_21_6472dense_21_6474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_21_layer_call_and_return_conditional_losses_6265x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp^conv2d/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
Ј
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
­
F__inference_sequential_7_layer_call_and_return_conditional_losses_6272

inputs&
conv2d_6168:ђ
conv2d_6170:	ђ 
dense_19_6205:	ђ
dense_19_6207:
dense_20_6241:
dense_20_6243:!
dense_21_6266:
љ­
dense_21_6268:
identityѕбconv2d/StatefulPartitionedCallб dense_19/StatefulPartitionedCallб dense_20/StatefulPartitionedCallб dense_21/StatefulPartitionedCallв
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6168conv2d_6170*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_6167Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146њ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_19_6205dense_19_6207*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_6204Ћ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_6241dense_20_6243*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_6240П
flatten_7/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         љ­* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252є
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_21_6266dense_21_6268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_21_layer_call_and_return_conditional_losses_6265x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp^conv2d/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ш	
═
+__inference_sequential_7_layer_call_fn_6291
conv2d_input"
unknown:ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
љ­
	unknown_6:
identityѕбStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_6272o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
─
ќ
'__inference_dense_21_layer_call_fn_6823

inputs
unknown:
љ­
	unknown_0:
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_21_layer_call_and_return_conditional_losses_6265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         љ­: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         љ­
 
_user_specified_nameinputs
Ј
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6725

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
»
D
(__inference_flatten_7_layer_call_fn_6808

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         љ­* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         љ­"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ??:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
ї
ч
@__inference_conv2d_layer_call_and_return_conditional_losses_6167

inputs9
conv2d_readvariableop_resource:ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ~~ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ~~ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ~~ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
с	
К
+__inference_sequential_7_layer_call_fn_6549

inputs"
unknown:ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
љ­
	unknown_6:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_6386o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
я
ћ
'__inference_dense_20_layer_call_fn_6773

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_6240w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ??`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
┼	
─
"__inference_signature_wrapper_6507
conv2d_input"
unknown:ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
љ­
	unknown_6:
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__wrapped_model_6137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
К
_
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    Э  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         љ­Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         љ­"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ??:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
д

ш
B__inference_dense_21_layer_call_and_return_conditional_losses_6834

inputs2
matmul_readvariableop_resource:
љ­-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љ­*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         љ­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         љ­
 
_user_specified_nameinputs
й
Ш
F__inference_sequential_7_layer_call_and_return_conditional_losses_6452
conv2d_input&
conv2d_6429:ђ
conv2d_6431:	ђ 
dense_19_6435:	ђ
dense_19_6437:
dense_20_6440:
dense_20_6442:!
dense_21_6446:
љ­
dense_21_6448:
identityѕбconv2d/StatefulPartitionedCallб dense_19/StatefulPartitionedCallб dense_20/StatefulPartitionedCallб dense_21/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_6429conv2d_6431*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_6167Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6146њ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_19_6435dense_19_6437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_6204Ћ
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_6440dense_20_6442*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_6240П
flatten_7/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         љ­* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_6252є
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_21_6446dense_21_6448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_21_layer_call_and_return_conditional_losses_6265x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp^conv2d/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ђђ: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
ќё
с
 __inference__traced_restore_7065
file_prefix9
assignvariableop_conv2d_kernel:ђ-
assignvariableop_1_conv2d_bias:	ђ5
"assignvariableop_2_dense_19_kernel:	ђ.
 assignvariableop_3_dense_19_bias:4
"assignvariableop_4_dense_20_kernel:.
 assignvariableop_5_dense_20_bias:6
"assignvariableop_6_dense_21_kernel:
љ­.
 assignvariableop_7_dense_21_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: C
(assignvariableop_17_adam_conv2d_kernel_m:ђ5
&assignvariableop_18_adam_conv2d_bias_m:	ђ=
*assignvariableop_19_adam_dense_19_kernel_m:	ђ6
(assignvariableop_20_adam_dense_19_bias_m:<
*assignvariableop_21_adam_dense_20_kernel_m:6
(assignvariableop_22_adam_dense_20_bias_m:>
*assignvariableop_23_adam_dense_21_kernel_m:
љ­6
(assignvariableop_24_adam_dense_21_bias_m:C
(assignvariableop_25_adam_conv2d_kernel_v:ђ5
&assignvariableop_26_adam_conv2d_bias_v:	ђ=
*assignvariableop_27_adam_dense_19_kernel_v:	ђ6
(assignvariableop_28_adam_dense_19_bias_v:<
*assignvariableop_29_adam_dense_20_kernel_v:6
(assignvariableop_30_adam_dense_20_bias_v:>
*assignvariableop_31_adam_dense_21_kernel_v:
љ­6
(assignvariableop_32_adam_dense_21_bias_v:
identity_34ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9▓
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_20_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_20_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_21_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_21_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_conv2d_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_conv2d_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_19_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_19_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_20_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_20_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_21_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_21_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_19_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_19_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_20_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_20_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_21_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_21_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ц
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: њ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
_user_specified_namefile_prefix"х	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┐
serving_defaultФ
O
conv2d_input?
serving_default_conv2d_input:0         ђђ<
dense_210
StatefulPartitionedCall:0         tensorflow/serving/predict:ѕЦ
ю
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
╗
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
Ц
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias"
_tf_keras_layer
X
0
1
%2
&3
-4
.5
;6
<7"
trackable_list_wrapper
X
0
1
%2
&3
-4
.5
;6
<7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32Ш
+__inference_sequential_7_layer_call_fn_6291
+__inference_sequential_7_layer_call_fn_6528
+__inference_sequential_7_layer_call_fn_6549
+__inference_sequential_7_layer_call_fn_6426┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
═
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32Р
F__inference_sequential_7_layer_call_and_return_conditional_losses_6622
F__inference_sequential_7_layer_call_and_return_conditional_losses_6695
F__inference_sequential_7_layer_call_and_return_conditional_losses_6452
F__inference_sequential_7_layer_call_and_return_conditional_losses_6478┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
¤B╠
__inference__wrapped_model_6137conv2d_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratemЁmє%mЄ&mѕ-mЅ.mі;mІ<mїvЇvј%vЈ&vљ-vЉ.vњ;vЊ<vћ"
	optimizer
,
Oserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж
Utrace_02╠
%__inference_conv2d_layer_call_fn_6704б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zUtrace_0
ё
Vtrace_02у
@__inference_conv2d_layer_call_and_return_conditional_losses_6715б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zVtrace_0
(:&ђ2conv2d/kernel
:ђ2conv2d/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
­
\trace_02М
,__inference_max_pooling2d_layer_call_fn_6720б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z\trace_0
І
]trace_02Ь
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6725б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0
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
Г
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
в
ctrace_02╬
'__inference_dense_19_layer_call_fn_6734б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zctrace_0
є
dtrace_02ж
B__inference_dense_19_layer_call_and_return_conditional_losses_6764б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zdtrace_0
": 	ђ2dense_19/kernel
:2dense_19/bias
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
Г
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
в
jtrace_02╬
'__inference_dense_20_layer_call_fn_6773б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zjtrace_0
є
ktrace_02ж
B__inference_dense_20_layer_call_and_return_conditional_losses_6803б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zktrace_0
!:2dense_20/kernel
:2dense_20/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
В
qtrace_02¤
(__inference_flatten_7_layer_call_fn_6808б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zqtrace_0
Є
rtrace_02Ж
C__inference_flatten_7_layer_call_and_return_conditional_losses_6814б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zrtrace_0
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
в
xtrace_02╬
'__inference_dense_21_layer_call_fn_6823б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zxtrace_0
є
ytrace_02ж
B__inference_dense_21_layer_call_and_return_conditional_losses_6834б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zytrace_0
#:!
љ­2dense_21/kernel
:2dense_21/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѓB 
+__inference_sequential_7_layer_call_fn_6291conv2d_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
+__inference_sequential_7_layer_call_fn_6528inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
+__inference_sequential_7_layer_call_fn_6549inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ѓB 
+__inference_sequential_7_layer_call_fn_6426conv2d_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
F__inference_sequential_7_layer_call_and_return_conditional_losses_6622inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
F__inference_sequential_7_layer_call_and_return_conditional_losses_6695inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЮBџ
F__inference_sequential_7_layer_call_and_return_conditional_losses_6452conv2d_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЮBџ
F__inference_sequential_7_layer_call_and_return_conditional_losses_6478conv2d_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╬B╦
"__inference_signature_wrapper_6507conv2d_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
┘Bо
%__inference_conv2d_layer_call_fn_6704inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
@__inference_conv2d_layer_call_and_return_conditional_losses_6715inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЯBП
,__inference_max_pooling2d_layer_call_fn_6720inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6725inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
█Bп
'__inference_dense_19_layer_call_fn_6734inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_dense_19_layer_call_and_return_conditional_losses_6764inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
█Bп
'__inference_dense_20_layer_call_fn_6773inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_dense_20_layer_call_and_return_conditional_losses_6803inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
(__inference_flatten_7_layer_call_fn_6808inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_flatten_7_layer_call_and_return_conditional_losses_6814inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
█Bп
'__inference_dense_21_layer_call_fn_6823inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_dense_21_layer_call_and_return_conditional_losses_6834inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
N
|	variables
}	keras_api
	~total
	count"
_tf_keras_metric
c
ђ	variables
Ђ	keras_api

ѓtotal

Ѓcount
ё
_fn_kwargs"
_tf_keras_metric
.
~0
1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
0
ѓ0
Ѓ1"
trackable_list_wrapper
.
ђ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
-:+ђ2Adam/conv2d/kernel/m
:ђ2Adam/conv2d/bias/m
':%	ђ2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
&:$2Adam/dense_20/kernel/m
 :2Adam/dense_20/bias/m
(:&
љ­2Adam/dense_21/kernel/m
 :2Adam/dense_21/bias/m
-:+ђ2Adam/conv2d/kernel/v
:ђ2Adam/conv2d/bias/v
':%	ђ2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v
&:$2Adam/dense_20/kernel/v
 :2Adam/dense_20/bias/v
(:&
љ­2Adam/dense_21/kernel/v
 :2Adam/dense_21/bias/vц
__inference__wrapped_model_6137ђ%&-.;<?б<
5б2
0і-
conv2d_input         ђђ
ф "3ф0
.
dense_21"і
dense_21         │
@__inference_conv2d_layer_call_and_return_conditional_losses_6715o9б6
/б,
*і'
inputs         ђђ
ф ".б+
$і!
0         ~~ђ
џ І
%__inference_conv2d_layer_call_fn_6704b9б6
/б,
*і'
inputs         ђђ
ф "!і         ~~ђ│
B__inference_dense_19_layer_call_and_return_conditional_losses_6764m%&8б5
.б+
)і&
inputs         ??ђ
ф "-б*
#і 
0         ??
џ І
'__inference_dense_19_layer_call_fn_6734`%&8б5
.б+
)і&
inputs         ??ђ
ф " і         ??▓
B__inference_dense_20_layer_call_and_return_conditional_losses_6803l-.7б4
-б*
(і%
inputs         ??
ф "-б*
#і 
0         ??
џ і
'__inference_dense_20_layer_call_fn_6773_-.7б4
-б*
(і%
inputs         ??
ф " і         ??ц
B__inference_dense_21_layer_call_and_return_conditional_losses_6834^;<1б.
'б$
"і
inputs         љ­
ф "%б"
і
0         
џ |
'__inference_dense_21_layer_call_fn_6823Q;<1б.
'б$
"і
inputs         љ­
ф "і         Е
C__inference_flatten_7_layer_call_and_return_conditional_losses_6814b7б4
-б*
(і%
inputs         ??
ф "'б$
і
0         љ­
џ Ђ
(__inference_flatten_7_layer_call_fn_6808U7б4
-б*
(і%
inputs         ??
ф "і         љ­Ж
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_6725ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┬
,__inference_max_pooling2d_layer_call_fn_6720ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ─
F__inference_sequential_7_layer_call_and_return_conditional_losses_6452z%&-.;<GбD
=б:
0і-
conv2d_input         ђђ
p 

 
ф "%б"
і
0         
џ ─
F__inference_sequential_7_layer_call_and_return_conditional_losses_6478z%&-.;<GбD
=б:
0і-
conv2d_input         ђђ
p

 
ф "%б"
і
0         
џ Й
F__inference_sequential_7_layer_call_and_return_conditional_losses_6622t%&-.;<Aб>
7б4
*і'
inputs         ђђ
p 

 
ф "%б"
і
0         
џ Й
F__inference_sequential_7_layer_call_and_return_conditional_losses_6695t%&-.;<Aб>
7б4
*і'
inputs         ђђ
p

 
ф "%б"
і
0         
џ ю
+__inference_sequential_7_layer_call_fn_6291m%&-.;<GбD
=б:
0і-
conv2d_input         ђђ
p 

 
ф "і         ю
+__inference_sequential_7_layer_call_fn_6426m%&-.;<GбD
=б:
0і-
conv2d_input         ђђ
p

 
ф "і         ќ
+__inference_sequential_7_layer_call_fn_6528g%&-.;<Aб>
7б4
*і'
inputs         ђђ
p 

 
ф "і         ќ
+__inference_sequential_7_layer_call_fn_6549g%&-.;<Aб>
7б4
*і'
inputs         ђђ
p

 
ф "і         и
"__inference_signature_wrapper_6507љ%&-.;<OбL
б 
EфB
@
conv2d_input0і-
conv2d_input         ђђ"3ф0
.
dense_21"і
dense_21         