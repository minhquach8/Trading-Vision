��/
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ԛ-
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:
*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
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
�
lstm_36/lstm_cell_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_36/lstm_cell_36/kernel
�
/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_36/lstm_cell_36/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*6
shared_name'%lstm_36/lstm_cell_36/recurrent_kernel
�
9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_36/lstm_cell_36/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_36/lstm_cell_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_36/lstm_cell_36/bias
�
-lstm_36/lstm_cell_36/bias/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/bias*
_output_shapes	
:�*
dtype0
�
lstm_37/lstm_cell_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*,
shared_namelstm_37/lstm_cell_37/kernel
�
/lstm_37/lstm_cell_37/kernel/Read/ReadVariableOpReadVariableOplstm_37/lstm_cell_37/kernel*
_output_shapes
:	d�*
dtype0
�
%lstm_37/lstm_cell_37/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%lstm_37/lstm_cell_37/recurrent_kernel
�
9lstm_37/lstm_cell_37/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_37/lstm_cell_37/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_37/lstm_cell_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_37/lstm_cell_37/bias
�
-lstm_37/lstm_cell_37/bias/Read/ReadVariableOpReadVariableOplstm_37/lstm_cell_37/bias*
_output_shapes	
:�*
dtype0
�
lstm_38/lstm_cell_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_38/lstm_cell_38/kernel
�
/lstm_38/lstm_cell_38/kernel/Read/ReadVariableOpReadVariableOplstm_38/lstm_cell_38/kernel*
_output_shapes

:2(*
dtype0
�
%lstm_38/lstm_cell_38/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_38/lstm_cell_38/recurrent_kernel
�
9lstm_38/lstm_cell_38/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_38/lstm_cell_38/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_38/lstm_cell_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_38/lstm_cell_38/bias
�
-lstm_38/lstm_cell_38/bias/Read/ReadVariableOpReadVariableOplstm_38/lstm_cell_38/bias*
_output_shapes
:(*
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
�
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_12/kernel/m
�
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_36/lstm_cell_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/m
�
6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
�
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_36/lstm_cell_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_36/lstm_cell_36/bias/m
�
4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_37/lstm_cell_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_37/lstm_cell_37/kernel/m
�
6Adam/lstm_37/lstm_cell_37/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_37/lstm_cell_37/kernel/m*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_37/lstm_cell_37/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m
�
@Adam/lstm_37/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_37/lstm_cell_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_37/lstm_cell_37/bias/m
�
4Adam/lstm_37/lstm_cell_37/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_37/lstm_cell_37/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_38/lstm_cell_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_38/lstm_cell_38/kernel/m
�
6Adam/lstm_38/lstm_cell_38/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_38/lstm_cell_38/kernel/m*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_38/lstm_cell_38/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_38/lstm_cell_38/recurrent_kernel/m
�
@Adam/lstm_38/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_38/lstm_cell_38/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_38/lstm_cell_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_38/lstm_cell_38/bias/m
�
4Adam/lstm_38/lstm_cell_38/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_38/lstm_cell_38/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_12/kernel/v
�
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_36/lstm_cell_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/v
�
6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
�
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_36/lstm_cell_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_36/lstm_cell_36/bias/v
�
4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_37/lstm_cell_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_37/lstm_cell_37/kernel/v
�
6Adam/lstm_37/lstm_cell_37/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_37/lstm_cell_37/kernel/v*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_37/lstm_cell_37/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v
�
@Adam/lstm_37/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_37/lstm_cell_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_37/lstm_cell_37/bias/v
�
4Adam/lstm_37/lstm_cell_37/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_37/lstm_cell_37/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_38/lstm_cell_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_38/lstm_cell_38/kernel/v
�
6Adam/lstm_38/lstm_cell_38/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_38/lstm_cell_38/kernel/v*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_38/lstm_cell_38/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_38/lstm_cell_38/recurrent_kernel/v
�
@Adam/lstm_38/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_38/lstm_cell_38/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_38/lstm_cell_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_38/lstm_cell_38/bias/v
�
4Adam/lstm_38/lstm_cell_38/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_38/lstm_cell_38/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
�

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_36/lstm_cell_36/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_36/lstm_cell_36/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_36/lstm_cell_36/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_37/lstm_cell_37/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_37/lstm_cell_37/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_37/lstm_cell_37/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_38/lstm_cell_38/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_38/lstm_cell_38/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_38/lstm_cell_38/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_37/lstm_cell_37/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_37/lstm_cell_37/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_37/lstm_cell_37/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_38/lstm_cell_38/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_38/lstm_cell_38/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_38/lstm_cell_38/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_37/lstm_cell_37/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_37/lstm_cell_37/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_37/lstm_cell_37/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_38/lstm_cell_38/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_38/lstm_cell_38/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_38/lstm_cell_38/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_36_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_36_inputlstm_36/lstm_cell_36/kernel%lstm_36/lstm_cell_36/recurrent_kernellstm_36/lstm_cell_36/biaslstm_37/lstm_cell_37/kernel%lstm_37/lstm_cell_37/recurrent_kernellstm_37/lstm_cell_37/biaslstm_38/lstm_cell_38/kernel%lstm_38/lstm_cell_38/recurrent_kernellstm_38/lstm_cell_38/biasdense_12/kerneldense_12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2843279
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOp9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOp-lstm_36/lstm_cell_36/bias/Read/ReadVariableOp/lstm_37/lstm_cell_37/kernel/Read/ReadVariableOp9lstm_37/lstm_cell_37/recurrent_kernel/Read/ReadVariableOp-lstm_37/lstm_cell_37/bias/Read/ReadVariableOp/lstm_38/lstm_cell_38/kernel/Read/ReadVariableOp9lstm_38/lstm_cell_38/recurrent_kernel/Read/ReadVariableOp-lstm_38/lstm_cell_38/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOp6Adam/lstm_37/lstm_cell_37/kernel/m/Read/ReadVariableOp@Adam/lstm_37/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_37/lstm_cell_37/bias/m/Read/ReadVariableOp6Adam/lstm_38/lstm_cell_38/kernel/m/Read/ReadVariableOp@Adam/lstm_38/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_38/lstm_cell_38/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOp6Adam/lstm_37/lstm_cell_37/kernel/v/Read/ReadVariableOp@Adam/lstm_37/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_37/lstm_cell_37/bias/v/Read/ReadVariableOp6Adam/lstm_38/lstm_cell_38/kernel/v/Read/ReadVariableOp@Adam/lstm_38/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_38/lstm_cell_38/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_2846491
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_36/lstm_cell_36/kernel%lstm_36/lstm_cell_36/recurrent_kernellstm_36/lstm_cell_36/biaslstm_37/lstm_cell_37/kernel%lstm_37/lstm_cell_37/recurrent_kernellstm_37/lstm_cell_37/biaslstm_38/lstm_cell_38/kernel%lstm_38/lstm_cell_38/recurrent_kernellstm_38/lstm_cell_38/biastotalcountAdam/dense_12/kernel/mAdam/dense_12/bias/m"Adam/lstm_36/lstm_cell_36/kernel/m,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m Adam/lstm_36/lstm_cell_36/bias/m"Adam/lstm_37/lstm_cell_37/kernel/m,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m Adam/lstm_37/lstm_cell_37/bias/m"Adam/lstm_38/lstm_cell_38/kernel/m,Adam/lstm_38/lstm_cell_38/recurrent_kernel/m Adam/lstm_38/lstm_cell_38/bias/mAdam/dense_12/kernel/vAdam/dense_12/bias/v"Adam/lstm_36/lstm_cell_36/kernel/v,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v Adam/lstm_36/lstm_cell_36/bias/v"Adam/lstm_37/lstm_cell_37/kernel/v,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v Adam/lstm_37/lstm_cell_37/bias/v"Adam/lstm_38/lstm_cell_38/kernel/v,Adam/lstm_38/lstm_cell_38/recurrent_kernel/v Adam/lstm_38/lstm_cell_38/bias/v*4
Tin-
+2)*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_2846621��+
�
�
(sequential_12_lstm_38_while_cond_2840928H
Dsequential_12_lstm_38_while_sequential_12_lstm_38_while_loop_counterN
Jsequential_12_lstm_38_while_sequential_12_lstm_38_while_maximum_iterations+
'sequential_12_lstm_38_while_placeholder-
)sequential_12_lstm_38_while_placeholder_1-
)sequential_12_lstm_38_while_placeholder_2-
)sequential_12_lstm_38_while_placeholder_3J
Fsequential_12_lstm_38_while_less_sequential_12_lstm_38_strided_slice_1a
]sequential_12_lstm_38_while_sequential_12_lstm_38_while_cond_2840928___redundant_placeholder0a
]sequential_12_lstm_38_while_sequential_12_lstm_38_while_cond_2840928___redundant_placeholder1a
]sequential_12_lstm_38_while_sequential_12_lstm_38_while_cond_2840928___redundant_placeholder2a
]sequential_12_lstm_38_while_sequential_12_lstm_38_while_cond_2840928___redundant_placeholder3(
$sequential_12_lstm_38_while_identity
�
 sequential_12/lstm_38/while/LessLess'sequential_12_lstm_38_while_placeholderFsequential_12_lstm_38_while_less_sequential_12_lstm_38_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_38/while/IdentityIdentity$sequential_12/lstm_38/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_38_while_identity-sequential_12/lstm_38/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_38_layer_call_fn_2845463

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842734o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841086

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�
�
while_cond_2842979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842979___redundant_placeholder05
1while_while_cond_2842979___redundant_placeholder15
1while_while_cond_2842979___redundant_placeholder25
1while_while_cond_2842979___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2841519

inputs(
lstm_cell_469_2841437:	d�(
lstm_cell_469_2841439:	2�$
lstm_cell_469_2841441:	�
identity��%lstm_cell_469/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_469/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_469_2841437lstm_cell_469_2841439lstm_cell_469_2841441*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841436n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_469_2841437lstm_cell_469_2841439lstm_cell_469_2841441*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841450*
condR
while_cond_2841449*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_469/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_469/StatefulPartitionedCall%lstm_cell_469/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841786

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�8
�
while_body_2844576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�R
�
(sequential_12_lstm_38_while_body_2840929H
Dsequential_12_lstm_38_while_sequential_12_lstm_38_while_loop_counterN
Jsequential_12_lstm_38_while_sequential_12_lstm_38_while_maximum_iterations+
'sequential_12_lstm_38_while_placeholder-
)sequential_12_lstm_38_while_placeholder_1-
)sequential_12_lstm_38_while_placeholder_2-
)sequential_12_lstm_38_while_placeholder_3G
Csequential_12_lstm_38_while_sequential_12_lstm_38_strided_slice_1_0�
sequential_12_lstm_38_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_38_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_12_lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0:2(^
Lsequential_12_lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(Y
Ksequential_12_lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0:((
$sequential_12_lstm_38_while_identity*
&sequential_12_lstm_38_while_identity_1*
&sequential_12_lstm_38_while_identity_2*
&sequential_12_lstm_38_while_identity_3*
&sequential_12_lstm_38_while_identity_4*
&sequential_12_lstm_38_while_identity_5E
Asequential_12_lstm_38_while_sequential_12_lstm_38_strided_slice_1�
}sequential_12_lstm_38_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_38_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_12_lstm_38_while_lstm_cell_470_matmul_readvariableop_resource:2(\
Jsequential_12_lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource:
(W
Isequential_12_lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource:(��@sequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp�?sequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp�Asequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp�
Msequential_12/lstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_12/lstm_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_38_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_38_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_38_while_placeholderVsequential_12/lstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
?sequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOpJsequential_12_lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
0sequential_12/lstm_38/while/lstm_cell_470/MatMulMatMulFsequential_12/lstm_38/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Asequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOpLsequential_12_lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
2sequential_12/lstm_38/while/lstm_cell_470/MatMul_1MatMul)sequential_12_lstm_38_while_placeholder_2Isequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_12/lstm_38/while/lstm_cell_470/addAddV2:sequential_12/lstm_38/while/lstm_cell_470/MatMul:product:0<sequential_12/lstm_38/while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
@sequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOpKsequential_12_lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
1sequential_12/lstm_38/while/lstm_cell_470/BiasAddBiasAdd1sequential_12/lstm_38/while/lstm_cell_470/add:z:0Hsequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������({
9sequential_12/lstm_38/while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_12/lstm_38/while/lstm_cell_470/splitSplitBsequential_12/lstm_38/while/lstm_cell_470/split/split_dim:output:0:sequential_12/lstm_38/while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
1sequential_12/lstm_38/while/lstm_cell_470/SigmoidSigmoid8sequential_12/lstm_38/while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
3sequential_12/lstm_38/while/lstm_cell_470/Sigmoid_1Sigmoid8sequential_12/lstm_38/while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
-sequential_12/lstm_38/while/lstm_cell_470/mulMul7sequential_12/lstm_38/while/lstm_cell_470/Sigmoid_1:y:0)sequential_12_lstm_38_while_placeholder_3*
T0*'
_output_shapes
:���������
�
.sequential_12/lstm_38/while/lstm_cell_470/ReluRelu8sequential_12/lstm_38/while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
/sequential_12/lstm_38/while/lstm_cell_470/mul_1Mul5sequential_12/lstm_38/while/lstm_cell_470/Sigmoid:y:0<sequential_12/lstm_38/while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
/sequential_12/lstm_38/while/lstm_cell_470/add_1AddV21sequential_12/lstm_38/while/lstm_cell_470/mul:z:03sequential_12/lstm_38/while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
3sequential_12/lstm_38/while/lstm_cell_470/Sigmoid_2Sigmoid8sequential_12/lstm_38/while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
�
0sequential_12/lstm_38/while/lstm_cell_470/Relu_1Relu3sequential_12/lstm_38/while/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_12/lstm_38/while/lstm_cell_470/mul_2Mul7sequential_12/lstm_38/while/lstm_cell_470/Sigmoid_2:y:0>sequential_12/lstm_38/while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
@sequential_12/lstm_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_38_while_placeholder_1'sequential_12_lstm_38_while_placeholder3sequential_12/lstm_38/while/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_12/lstm_38/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_12/lstm_38/while/addAddV2'sequential_12_lstm_38_while_placeholder*sequential_12/lstm_38/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_38/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_12/lstm_38/while/add_1AddV2Dsequential_12_lstm_38_while_sequential_12_lstm_38_while_loop_counter,sequential_12/lstm_38/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_12/lstm_38/while/IdentityIdentity%sequential_12/lstm_38/while/add_1:z:0!^sequential_12/lstm_38/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_38/while/Identity_1IdentityJsequential_12_lstm_38_while_sequential_12_lstm_38_while_maximum_iterations!^sequential_12/lstm_38/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_38/while/Identity_2Identity#sequential_12/lstm_38/while/add:z:0!^sequential_12/lstm_38/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_38/while/Identity_3IdentityPsequential_12/lstm_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_38/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_38/while/Identity_4Identity3sequential_12/lstm_38/while/lstm_cell_470/mul_2:z:0!^sequential_12/lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
&sequential_12/lstm_38/while/Identity_5Identity3sequential_12/lstm_38/while/lstm_cell_470/add_1:z:0!^sequential_12/lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
 sequential_12/lstm_38/while/NoOpNoOpA^sequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp@^sequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOpB^sequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_12_lstm_38_while_identity-sequential_12/lstm_38/while/Identity:output:0"Y
&sequential_12_lstm_38_while_identity_1/sequential_12/lstm_38/while/Identity_1:output:0"Y
&sequential_12_lstm_38_while_identity_2/sequential_12/lstm_38/while/Identity_2:output:0"Y
&sequential_12_lstm_38_while_identity_3/sequential_12/lstm_38/while/Identity_3:output:0"Y
&sequential_12_lstm_38_while_identity_4/sequential_12/lstm_38/while/Identity_4:output:0"Y
&sequential_12_lstm_38_while_identity_5/sequential_12/lstm_38/while/Identity_5:output:0"�
Isequential_12_lstm_38_while_lstm_cell_470_biasadd_readvariableop_resourceKsequential_12_lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0"�
Jsequential_12_lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resourceLsequential_12_lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0"�
Hsequential_12_lstm_38_while_lstm_cell_470_matmul_readvariableop_resourceJsequential_12_lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0"�
Asequential_12_lstm_38_while_sequential_12_lstm_38_strided_slice_1Csequential_12_lstm_38_while_sequential_12_lstm_38_strided_slice_1_0"�
}sequential_12_lstm_38_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_38_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_38_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
@sequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp@sequential_12/lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2�
?sequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp?sequential_12/lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp2�
Asequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOpAsequential_12/lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_2844906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844517
inputs_0?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2844433*
condR
while_cond_2844432*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
/__inference_lstm_cell_468_layer_call_fn_2846071

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841086o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�J
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845276

inputs?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845192*
condR
while_cond_2845191*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_2844289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2844289___redundant_placeholder05
1while_while_cond_2844289___redundant_placeholder15
1while_while_cond_2844289___redundant_placeholder25
1while_while_cond_2844289___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�K
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844374
inputs_0?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2844290*
condR
while_cond_2844289*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�R
�
(sequential_12_lstm_37_while_body_2840790H
Dsequential_12_lstm_37_while_sequential_12_lstm_37_while_loop_counterN
Jsequential_12_lstm_37_while_sequential_12_lstm_37_while_maximum_iterations+
'sequential_12_lstm_37_while_placeholder-
)sequential_12_lstm_37_while_placeholder_1-
)sequential_12_lstm_37_while_placeholder_2-
)sequential_12_lstm_37_while_placeholder_3G
Csequential_12_lstm_37_while_sequential_12_lstm_37_strided_slice_1_0�
sequential_12_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_37_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_12_lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0:	d�_
Lsequential_12_lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�Z
Ksequential_12_lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0:	�(
$sequential_12_lstm_37_while_identity*
&sequential_12_lstm_37_while_identity_1*
&sequential_12_lstm_37_while_identity_2*
&sequential_12_lstm_37_while_identity_3*
&sequential_12_lstm_37_while_identity_4*
&sequential_12_lstm_37_while_identity_5E
Asequential_12_lstm_37_while_sequential_12_lstm_37_strided_slice_1�
}sequential_12_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_37_tensorarrayunstack_tensorlistfromtensor[
Hsequential_12_lstm_37_while_lstm_cell_469_matmul_readvariableop_resource:	d�]
Jsequential_12_lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource:	2�X
Isequential_12_lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource:	���@sequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp�?sequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp�Asequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp�
Msequential_12/lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_12/lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_37_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_37_while_placeholderVsequential_12/lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
?sequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOpJsequential_12_lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
0sequential_12/lstm_37/while/lstm_cell_469/MatMulMatMulFsequential_12/lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOpLsequential_12_lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
2sequential_12/lstm_37/while/lstm_cell_469/MatMul_1MatMul)sequential_12_lstm_37_while_placeholder_2Isequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_12/lstm_37/while/lstm_cell_469/addAddV2:sequential_12/lstm_37/while/lstm_cell_469/MatMul:product:0<sequential_12/lstm_37/while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOpKsequential_12_lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_12/lstm_37/while/lstm_cell_469/BiasAddBiasAdd1sequential_12/lstm_37/while/lstm_cell_469/add:z:0Hsequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_12/lstm_37/while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_12/lstm_37/while/lstm_cell_469/splitSplitBsequential_12/lstm_37/while/lstm_cell_469/split/split_dim:output:0:sequential_12/lstm_37/while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
1sequential_12/lstm_37/while/lstm_cell_469/SigmoidSigmoid8sequential_12/lstm_37/while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
3sequential_12/lstm_37/while/lstm_cell_469/Sigmoid_1Sigmoid8sequential_12/lstm_37/while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
-sequential_12/lstm_37/while/lstm_cell_469/mulMul7sequential_12/lstm_37/while/lstm_cell_469/Sigmoid_1:y:0)sequential_12_lstm_37_while_placeholder_3*
T0*'
_output_shapes
:���������2�
.sequential_12/lstm_37/while/lstm_cell_469/ReluRelu8sequential_12/lstm_37/while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
/sequential_12/lstm_37/while/lstm_cell_469/mul_1Mul5sequential_12/lstm_37/while/lstm_cell_469/Sigmoid:y:0<sequential_12/lstm_37/while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
/sequential_12/lstm_37/while/lstm_cell_469/add_1AddV21sequential_12/lstm_37/while/lstm_cell_469/mul:z:03sequential_12/lstm_37/while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
3sequential_12/lstm_37/while/lstm_cell_469/Sigmoid_2Sigmoid8sequential_12/lstm_37/while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2�
0sequential_12/lstm_37/while/lstm_cell_469/Relu_1Relu3sequential_12/lstm_37/while/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_12/lstm_37/while/lstm_cell_469/mul_2Mul7sequential_12/lstm_37/while/lstm_cell_469/Sigmoid_2:y:0>sequential_12/lstm_37/while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
@sequential_12/lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_37_while_placeholder_1'sequential_12_lstm_37_while_placeholder3sequential_12/lstm_37/while/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_12/lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_12/lstm_37/while/addAddV2'sequential_12_lstm_37_while_placeholder*sequential_12/lstm_37/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_12/lstm_37/while/add_1AddV2Dsequential_12_lstm_37_while_sequential_12_lstm_37_while_loop_counter,sequential_12/lstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_12/lstm_37/while/IdentityIdentity%sequential_12/lstm_37/while/add_1:z:0!^sequential_12/lstm_37/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_37/while/Identity_1IdentityJsequential_12_lstm_37_while_sequential_12_lstm_37_while_maximum_iterations!^sequential_12/lstm_37/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_37/while/Identity_2Identity#sequential_12/lstm_37/while/add:z:0!^sequential_12/lstm_37/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_37/while/Identity_3IdentityPsequential_12/lstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_37/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_37/while/Identity_4Identity3sequential_12/lstm_37/while/lstm_cell_469/mul_2:z:0!^sequential_12/lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_12/lstm_37/while/Identity_5Identity3sequential_12/lstm_37/while/lstm_cell_469/add_1:z:0!^sequential_12/lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
 sequential_12/lstm_37/while/NoOpNoOpA^sequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp@^sequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOpB^sequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_12_lstm_37_while_identity-sequential_12/lstm_37/while/Identity:output:0"Y
&sequential_12_lstm_37_while_identity_1/sequential_12/lstm_37/while/Identity_1:output:0"Y
&sequential_12_lstm_37_while_identity_2/sequential_12/lstm_37/while/Identity_2:output:0"Y
&sequential_12_lstm_37_while_identity_3/sequential_12/lstm_37/while/Identity_3:output:0"Y
&sequential_12_lstm_37_while_identity_4/sequential_12/lstm_37/while/Identity_4:output:0"Y
&sequential_12_lstm_37_while_identity_5/sequential_12/lstm_37/while/Identity_5:output:0"�
Isequential_12_lstm_37_while_lstm_cell_469_biasadd_readvariableop_resourceKsequential_12_lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0"�
Jsequential_12_lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resourceLsequential_12_lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0"�
Hsequential_12_lstm_37_while_lstm_cell_469_matmul_readvariableop_resourceJsequential_12_lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0"�
Asequential_12_lstm_37_while_sequential_12_lstm_37_strided_slice_1Csequential_12_lstm_37_while_sequential_12_lstm_37_strided_slice_1_0"�
}sequential_12_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_37_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
@sequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp@sequential_12/lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2�
?sequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp?sequential_12/lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp2�
Asequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOpAsequential_12/lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_468_layer_call_fn_2846088

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�8
�
while_body_2845049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846152

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�8
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842060

inputs'
lstm_cell_470_2841978:2('
lstm_cell_470_2841980:
(#
lstm_cell_470_2841982:(
identity��%lstm_cell_470/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_470/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_470_2841978lstm_cell_470_2841980lstm_cell_470_2841982*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841932n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_470_2841978lstm_cell_470_2841980lstm_cell_470_2841982*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841991*
condR
while_cond_2841990*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
v
NoOpNoOp&^lstm_cell_470/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_470/StatefulPartitionedCall%lstm_cell_470/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�R
�
(sequential_12_lstm_36_while_body_2840651H
Dsequential_12_lstm_36_while_sequential_12_lstm_36_while_loop_counterN
Jsequential_12_lstm_36_while_sequential_12_lstm_36_while_maximum_iterations+
'sequential_12_lstm_36_while_placeholder-
)sequential_12_lstm_36_while_placeholder_1-
)sequential_12_lstm_36_while_placeholder_2-
)sequential_12_lstm_36_while_placeholder_3G
Csequential_12_lstm_36_while_sequential_12_lstm_36_strided_slice_1_0�
sequential_12_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_36_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_12_lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0:	�_
Lsequential_12_lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�Z
Ksequential_12_lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0:	�(
$sequential_12_lstm_36_while_identity*
&sequential_12_lstm_36_while_identity_1*
&sequential_12_lstm_36_while_identity_2*
&sequential_12_lstm_36_while_identity_3*
&sequential_12_lstm_36_while_identity_4*
&sequential_12_lstm_36_while_identity_5E
Asequential_12_lstm_36_while_sequential_12_lstm_36_strided_slice_1�
}sequential_12_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_36_tensorarrayunstack_tensorlistfromtensor[
Hsequential_12_lstm_36_while_lstm_cell_468_matmul_readvariableop_resource:	�]
Jsequential_12_lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource:	d�X
Isequential_12_lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource:	���@sequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp�?sequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp�Asequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp�
Msequential_12/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_12/lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_36_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_36_while_placeholderVsequential_12/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
?sequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOpJsequential_12_lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
0sequential_12/lstm_36/while/lstm_cell_468/MatMulMatMulFsequential_12/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOpLsequential_12_lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_12/lstm_36/while/lstm_cell_468/MatMul_1MatMul)sequential_12_lstm_36_while_placeholder_2Isequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_12/lstm_36/while/lstm_cell_468/addAddV2:sequential_12/lstm_36/while/lstm_cell_468/MatMul:product:0<sequential_12/lstm_36/while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOpKsequential_12_lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_12/lstm_36/while/lstm_cell_468/BiasAddBiasAdd1sequential_12/lstm_36/while/lstm_cell_468/add:z:0Hsequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_12/lstm_36/while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_12/lstm_36/while/lstm_cell_468/splitSplitBsequential_12/lstm_36/while/lstm_cell_468/split/split_dim:output:0:sequential_12/lstm_36/while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
1sequential_12/lstm_36/while/lstm_cell_468/SigmoidSigmoid8sequential_12/lstm_36/while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
3sequential_12/lstm_36/while/lstm_cell_468/Sigmoid_1Sigmoid8sequential_12/lstm_36/while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
-sequential_12/lstm_36/while/lstm_cell_468/mulMul7sequential_12/lstm_36/while/lstm_cell_468/Sigmoid_1:y:0)sequential_12_lstm_36_while_placeholder_3*
T0*'
_output_shapes
:���������d�
.sequential_12/lstm_36/while/lstm_cell_468/ReluRelu8sequential_12/lstm_36/while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
/sequential_12/lstm_36/while/lstm_cell_468/mul_1Mul5sequential_12/lstm_36/while/lstm_cell_468/Sigmoid:y:0<sequential_12/lstm_36/while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
/sequential_12/lstm_36/while/lstm_cell_468/add_1AddV21sequential_12/lstm_36/while/lstm_cell_468/mul:z:03sequential_12/lstm_36/while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
3sequential_12/lstm_36/while/lstm_cell_468/Sigmoid_2Sigmoid8sequential_12/lstm_36/while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������d�
0sequential_12/lstm_36/while/lstm_cell_468/Relu_1Relu3sequential_12/lstm_36/while/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_12/lstm_36/while/lstm_cell_468/mul_2Mul7sequential_12/lstm_36/while/lstm_cell_468/Sigmoid_2:y:0>sequential_12/lstm_36/while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
@sequential_12/lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_36_while_placeholder_1'sequential_12_lstm_36_while_placeholder3sequential_12/lstm_36/while/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_12/lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_12/lstm_36/while/addAddV2'sequential_12_lstm_36_while_placeholder*sequential_12/lstm_36/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_12/lstm_36/while/add_1AddV2Dsequential_12_lstm_36_while_sequential_12_lstm_36_while_loop_counter,sequential_12/lstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_12/lstm_36/while/IdentityIdentity%sequential_12/lstm_36/while/add_1:z:0!^sequential_12/lstm_36/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_36/while/Identity_1IdentityJsequential_12_lstm_36_while_sequential_12_lstm_36_while_maximum_iterations!^sequential_12/lstm_36/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_36/while/Identity_2Identity#sequential_12/lstm_36/while/add:z:0!^sequential_12/lstm_36/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_36/while/Identity_3IdentityPsequential_12/lstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_36/while/NoOp*
T0*
_output_shapes
: �
&sequential_12/lstm_36/while/Identity_4Identity3sequential_12/lstm_36/while/lstm_cell_468/mul_2:z:0!^sequential_12/lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
&sequential_12/lstm_36/while/Identity_5Identity3sequential_12/lstm_36/while/lstm_cell_468/add_1:z:0!^sequential_12/lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential_12/lstm_36/while/NoOpNoOpA^sequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp@^sequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOpB^sequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_12_lstm_36_while_identity-sequential_12/lstm_36/while/Identity:output:0"Y
&sequential_12_lstm_36_while_identity_1/sequential_12/lstm_36/while/Identity_1:output:0"Y
&sequential_12_lstm_36_while_identity_2/sequential_12/lstm_36/while/Identity_2:output:0"Y
&sequential_12_lstm_36_while_identity_3/sequential_12/lstm_36/while/Identity_3:output:0"Y
&sequential_12_lstm_36_while_identity_4/sequential_12/lstm_36/while/Identity_4:output:0"Y
&sequential_12_lstm_36_while_identity_5/sequential_12/lstm_36/while/Identity_5:output:0"�
Isequential_12_lstm_36_while_lstm_cell_468_biasadd_readvariableop_resourceKsequential_12_lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0"�
Jsequential_12_lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resourceLsequential_12_lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0"�
Hsequential_12_lstm_36_while_lstm_cell_468_matmul_readvariableop_resourceJsequential_12_lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0"�
Asequential_12_lstm_36_while_sequential_12_lstm_36_strided_slice_1Csequential_12_lstm_36_while_sequential_12_lstm_36_strided_slice_1_0"�
}sequential_12_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_36_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
@sequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp@sequential_12/lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2�
?sequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp?sequential_12/lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp2�
Asequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOpAsequential_12/lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2844575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2844575___redundant_placeholder05
1while_while_cond_2844575___redundant_placeholder15
1while_while_cond_2844575___redundant_placeholder25
1while_while_cond_2844575___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2844432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2844432___redundant_placeholder05
1while_while_cond_2844432___redundant_placeholder15
1while_while_cond_2844432___redundant_placeholder25
1while_while_cond_2844432___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_2842650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843244
lstm_36_input"
lstm_36_2843217:	�"
lstm_36_2843219:	d�
lstm_36_2843221:	�"
lstm_37_2843224:	d�"
lstm_37_2843226:	2�
lstm_37_2843228:	�!
lstm_38_2843231:2(!
lstm_38_2843233:
(
lstm_38_2843235:("
dense_12_2843238:

dense_12_2843240:
identity�� dense_12/StatefulPartitionedCall�lstm_36/StatefulPartitionedCall�lstm_37/StatefulPartitionedCall�lstm_38/StatefulPartitionedCall�
lstm_36/StatefulPartitionedCallStatefulPartitionedCalllstm_36_inputlstm_36_2843217lstm_36_2843219lstm_36_2843221*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2843064�
lstm_37/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0lstm_37_2843224lstm_37_2843226lstm_37_2843228*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842899�
lstm_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0lstm_38_2843231lstm_38_2843233lstm_38_2843235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842734�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_38/StatefulPartitionedCall:output:0dense_12_2843238dense_12_2843240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_12/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall ^lstm_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall2B
lstm_38/StatefulPartitionedCalllstm_38/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
��
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2844187

inputsG
4lstm_36_lstm_cell_468_matmul_readvariableop_resource:	�I
6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource:	d�D
5lstm_36_lstm_cell_468_biasadd_readvariableop_resource:	�G
4lstm_37_lstm_cell_469_matmul_readvariableop_resource:	d�I
6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource:	2�D
5lstm_37_lstm_cell_469_biasadd_readvariableop_resource:	�F
4lstm_38_lstm_cell_470_matmul_readvariableop_resource:2(H
6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource:
(C
5lstm_38_lstm_cell_470_biasadd_readvariableop_resource:(9
'dense_12_matmul_readvariableop_resource:
6
(dense_12_biasadd_readvariableop_resource:
identity��dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp�+lstm_36/lstm_cell_468/MatMul/ReadVariableOp�-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp�lstm_36/while�,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp�+lstm_37/lstm_cell_469/MatMul/ReadVariableOp�-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp�lstm_37/while�,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp�+lstm_38/lstm_cell_470/MatMul/ReadVariableOp�-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp�lstm_38/whileC
lstm_36/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_sliceStridedSlicelstm_36/Shape:output:0$lstm_36/strided_slice/stack:output:0&lstm_36/strided_slice/stack_1:output:0&lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_36/zeros/packedPacklstm_36/strided_slice:output:0lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_36/zerosFilllstm_36/zeros/packed:output:0lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_36/zeros_1/packedPacklstm_36/strided_slice:output:0!lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_36/zeros_1Filllstm_36/zeros_1/packed:output:0lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_36/transpose	Transposeinputslstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_36/Shape_1Shapelstm_36/transpose:y:0*
T0*
_output_shapes
:g
lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_1StridedSlicelstm_36/Shape_1:output:0&lstm_36/strided_slice_1/stack:output:0(lstm_36/strided_slice_1/stack_1:output:0(lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_36/TensorArrayV2TensorListReserve,lstm_36/TensorArrayV2/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_36/transpose:y:0Flstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_2StridedSlicelstm_36/transpose:y:0&lstm_36/strided_slice_2/stack:output:0(lstm_36/strided_slice_2/stack_1:output:0(lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_36/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_36/lstm_cell_468/MatMulMatMul lstm_36/strided_slice_2:output:03lstm_36/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_36/lstm_cell_468/MatMul_1MatMullstm_36/zeros:output:05lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_36/lstm_cell_468/addAddV2&lstm_36/lstm_cell_468/MatMul:product:0(lstm_36/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_36/lstm_cell_468/BiasAddBiasAddlstm_36/lstm_cell_468/add:z:04lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_36/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_36/lstm_cell_468/splitSplit.lstm_36/lstm_cell_468/split/split_dim:output:0&lstm_36/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_36/lstm_cell_468/SigmoidSigmoid$lstm_36/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/Sigmoid_1Sigmoid$lstm_36/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mulMul#lstm_36/lstm_cell_468/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_36/lstm_cell_468/ReluRelu$lstm_36/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mul_1Mul!lstm_36/lstm_cell_468/Sigmoid:y:0(lstm_36/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/add_1AddV2lstm_36/lstm_cell_468/mul:z:0lstm_36/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/Sigmoid_2Sigmoid$lstm_36/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_36/lstm_cell_468/Relu_1Relulstm_36/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mul_2Mul#lstm_36/lstm_cell_468/Sigmoid_2:y:0*lstm_36/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_36/TensorArrayV2_1TensorListReserve.lstm_36/TensorArrayV2_1/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_36_lstm_cell_468_matmul_readvariableop_resource6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource5lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_36_while_body_2843819*&
condR
lstm_36_while_cond_2843818*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_3StridedSlice3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_36/strided_slice_3/stack:output:0(lstm_36/strided_slice_3/stack_1:output:0(lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_36/transpose_1	Transpose3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_37/ShapeShapelstm_36/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_sliceStridedSlicelstm_37/Shape:output:0$lstm_37/strided_slice/stack:output:0&lstm_37/strided_slice/stack_1:output:0&lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_37/zeros/packedPacklstm_37/strided_slice:output:0lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_37/zerosFilllstm_37/zeros/packed:output:0lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_37/zeros_1/packedPacklstm_37/strided_slice:output:0!lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_37/zeros_1Filllstm_37/zeros_1/packed:output:0lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_37/transpose	Transposelstm_36/transpose_1:y:0lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_37/Shape_1Shapelstm_37/transpose:y:0*
T0*
_output_shapes
:g
lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_1StridedSlicelstm_37/Shape_1:output:0&lstm_37/strided_slice_1/stack:output:0(lstm_37/strided_slice_1/stack_1:output:0(lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_37/TensorArrayV2TensorListReserve,lstm_37/TensorArrayV2/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_37/transpose:y:0Flstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_2StridedSlicelstm_37/transpose:y:0&lstm_37/strided_slice_2/stack:output:0(lstm_37/strided_slice_2/stack_1:output:0(lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_37/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4lstm_37_lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_37/lstm_cell_469/MatMulMatMul lstm_37/strided_slice_2:output:03lstm_37/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_37/lstm_cell_469/MatMul_1MatMullstm_37/zeros:output:05lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_37/lstm_cell_469/addAddV2&lstm_37/lstm_cell_469/MatMul:product:0(lstm_37/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_37/lstm_cell_469/BiasAddBiasAddlstm_37/lstm_cell_469/add:z:04lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_37/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_37/lstm_cell_469/splitSplit.lstm_37/lstm_cell_469/split/split_dim:output:0&lstm_37/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_37/lstm_cell_469/SigmoidSigmoid$lstm_37/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/Sigmoid_1Sigmoid$lstm_37/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mulMul#lstm_37/lstm_cell_469/Sigmoid_1:y:0lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_37/lstm_cell_469/ReluRelu$lstm_37/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mul_1Mul!lstm_37/lstm_cell_469/Sigmoid:y:0(lstm_37/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/add_1AddV2lstm_37/lstm_cell_469/mul:z:0lstm_37/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/Sigmoid_2Sigmoid$lstm_37/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_37/lstm_cell_469/Relu_1Relulstm_37/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mul_2Mul#lstm_37/lstm_cell_469/Sigmoid_2:y:0*lstm_37/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_37/TensorArrayV2_1TensorListReserve.lstm_37/TensorArrayV2_1/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_37/whileWhile#lstm_37/while/loop_counter:output:0)lstm_37/while/maximum_iterations:output:0lstm_37/time:output:0 lstm_37/TensorArrayV2_1:handle:0lstm_37/zeros:output:0lstm_37/zeros_1:output:0 lstm_37/strided_slice_1:output:0?lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_37_lstm_cell_469_matmul_readvariableop_resource6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource5lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_37_while_body_2843958*&
condR
lstm_37_while_cond_2843957*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_37/TensorArrayV2Stack/TensorListStackTensorListStacklstm_37/while:output:3Alstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_3StridedSlice3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_37/strided_slice_3/stack:output:0(lstm_37/strided_slice_3/stack_1:output:0(lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_37/transpose_1	Transpose3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_38/ShapeShapelstm_37/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_sliceStridedSlicelstm_38/Shape:output:0$lstm_38/strided_slice/stack:output:0&lstm_38/strided_slice/stack_1:output:0&lstm_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_38/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_38/zeros/packedPacklstm_38/strided_slice:output:0lstm_38/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_38/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_38/zerosFilllstm_38/zeros/packed:output:0lstm_38/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_38/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_38/zeros_1/packedPacklstm_38/strided_slice:output:0!lstm_38/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_38/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_38/zeros_1Filllstm_38/zeros_1/packed:output:0lstm_38/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_38/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_38/transpose	Transposelstm_37/transpose_1:y:0lstm_38/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_38/Shape_1Shapelstm_38/transpose:y:0*
T0*
_output_shapes
:g
lstm_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_1StridedSlicelstm_38/Shape_1:output:0&lstm_38/strided_slice_1/stack:output:0(lstm_38/strided_slice_1/stack_1:output:0(lstm_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_38/TensorArrayV2TensorListReserve,lstm_38/TensorArrayV2/element_shape:output:0 lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_38/transpose:y:0Flstm_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_2StridedSlicelstm_38/transpose:y:0&lstm_38/strided_slice_2/stack:output:0(lstm_38/strided_slice_2/stack_1:output:0(lstm_38/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_38/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4lstm_38_lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_38/lstm_cell_470/MatMulMatMul lstm_38/strided_slice_2:output:03lstm_38/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_38/lstm_cell_470/MatMul_1MatMullstm_38/zeros:output:05lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_38/lstm_cell_470/addAddV2&lstm_38/lstm_cell_470/MatMul:product:0(lstm_38/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_38/lstm_cell_470/BiasAddBiasAddlstm_38/lstm_cell_470/add:z:04lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_38/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_38/lstm_cell_470/splitSplit.lstm_38/lstm_cell_470/split/split_dim:output:0&lstm_38/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_38/lstm_cell_470/SigmoidSigmoid$lstm_38/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/Sigmoid_1Sigmoid$lstm_38/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mulMul#lstm_38/lstm_cell_470/Sigmoid_1:y:0lstm_38/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_38/lstm_cell_470/ReluRelu$lstm_38/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mul_1Mul!lstm_38/lstm_cell_470/Sigmoid:y:0(lstm_38/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/add_1AddV2lstm_38/lstm_cell_470/mul:z:0lstm_38/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/Sigmoid_2Sigmoid$lstm_38/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_38/lstm_cell_470/Relu_1Relulstm_38/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mul_2Mul#lstm_38/lstm_cell_470/Sigmoid_2:y:0*lstm_38/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_38/TensorArrayV2_1TensorListReserve.lstm_38/TensorArrayV2_1/element_shape:output:0 lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_38/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_38/whileWhile#lstm_38/while/loop_counter:output:0)lstm_38/while/maximum_iterations:output:0lstm_38/time:output:0 lstm_38/TensorArrayV2_1:handle:0lstm_38/zeros:output:0lstm_38/zeros_1:output:0 lstm_38/strided_slice_1:output:0?lstm_38/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_38_lstm_cell_470_matmul_readvariableop_resource6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource5lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_38_while_body_2844097*&
condR
lstm_38_while_cond_2844096*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_38/TensorArrayV2Stack/TensorListStackTensorListStacklstm_38/while:output:3Alstm_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_3StridedSlice3lstm_38/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_38/strided_slice_3/stack:output:0(lstm_38/strided_slice_3/stack_1:output:0(lstm_38/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_38/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_38/transpose_1	Transpose3lstm_38/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_38/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_38/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_12/MatMulMatMul lstm_38/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp-^lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp,^lstm_36/lstm_cell_468/MatMul/ReadVariableOp.^lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp^lstm_36/while-^lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp,^lstm_37/lstm_cell_469/MatMul/ReadVariableOp.^lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp^lstm_37/while-^lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp,^lstm_38/lstm_cell_470/MatMul/ReadVariableOp.^lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp^lstm_38/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2\
,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp2Z
+lstm_36/lstm_cell_468/MatMul/ReadVariableOp+lstm_36/lstm_cell_468/MatMul/ReadVariableOp2^
-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp2
lstm_36/whilelstm_36/while2\
,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp2Z
+lstm_37/lstm_cell_469/MatMul/ReadVariableOp+lstm_37/lstm_cell_469/MatMul/ReadVariableOp2^
-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp2
lstm_37/whilelstm_37/while2\
,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp2Z
+lstm_38/lstm_cell_470/MatMul/ReadVariableOp+lstm_38/lstm_cell_470/MatMul/ReadVariableOp2^
-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp2
lstm_38/whilelstm_38/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_2843279
lstm_36_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_2841019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
�
�
while_cond_2841799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841799___redundant_placeholder05
1while_while_cond_2841799___redundant_placeholder15
1while_while_cond_2841799___redundant_placeholder25
1while_while_cond_2841799___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2841990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841990___redundant_placeholder05
1while_while_cond_2841990___redundant_placeholder15
1while_while_cond_2841990___redundant_placeholder25
1while_while_cond_2841990___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�K
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845749
inputs_0>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845665*
condR
while_cond_2845664*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_2842433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842433___redundant_placeholder05
1while_while_cond_2842433___redundant_placeholder15
1while_while_cond_2842433___redundant_placeholder25
1while_while_cond_2842433___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_2845808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�A
�

lstm_38_while_body_2844097,
(lstm_38_while_lstm_38_while_loop_counter2
.lstm_38_while_lstm_38_while_maximum_iterations
lstm_38_while_placeholder
lstm_38_while_placeholder_1
lstm_38_while_placeholder_2
lstm_38_while_placeholder_3+
'lstm_38_while_lstm_38_strided_slice_1_0g
clstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0:2(P
>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(K
=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0:(
lstm_38_while_identity
lstm_38_while_identity_1
lstm_38_while_identity_2
lstm_38_while_identity_3
lstm_38_while_identity_4
lstm_38_while_identity_5)
%lstm_38_while_lstm_38_strided_slice_1e
alstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensorL
:lstm_38_while_lstm_cell_470_matmul_readvariableop_resource:2(N
<lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource:
(I
;lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource:(��2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp�1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp�3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp�
?lstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0lstm_38_while_placeholderHlstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_38/while/lstm_cell_470/MatMulMatMul8lstm_38/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_38/while/lstm_cell_470/MatMul_1MatMullstm_38_while_placeholder_2;lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_38/while/lstm_cell_470/addAddV2,lstm_38/while/lstm_cell_470/MatMul:product:0.lstm_38/while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_38/while/lstm_cell_470/BiasAddBiasAdd#lstm_38/while/lstm_cell_470/add:z:0:lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_38/while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_38/while/lstm_cell_470/splitSplit4lstm_38/while/lstm_cell_470/split/split_dim:output:0,lstm_38/while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_38/while/lstm_cell_470/SigmoidSigmoid*lstm_38/while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_38/while/lstm_cell_470/Sigmoid_1Sigmoid*lstm_38/while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_38/while/lstm_cell_470/mulMul)lstm_38/while/lstm_cell_470/Sigmoid_1:y:0lstm_38_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_38/while/lstm_cell_470/ReluRelu*lstm_38/while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/mul_1Mul'lstm_38/while/lstm_cell_470/Sigmoid:y:0.lstm_38/while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/add_1AddV2#lstm_38/while/lstm_cell_470/mul:z:0%lstm_38/while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_38/while/lstm_cell_470/Sigmoid_2Sigmoid*lstm_38/while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_38/while/lstm_cell_470/Relu_1Relu%lstm_38/while/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/mul_2Mul)lstm_38/while/lstm_cell_470/Sigmoid_2:y:00lstm_38/while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_38_while_placeholder_1lstm_38_while_placeholder%lstm_38/while/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_38/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_38/while/addAddV2lstm_38_while_placeholderlstm_38/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_38/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_38/while/add_1AddV2(lstm_38_while_lstm_38_while_loop_counterlstm_38/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_38/while/IdentityIdentitylstm_38/while/add_1:z:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_1Identity.lstm_38_while_lstm_38_while_maximum_iterations^lstm_38/while/NoOp*
T0*
_output_shapes
: q
lstm_38/while/Identity_2Identitylstm_38/while/add:z:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_3IdentityBlstm_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_4Identity%lstm_38/while/lstm_cell_470/mul_2:z:0^lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_38/while/Identity_5Identity%lstm_38/while/lstm_cell_470/add_1:z:0^lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_38/while/NoOpNoOp3^lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2^lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp4^lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_38_while_identitylstm_38/while/Identity:output:0"=
lstm_38_while_identity_1!lstm_38/while/Identity_1:output:0"=
lstm_38_while_identity_2!lstm_38/while/Identity_2:output:0"=
lstm_38_while_identity_3!lstm_38/while/Identity_3:output:0"=
lstm_38_while_identity_4!lstm_38/while/Identity_4:output:0"=
lstm_38_while_identity_5!lstm_38/while/Identity_5:output:0"P
%lstm_38_while_lstm_38_strided_slice_1'lstm_38_while_lstm_38_strided_slice_1_0"|
;lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0"~
<lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0"z
:lstm_38_while_lstm_cell_470_matmul_readvariableop_resource<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0"�
alstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensorclstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2f
1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp2j
3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_36_layer_call_fn_2844220

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2842218s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842899

inputs?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842815*
condR
while_cond_2842814*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_2842283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842283___redundant_placeholder05
1while_while_cond_2842283___redundant_placeholder15
1while_while_cond_2842283___redundant_placeholder25
1while_while_cond_2842283___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�

�
/__inference_sequential_12_layer_call_fn_2843333

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2845664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845664___redundant_placeholder05
1while_while_cond_2845664___redundant_placeholder15
1while_while_cond_2845664___redundant_placeholder25
1while_while_cond_2845664___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_36_layer_call_fn_2844198
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2841169|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2841169

inputs(
lstm_cell_468_2841087:	�(
lstm_cell_468_2841089:	d�$
lstm_cell_468_2841091:	�
identity��%lstm_cell_468/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_468/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_468_2841087lstm_cell_468_2841089lstm_cell_468_2841091*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841086n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_468_2841087lstm_cell_468_2841089lstm_cell_468_2841091*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841100*
condR
while_cond_2841099*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_468/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_468/StatefulPartitionedCall%lstm_cell_468/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2841360

inputs(
lstm_cell_468_2841278:	�(
lstm_cell_468_2841280:	d�$
lstm_cell_468_2841282:	�
identity��%lstm_cell_468/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_468/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_468_2841278lstm_cell_468_2841280lstm_cell_468_2841282*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841232n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_468_2841278lstm_cell_468_2841280lstm_cell_468_2841282*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841291*
condR
while_cond_2841290*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_468/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_468/StatefulPartitionedCall%lstm_cell_468/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841232

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�#
�
while_body_2841641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_469_2841665_0:	d�0
while_lstm_cell_469_2841667_0:	2�,
while_lstm_cell_469_2841669_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_469_2841665:	d�.
while_lstm_cell_469_2841667:	2�*
while_lstm_cell_469_2841669:	���+while/lstm_cell_469/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_469/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_469_2841665_0while_lstm_cell_469_2841667_0while_lstm_cell_469_2841669_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841582�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_469/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_469/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_469/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_469/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_469_2841665while_lstm_cell_469_2841665_0"<
while_lstm_cell_469_2841667while_lstm_cell_469_2841667_0"<
while_lstm_cell_469_2841669while_lstm_cell_469_2841669_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_469/StatefulPartitionedCall+while/lstm_cell_469/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�B
�

lstm_37_while_body_2843958,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3+
'lstm_37_while_lstm_37_strided_slice_1_0g
clstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0:	d�Q
>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�L
=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
lstm_37_while_identity
lstm_37_while_identity_1
lstm_37_while_identity_2
lstm_37_while_identity_3
lstm_37_while_identity_4
lstm_37_while_identity_5)
%lstm_37_while_lstm_37_strided_slice_1e
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorM
:lstm_37_while_lstm_cell_469_matmul_readvariableop_resource:	d�O
<lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource:	2�J
;lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource:	���2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp�1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp�3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp�
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0lstm_37_while_placeholderHlstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_37/while/lstm_cell_469/MatMulMatMul8lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_37/while/lstm_cell_469/MatMul_1MatMullstm_37_while_placeholder_2;lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_37/while/lstm_cell_469/addAddV2,lstm_37/while/lstm_cell_469/MatMul:product:0.lstm_37/while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_37/while/lstm_cell_469/BiasAddBiasAdd#lstm_37/while/lstm_cell_469/add:z:0:lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_37/while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_37/while/lstm_cell_469/splitSplit4lstm_37/while/lstm_cell_469/split/split_dim:output:0,lstm_37/while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_37/while/lstm_cell_469/SigmoidSigmoid*lstm_37/while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_37/while/lstm_cell_469/Sigmoid_1Sigmoid*lstm_37/while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_37/while/lstm_cell_469/mulMul)lstm_37/while/lstm_cell_469/Sigmoid_1:y:0lstm_37_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_37/while/lstm_cell_469/ReluRelu*lstm_37/while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/mul_1Mul'lstm_37/while/lstm_cell_469/Sigmoid:y:0.lstm_37/while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/add_1AddV2#lstm_37/while/lstm_cell_469/mul:z:0%lstm_37/while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_37/while/lstm_cell_469/Sigmoid_2Sigmoid*lstm_37/while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_37/while/lstm_cell_469/Relu_1Relu%lstm_37/while/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/mul_2Mul)lstm_37/while/lstm_cell_469/Sigmoid_2:y:00lstm_37/while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_37_while_placeholder_1lstm_37_while_placeholder%lstm_37/while/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_37/while/addAddV2lstm_37_while_placeholderlstm_37/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_37/while/add_1AddV2(lstm_37_while_lstm_37_while_loop_counterlstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_37/while/IdentityIdentitylstm_37/while/add_1:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_1Identity.lstm_37_while_lstm_37_while_maximum_iterations^lstm_37/while/NoOp*
T0*
_output_shapes
: q
lstm_37/while/Identity_2Identitylstm_37/while/add:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_3IdentityBlstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_4Identity%lstm_37/while/lstm_cell_469/mul_2:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_37/while/Identity_5Identity%lstm_37/while/lstm_cell_469/add_1:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_37/while/NoOpNoOp3^lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2^lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp4^lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_37_while_identitylstm_37/while/Identity:output:0"=
lstm_37_while_identity_1!lstm_37/while/Identity_1:output:0"=
lstm_37_while_identity_2!lstm_37/while/Identity_2:output:0"=
lstm_37_while_identity_3!lstm_37/while/Identity_3:output:0"=
lstm_37_while_identity_4!lstm_37/while/Identity_4:output:0"=
lstm_37_while_identity_5!lstm_37/while/Identity_5:output:0"P
%lstm_37_while_lstm_37_strided_slice_1'lstm_37_while_lstm_37_strided_slice_1_0"|
;lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0"~
<lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0"z
:lstm_37_while_lstm_cell_469_matmul_readvariableop_resource<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0"�
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2f
1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp2j
3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845892

inputs>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845808*
condR
while_cond_2845807*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846120

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�B
�

lstm_37_while_body_2843531,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3+
'lstm_37_while_lstm_37_strided_slice_1_0g
clstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0:	d�Q
>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�L
=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
lstm_37_while_identity
lstm_37_while_identity_1
lstm_37_while_identity_2
lstm_37_while_identity_3
lstm_37_while_identity_4
lstm_37_while_identity_5)
%lstm_37_while_lstm_37_strided_slice_1e
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorM
:lstm_37_while_lstm_cell_469_matmul_readvariableop_resource:	d�O
<lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource:	2�J
;lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource:	���2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp�1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp�3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp�
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0lstm_37_while_placeholderHlstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_37/while/lstm_cell_469/MatMulMatMul8lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_37/while/lstm_cell_469/MatMul_1MatMullstm_37_while_placeholder_2;lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_37/while/lstm_cell_469/addAddV2,lstm_37/while/lstm_cell_469/MatMul:product:0.lstm_37/while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_37/while/lstm_cell_469/BiasAddBiasAdd#lstm_37/while/lstm_cell_469/add:z:0:lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_37/while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_37/while/lstm_cell_469/splitSplit4lstm_37/while/lstm_cell_469/split/split_dim:output:0,lstm_37/while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_37/while/lstm_cell_469/SigmoidSigmoid*lstm_37/while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_37/while/lstm_cell_469/Sigmoid_1Sigmoid*lstm_37/while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_37/while/lstm_cell_469/mulMul)lstm_37/while/lstm_cell_469/Sigmoid_1:y:0lstm_37_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_37/while/lstm_cell_469/ReluRelu*lstm_37/while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/mul_1Mul'lstm_37/while/lstm_cell_469/Sigmoid:y:0.lstm_37/while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/add_1AddV2#lstm_37/while/lstm_cell_469/mul:z:0%lstm_37/while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_37/while/lstm_cell_469/Sigmoid_2Sigmoid*lstm_37/while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_37/while/lstm_cell_469/Relu_1Relu%lstm_37/while/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_37/while/lstm_cell_469/mul_2Mul)lstm_37/while/lstm_cell_469/Sigmoid_2:y:00lstm_37/while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_37_while_placeholder_1lstm_37_while_placeholder%lstm_37/while/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_37/while/addAddV2lstm_37_while_placeholderlstm_37/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_37/while/add_1AddV2(lstm_37_while_lstm_37_while_loop_counterlstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_37/while/IdentityIdentitylstm_37/while/add_1:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_1Identity.lstm_37_while_lstm_37_while_maximum_iterations^lstm_37/while/NoOp*
T0*
_output_shapes
: q
lstm_37/while/Identity_2Identitylstm_37/while/add:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_3IdentityBlstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_37/while/NoOp*
T0*
_output_shapes
: �
lstm_37/while/Identity_4Identity%lstm_37/while/lstm_cell_469/mul_2:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_37/while/Identity_5Identity%lstm_37/while/lstm_cell_469/add_1:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_37/while/NoOpNoOp3^lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2^lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp4^lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_37_while_identitylstm_37/while/Identity:output:0"=
lstm_37_while_identity_1!lstm_37/while/Identity_1:output:0"=
lstm_37_while_identity_2!lstm_37/while/Identity_2:output:0"=
lstm_37_while_identity_3!lstm_37/while/Identity_3:output:0"=
lstm_37_while_identity_4!lstm_37/while/Identity_4:output:0"=
lstm_37_while_identity_5!lstm_37/while/Identity_5:output:0"P
%lstm_37_while_lstm_37_strided_slice_1'lstm_37_while_lstm_37_strided_slice_1_0"|
;lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource=lstm_37_while_lstm_cell_469_biasadd_readvariableop_resource_0"~
<lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource>lstm_37_while_lstm_cell_469_matmul_1_readvariableop_resource_0"z
:lstm_37_while_lstm_cell_469_matmul_readvariableop_resource<lstm_37_while_lstm_cell_469_matmul_readvariableop_resource_0"�
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2lstm_37/while/lstm_cell_469/BiasAdd/ReadVariableOp2f
1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp1lstm_37/while/lstm_cell_469/MatMul/ReadVariableOp2j
3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp3lstm_37/while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_36_layer_call_fn_2844209
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2841360|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841582

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�8
�
while_body_2845665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2844718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2844718___redundant_placeholder05
1while_while_cond_2844718___redundant_placeholder15
1while_while_cond_2844718___redundant_placeholder25
1while_while_cond_2844718___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_38_layer_call_fn_2845430
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2841869o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�	
�
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�J
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2842218

inputs?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842134*
condR
while_cond_2842133*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2844905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2844905___redundant_placeholder05
1while_while_cond_2844905___redundant_placeholder15
1while_while_cond_2844905___redundant_placeholder25
1while_while_cond_2844905___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_37_layer_call_fn_2844847

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842899s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_2842134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_38_while_cond_2844096,
(lstm_38_while_lstm_38_while_loop_counter2
.lstm_38_while_lstm_38_while_maximum_iterations
lstm_38_while_placeholder
lstm_38_while_placeholder_1
lstm_38_while_placeholder_2
lstm_38_while_placeholder_3.
*lstm_38_while_less_lstm_38_strided_slice_1E
Alstm_38_while_lstm_38_while_cond_2844096___redundant_placeholder0E
Alstm_38_while_lstm_38_while_cond_2844096___redundant_placeholder1E
Alstm_38_while_lstm_38_while_cond_2844096___redundant_placeholder2E
Alstm_38_while_lstm_38_while_cond_2844096___redundant_placeholder3
lstm_38_while_identity
�
lstm_38/while/LessLesslstm_38_while_placeholder*lstm_38_while_less_lstm_38_strided_slice_1*
T0*
_output_shapes
: [
lstm_38/while/IdentityIdentitylstm_38/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_38_while_identitylstm_38/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_37_layer_call_fn_2844814
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2841519|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_2842434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_37_while_cond_2843530,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3.
*lstm_37_while_less_lstm_37_strided_slice_1E
Alstm_37_while_lstm_37_while_cond_2843530___redundant_placeholder0E
Alstm_37_while_lstm_37_while_cond_2843530___redundant_placeholder1E
Alstm_37_while_lstm_37_while_cond_2843530___redundant_placeholder2E
Alstm_37_while_lstm_37_while_cond_2843530___redundant_placeholder3
lstm_37_while_identity
�
lstm_37/while/LessLesslstm_37_while_placeholder*lstm_37_while_less_lstm_37_strided_slice_1*
T0*
_output_shapes
: [
lstm_37/while/IdentityIdentitylstm_37/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_37_while_identitylstm_37/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�

�
lstm_36_while_cond_2843818,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1E
Alstm_36_while_lstm_36_while_cond_2843818___redundant_placeholder0E
Alstm_36_while_lstm_36_while_cond_2843818___redundant_placeholder1E
Alstm_36_while_lstm_36_while_cond_2843818___redundant_placeholder2E
Alstm_36_while_lstm_36_while_cond_2843818___redundant_placeholder3
lstm_36_while_identity
�
lstm_36/while/LessLesslstm_36_while_placeholder*lstm_36_while_less_lstm_36_strided_slice_1*
T0*
_output_shapes
: [
lstm_36/while/IdentityIdentitylstm_36/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_36_while_identitylstm_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�V
�
 __inference__traced_save_2846491
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableopD
@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop8
4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop:
6savev2_lstm_37_lstm_cell_37_kernel_read_readvariableopD
@savev2_lstm_37_lstm_cell_37_recurrent_kernel_read_readvariableop8
4savev2_lstm_37_lstm_cell_37_bias_read_readvariableop:
6savev2_lstm_38_lstm_cell_38_kernel_read_readvariableopD
@savev2_lstm_38_lstm_cell_38_recurrent_kernel_read_readvariableop8
4savev2_lstm_38_lstm_cell_38_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableopA
=savev2_adam_lstm_37_lstm_cell_37_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_37_lstm_cell_37_bias_m_read_readvariableopA
=savev2_adam_lstm_38_lstm_cell_38_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_38_lstm_cell_38_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_38_lstm_cell_38_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableopA
=savev2_adam_lstm_37_lstm_cell_37_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_37_lstm_cell_37_bias_v_read_readvariableopA
=savev2_adam_lstm_38_lstm_cell_38_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_38_lstm_cell_38_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_38_lstm_cell_38_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableop@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop6savev2_lstm_37_lstm_cell_37_kernel_read_readvariableop@savev2_lstm_37_lstm_cell_37_recurrent_kernel_read_readvariableop4savev2_lstm_37_lstm_cell_37_bias_read_readvariableop6savev2_lstm_38_lstm_cell_38_kernel_read_readvariableop@savev2_lstm_38_lstm_cell_38_recurrent_kernel_read_readvariableop4savev2_lstm_38_lstm_cell_38_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableop=savev2_adam_lstm_37_lstm_cell_37_kernel_m_read_readvariableopGsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_37_lstm_cell_37_bias_m_read_readvariableop=savev2_adam_lstm_38_lstm_cell_38_kernel_m_read_readvariableopGsavev2_adam_lstm_38_lstm_cell_38_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_38_lstm_cell_38_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableop=savev2_adam_lstm_37_lstm_cell_37_kernel_v_read_readvariableopGsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_37_lstm_cell_37_bias_v_read_readvariableop=savev2_adam_lstm_38_lstm_cell_38_kernel_v_read_readvariableopGsavev2_adam_lstm_38_lstm_cell_38_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_38_lstm_cell_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
:: : : : : :	�:	d�:�:	d�:	2�:�:2(:
(:(: : :
::	�:	d�:�:	d�:	2�:�:2(:
(:(:
::	�:	d�:�:	d�:	2�:�:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%	!

_output_shapes
:	d�:!


_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	�:%!!

_output_shapes
:	d�:!"

_output_shapes	
:�:%#!

_output_shapes
:	d�:%$!

_output_shapes
:	2�:!%

_output_shapes	
:�:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
�
�
)__inference_lstm_38_layer_call_fn_2845452

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_2845807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845807___redundant_placeholder05
1while_while_cond_2845807___redundant_placeholder15
1while_while_cond_2845807___redundant_placeholder25
1while_while_cond_2845807___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2845334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845334___redundant_placeholder05
1while_while_cond_2845334___redundant_placeholder15
1while_while_cond_2845334___redundant_placeholder25
1while_while_cond_2845334___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_2845951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2842543

inputs"
lstm_36_2842219:	�"
lstm_36_2842221:	d�
lstm_36_2842223:	�"
lstm_37_2842369:	d�"
lstm_37_2842371:	2�
lstm_37_2842373:	�!
lstm_38_2842519:2(!
lstm_38_2842521:
(
lstm_38_2842523:("
dense_12_2842537:

dense_12_2842539:
identity�� dense_12/StatefulPartitionedCall�lstm_36/StatefulPartitionedCall�lstm_37/StatefulPartitionedCall�lstm_38/StatefulPartitionedCall�
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_2842219lstm_36_2842221lstm_36_2842223*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2842218�
lstm_37/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0lstm_37_2842369lstm_37_2842371lstm_37_2842373*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842368�
lstm_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0lstm_38_2842519lstm_38_2842521lstm_38_2842523*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842518�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_38/StatefulPartitionedCall:output:0dense_12_2842537dense_12_2842539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_12/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall ^lstm_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall2B
lstm_38/StatefulPartitionedCalllstm_38/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2845191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845191___redundant_placeholder05
1while_while_cond_2845191___redundant_placeholder15
1while_while_cond_2845191___redundant_placeholder25
1while_while_cond_2845191___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844660

inputs?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2844576*
condR
while_cond_2844575*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2842814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842814___redundant_placeholder05
1while_while_cond_2842814___redundant_placeholder15
1while_while_cond_2842814___redundant_placeholder25
1while_while_cond_2842814___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841932

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�8
�
while_body_2844290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_469_layer_call_fn_2846169

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841436o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�J
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844803

inputs?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2844719*
condR
while_cond_2844718*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_2842980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_2844719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_38_layer_call_fn_2845441
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_2845950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845950___redundant_placeholder05
1while_while_cond_2845950___redundant_placeholder15
1while_while_cond_2845950___redundant_placeholder25
1while_while_cond_2845950___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
(sequential_12_lstm_36_while_cond_2840650H
Dsequential_12_lstm_36_while_sequential_12_lstm_36_while_loop_counterN
Jsequential_12_lstm_36_while_sequential_12_lstm_36_while_maximum_iterations+
'sequential_12_lstm_36_while_placeholder-
)sequential_12_lstm_36_while_placeholder_1-
)sequential_12_lstm_36_while_placeholder_2-
)sequential_12_lstm_36_while_placeholder_3J
Fsequential_12_lstm_36_while_less_sequential_12_lstm_36_strided_slice_1a
]sequential_12_lstm_36_while_sequential_12_lstm_36_while_cond_2840650___redundant_placeholder0a
]sequential_12_lstm_36_while_sequential_12_lstm_36_while_cond_2840650___redundant_placeholder1a
]sequential_12_lstm_36_while_sequential_12_lstm_36_while_cond_2840650___redundant_placeholder2a
]sequential_12_lstm_36_while_sequential_12_lstm_36_while_cond_2840650___redundant_placeholder3(
$sequential_12_lstm_36_while_identity
�
 sequential_12/lstm_36/while/LessLess'sequential_12_lstm_36_while_placeholderFsequential_12_lstm_36_while_less_sequential_12_lstm_36_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_36/while/IdentityIdentity$sequential_12/lstm_36/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_36_while_identity-sequential_12/lstm_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846348

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�8
�
while_body_2844433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_468_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_468_matmul_readvariableop_resource:	�G
4while_lstm_cell_468_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_468_biasadd_readvariableop_resource:	���*while/lstm_cell_468/BiasAdd/ReadVariableOp�)while/lstm_cell_468/MatMul/ReadVariableOp�+while/lstm_cell_468/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_468/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_468/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_468/addAddV2$while/lstm_cell_468/MatMul:product:0&while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_468/BiasAddBiasAddwhile/lstm_cell_468/add:z:02while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_468/splitSplit,while/lstm_cell_468/split/split_dim:output:0$while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_468/SigmoidSigmoid"while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_1Sigmoid"while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mulMul!while/lstm_cell_468/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_468/ReluRelu"while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_1Mulwhile/lstm_cell_468/Sigmoid:y:0&while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/add_1AddV2while/lstm_cell_468/mul:z:0while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_468/Sigmoid_2Sigmoid"while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_468/Relu_1Reluwhile/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_468/mul_2Mul!while/lstm_cell_468/Sigmoid_2:y:0(while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_468/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_468/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_468/BiasAdd/ReadVariableOp*^while/lstm_cell_468/MatMul/ReadVariableOp,^while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_468_biasadd_readvariableop_resource5while_lstm_cell_468_biasadd_readvariableop_resource_0"n
4while_lstm_cell_468_matmul_1_readvariableop_resource6while_lstm_cell_468_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_468_matmul_readvariableop_resource4while_lstm_cell_468_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_468/BiasAdd/ReadVariableOp*while/lstm_cell_468/BiasAdd/ReadVariableOp2V
)while/lstm_cell_468/MatMul/ReadVariableOp)while/lstm_cell_468/MatMul/ReadVariableOp2Z
+while/lstm_cell_468/MatMul_1/ReadVariableOp+while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2842133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842133___redundant_placeholder05
1while_while_cond_2842133___redundant_placeholder15
1while_while_cond_2842133___redundant_placeholder25
1while_while_cond_2842133___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_2841100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_468_2841124_0:	�0
while_lstm_cell_468_2841126_0:	d�,
while_lstm_cell_468_2841128_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_468_2841124:	�.
while_lstm_cell_468_2841126:	d�*
while_lstm_cell_468_2841128:	���+while/lstm_cell_468/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_468/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_468_2841124_0while_lstm_cell_468_2841126_0while_lstm_cell_468_2841128_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841086�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_468/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_468/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_468/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_468/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_468_2841124while_lstm_cell_468_2841124_0"<
while_lstm_cell_468_2841126while_lstm_cell_468_2841126_0"<
while_lstm_cell_468_2841128while_lstm_cell_468_2841128_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_468/StatefulPartitionedCall+while/lstm_cell_468/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_2842815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�#
�
while_body_2841291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_468_2841315_0:	�0
while_lstm_cell_468_2841317_0:	d�,
while_lstm_cell_468_2841319_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_468_2841315:	�.
while_lstm_cell_468_2841317:	d�*
while_lstm_cell_468_2841319:	���+while/lstm_cell_468/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_468/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_468_2841315_0while_lstm_cell_468_2841317_0while_lstm_cell_468_2841319_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2841232�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_468/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_468/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_468/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_468/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_468_2841315while_lstm_cell_468_2841315_0"<
while_lstm_cell_468_2841317while_lstm_cell_468_2841317_0"<
while_lstm_cell_468_2841319while_lstm_cell_468_2841319_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_468/StatefulPartitionedCall+while/lstm_cell_468/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_dense_12_layer_call_fn_2846044

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841436

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�8
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2841710

inputs(
lstm_cell_469_2841628:	d�(
lstm_cell_469_2841630:	2�$
lstm_cell_469_2841632:	�
identity��%lstm_cell_469/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_469/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_469_2841628lstm_cell_469_2841630lstm_cell_469_2841632*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841582n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_469_2841628lstm_cell_469_2841630lstm_cell_469_2841632*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841641*
condR
while_cond_2841640*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_469/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_469/StatefulPartitionedCall%lstm_cell_469/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845419

inputs?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845335*
condR
while_cond_2845334*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_2845335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�B
�

lstm_36_while_body_2843819,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0:	�Q
>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�L
=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorM
:lstm_36_while_lstm_cell_468_matmul_readvariableop_resource:	�O
<lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource:	d�J
;lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource:	���2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp�1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp�3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp�
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_36/while/lstm_cell_468/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_36/while/lstm_cell_468/MatMul_1MatMullstm_36_while_placeholder_2;lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_36/while/lstm_cell_468/addAddV2,lstm_36/while/lstm_cell_468/MatMul:product:0.lstm_36/while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_36/while/lstm_cell_468/BiasAddBiasAdd#lstm_36/while/lstm_cell_468/add:z:0:lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_36/while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_36/while/lstm_cell_468/splitSplit4lstm_36/while/lstm_cell_468/split/split_dim:output:0,lstm_36/while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_36/while/lstm_cell_468/SigmoidSigmoid*lstm_36/while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_36/while/lstm_cell_468/Sigmoid_1Sigmoid*lstm_36/while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_36/while/lstm_cell_468/mulMul)lstm_36/while/lstm_cell_468/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_36/while/lstm_cell_468/ReluRelu*lstm_36/while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/mul_1Mul'lstm_36/while/lstm_cell_468/Sigmoid:y:0.lstm_36/while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/add_1AddV2#lstm_36/while/lstm_cell_468/mul:z:0%lstm_36/while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_36/while/lstm_cell_468/Sigmoid_2Sigmoid*lstm_36/while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_36/while/lstm_cell_468/Relu_1Relu%lstm_36/while/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/mul_2Mul)lstm_36/while/lstm_cell_468/Sigmoid_2:y:00lstm_36/while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder%lstm_36/while/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_36/while/addAddV2lstm_36_while_placeholderlstm_36/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_36/while/add_1AddV2(lstm_36_while_lstm_36_while_loop_counterlstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_36/while/IdentityIdentitylstm_36/while/add_1:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_1Identity.lstm_36_while_lstm_36_while_maximum_iterations^lstm_36/while/NoOp*
T0*
_output_shapes
: q
lstm_36/while/Identity_2Identitylstm_36/while/add:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_3IdentityBlstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_4Identity%lstm_36/while/lstm_cell_468/mul_2:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_36/while/Identity_5Identity%lstm_36/while/lstm_cell_468/add_1:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_36/while/NoOpNoOp3^lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2^lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp4^lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_36_while_identitylstm_36/while/Identity:output:0"=
lstm_36_while_identity_1!lstm_36/while/Identity_1:output:0"=
lstm_36_while_identity_2!lstm_36/while/Identity_2:output:0"=
lstm_36_while_identity_3!lstm_36/while/Identity_3:output:0"=
lstm_36_while_identity_4!lstm_36/while/Identity_4:output:0"=
lstm_36_while_identity_5!lstm_36/while/Identity_5:output:0"P
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"|
;lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0"~
<lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0"z
:lstm_36_while_lstm_cell_468_matmul_readvariableop_resource<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0"�
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2f
1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp2j
3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_37_while_cond_2843957,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3.
*lstm_37_while_less_lstm_37_strided_slice_1E
Alstm_37_while_lstm_37_while_cond_2843957___redundant_placeholder0E
Alstm_37_while_lstm_37_while_cond_2843957___redundant_placeholder1E
Alstm_37_while_lstm_37_while_cond_2843957___redundant_placeholder2E
Alstm_37_while_lstm_37_while_cond_2843957___redundant_placeholder3
lstm_37_while_identity
�
lstm_37/while/LessLesslstm_37_while_placeholder*lstm_37_while_less_lstm_37_strided_slice_1*
T0*
_output_shapes
: [
lstm_37/while/IdentityIdentitylstm_37/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_37_while_identitylstm_37/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842518

inputs>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842434*
condR
while_cond_2842433*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_36_layer_call_fn_2844231

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2843064s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_38_while_body_2843670,
(lstm_38_while_lstm_38_while_loop_counter2
.lstm_38_while_lstm_38_while_maximum_iterations
lstm_38_while_placeholder
lstm_38_while_placeholder_1
lstm_38_while_placeholder_2
lstm_38_while_placeholder_3+
'lstm_38_while_lstm_38_strided_slice_1_0g
clstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0:2(P
>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(K
=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0:(
lstm_38_while_identity
lstm_38_while_identity_1
lstm_38_while_identity_2
lstm_38_while_identity_3
lstm_38_while_identity_4
lstm_38_while_identity_5)
%lstm_38_while_lstm_38_strided_slice_1e
alstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensorL
:lstm_38_while_lstm_cell_470_matmul_readvariableop_resource:2(N
<lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource:
(I
;lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource:(��2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp�1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp�3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp�
?lstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0lstm_38_while_placeholderHlstm_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_38/while/lstm_cell_470/MatMulMatMul8lstm_38/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_38/while/lstm_cell_470/MatMul_1MatMullstm_38_while_placeholder_2;lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_38/while/lstm_cell_470/addAddV2,lstm_38/while/lstm_cell_470/MatMul:product:0.lstm_38/while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_38/while/lstm_cell_470/BiasAddBiasAdd#lstm_38/while/lstm_cell_470/add:z:0:lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_38/while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_38/while/lstm_cell_470/splitSplit4lstm_38/while/lstm_cell_470/split/split_dim:output:0,lstm_38/while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_38/while/lstm_cell_470/SigmoidSigmoid*lstm_38/while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_38/while/lstm_cell_470/Sigmoid_1Sigmoid*lstm_38/while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_38/while/lstm_cell_470/mulMul)lstm_38/while/lstm_cell_470/Sigmoid_1:y:0lstm_38_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_38/while/lstm_cell_470/ReluRelu*lstm_38/while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/mul_1Mul'lstm_38/while/lstm_cell_470/Sigmoid:y:0.lstm_38/while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/add_1AddV2#lstm_38/while/lstm_cell_470/mul:z:0%lstm_38/while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_38/while/lstm_cell_470/Sigmoid_2Sigmoid*lstm_38/while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_38/while/lstm_cell_470/Relu_1Relu%lstm_38/while/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_38/while/lstm_cell_470/mul_2Mul)lstm_38/while/lstm_cell_470/Sigmoid_2:y:00lstm_38/while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_38_while_placeholder_1lstm_38_while_placeholder%lstm_38/while/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_38/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_38/while/addAddV2lstm_38_while_placeholderlstm_38/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_38/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_38/while/add_1AddV2(lstm_38_while_lstm_38_while_loop_counterlstm_38/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_38/while/IdentityIdentitylstm_38/while/add_1:z:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_1Identity.lstm_38_while_lstm_38_while_maximum_iterations^lstm_38/while/NoOp*
T0*
_output_shapes
: q
lstm_38/while/Identity_2Identitylstm_38/while/add:z:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_3IdentityBlstm_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_38/while/NoOp*
T0*
_output_shapes
: �
lstm_38/while/Identity_4Identity%lstm_38/while/lstm_cell_470/mul_2:z:0^lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_38/while/Identity_5Identity%lstm_38/while/lstm_cell_470/add_1:z:0^lstm_38/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_38/while/NoOpNoOp3^lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2^lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp4^lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_38_while_identitylstm_38/while/Identity:output:0"=
lstm_38_while_identity_1!lstm_38/while/Identity_1:output:0"=
lstm_38_while_identity_2!lstm_38/while/Identity_2:output:0"=
lstm_38_while_identity_3!lstm_38/while/Identity_3:output:0"=
lstm_38_while_identity_4!lstm_38/while/Identity_4:output:0"=
lstm_38_while_identity_5!lstm_38/while/Identity_5:output:0"P
%lstm_38_while_lstm_38_strided_slice_1'lstm_38_while_lstm_38_strided_slice_1_0"|
;lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource=lstm_38_while_lstm_cell_470_biasadd_readvariableop_resource_0"~
<lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource>lstm_38_while_lstm_cell_470_matmul_1_readvariableop_resource_0"z
:lstm_38_while_lstm_cell_470_matmul_readvariableop_resource<lstm_38_while_lstm_cell_470_matmul_readvariableop_resource_0"�
alstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensorclstm_38_while_tensorarrayv2read_tensorlistgetitem_lstm_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2lstm_38/while/lstm_cell_470/BiasAdd/ReadVariableOp2f
1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp1lstm_38/while/lstm_cell_470/MatMul/ReadVariableOp2j
3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp3lstm_38/while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�#
�
while_body_2841450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_469_2841474_0:	d�0
while_lstm_cell_469_2841476_0:	2�,
while_lstm_cell_469_2841478_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_469_2841474:	d�.
while_lstm_cell_469_2841476:	2�*
while_lstm_cell_469_2841478:	���+while/lstm_cell_469/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_469/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_469_2841474_0while_lstm_cell_469_2841476_0while_lstm_cell_469_2841478_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841436�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_469/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_469/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_469/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_469/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_469_2841474while_lstm_cell_469_2841474_0"<
while_lstm_cell_469_2841476while_lstm_cell_469_2841476_0"<
while_lstm_cell_469_2841478while_lstm_cell_469_2841478_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_469/StatefulPartitionedCall+while/lstm_cell_469/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2842649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2842649___redundant_placeholder05
1while_while_cond_2842649___redundant_placeholder15
1while_while_cond_2842649___redundant_placeholder25
1while_while_cond_2842649___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_37_layer_call_fn_2844836

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842368s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846218

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843214
lstm_36_input"
lstm_36_2843187:	�"
lstm_36_2843189:	d�
lstm_36_2843191:	�"
lstm_37_2843194:	d�"
lstm_37_2843196:	2�
lstm_37_2843198:	�!
lstm_38_2843201:2(!
lstm_38_2843203:
(
lstm_38_2843205:("
dense_12_2843208:

dense_12_2843210:
identity�� dense_12/StatefulPartitionedCall�lstm_36/StatefulPartitionedCall�lstm_37/StatefulPartitionedCall�lstm_38/StatefulPartitionedCall�
lstm_36/StatefulPartitionedCallStatefulPartitionedCalllstm_36_inputlstm_36_2843187lstm_36_2843189lstm_36_2843191*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2842218�
lstm_37/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0lstm_37_2843194lstm_37_2843196lstm_37_2843198*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842368�
lstm_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0lstm_38_2843201lstm_38_2843203lstm_38_2843205*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842518�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_38/StatefulPartitionedCall:output:0dense_12_2843208dense_12_2843210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_12/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall ^lstm_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall2B
lstm_38/StatefulPartitionedCalllstm_38/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
�#
�
while_body_2841800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_470_2841824_0:2(/
while_lstm_cell_470_2841826_0:
(+
while_lstm_cell_470_2841828_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_470_2841824:2(-
while_lstm_cell_470_2841826:
()
while_lstm_cell_470_2841828:(��+while/lstm_cell_470/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_470/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_470_2841824_0while_lstm_cell_470_2841826_0while_lstm_cell_470_2841828_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841786�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_470/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_470/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_470/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_470/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_470_2841824while_lstm_cell_470_2841824_0"<
while_lstm_cell_470_2841826while_lstm_cell_470_2841826_0"<
while_lstm_cell_470_2841828while_lstm_cell_470_2841828_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_470/StatefulPartitionedCall+while/lstm_cell_470/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_36_while_cond_2843391,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1E
Alstm_36_while_lstm_36_while_cond_2843391___redundant_placeholder0E
Alstm_36_while_lstm_36_while_cond_2843391___redundant_placeholder1E
Alstm_36_while_lstm_36_while_cond_2843391___redundant_placeholder2E
Alstm_36_while_lstm_36_while_cond_2843391___redundant_placeholder3
lstm_36_while_identity
�
lstm_36/while/LessLesslstm_36_while_placeholder*lstm_36_while_less_lstm_36_strided_slice_1*
T0*
_output_shapes
: [
lstm_36/while/IdentityIdentitylstm_36/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_36_while_identitylstm_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_lstm_cell_469_layer_call_fn_2846186

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2841582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�

�
/__inference_sequential_12_layer_call_fn_2842568
lstm_36_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2842543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
�
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843132

inputs"
lstm_36_2843105:	�"
lstm_36_2843107:	d�
lstm_36_2843109:	�"
lstm_37_2843112:	d�"
lstm_37_2843114:	2�
lstm_37_2843116:	�!
lstm_38_2843119:2(!
lstm_38_2843121:
(
lstm_38_2843123:("
dense_12_2843126:

dense_12_2843128:
identity�� dense_12/StatefulPartitionedCall�lstm_36/StatefulPartitionedCall�lstm_37/StatefulPartitionedCall�lstm_38/StatefulPartitionedCall�
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_2843105lstm_36_2843107lstm_36_2843109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_36_layer_call_and_return_conditional_losses_2843064�
lstm_37/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0lstm_37_2843112lstm_37_2843114lstm_37_2843116*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842899�
lstm_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0lstm_38_2843119lstm_38_2843121lstm_38_2843123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842734�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_38/StatefulPartitionedCall:output:0dense_12_2843126dense_12_2843128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_2842536x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_12/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall ^lstm_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall2B
lstm_38/StatefulPartitionedCalllstm_38/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2845521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845521___redundant_placeholder05
1while_while_cond_2845521___redundant_placeholder15
1while_while_cond_2845521___redundant_placeholder25
1while_while_cond_2845521___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
��
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843760

inputsG
4lstm_36_lstm_cell_468_matmul_readvariableop_resource:	�I
6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource:	d�D
5lstm_36_lstm_cell_468_biasadd_readvariableop_resource:	�G
4lstm_37_lstm_cell_469_matmul_readvariableop_resource:	d�I
6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource:	2�D
5lstm_37_lstm_cell_469_biasadd_readvariableop_resource:	�F
4lstm_38_lstm_cell_470_matmul_readvariableop_resource:2(H
6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource:
(C
5lstm_38_lstm_cell_470_biasadd_readvariableop_resource:(9
'dense_12_matmul_readvariableop_resource:
6
(dense_12_biasadd_readvariableop_resource:
identity��dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp�+lstm_36/lstm_cell_468/MatMul/ReadVariableOp�-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp�lstm_36/while�,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp�+lstm_37/lstm_cell_469/MatMul/ReadVariableOp�-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp�lstm_37/while�,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp�+lstm_38/lstm_cell_470/MatMul/ReadVariableOp�-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp�lstm_38/whileC
lstm_36/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_sliceStridedSlicelstm_36/Shape:output:0$lstm_36/strided_slice/stack:output:0&lstm_36/strided_slice/stack_1:output:0&lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_36/zeros/packedPacklstm_36/strided_slice:output:0lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_36/zerosFilllstm_36/zeros/packed:output:0lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_36/zeros_1/packedPacklstm_36/strided_slice:output:0!lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_36/zeros_1Filllstm_36/zeros_1/packed:output:0lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_36/transpose	Transposeinputslstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_36/Shape_1Shapelstm_36/transpose:y:0*
T0*
_output_shapes
:g
lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_1StridedSlicelstm_36/Shape_1:output:0&lstm_36/strided_slice_1/stack:output:0(lstm_36/strided_slice_1/stack_1:output:0(lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_36/TensorArrayV2TensorListReserve,lstm_36/TensorArrayV2/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_36/transpose:y:0Flstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_2StridedSlicelstm_36/transpose:y:0&lstm_36/strided_slice_2/stack:output:0(lstm_36/strided_slice_2/stack_1:output:0(lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_36/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_36/lstm_cell_468/MatMulMatMul lstm_36/strided_slice_2:output:03lstm_36/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_36/lstm_cell_468/MatMul_1MatMullstm_36/zeros:output:05lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_36/lstm_cell_468/addAddV2&lstm_36/lstm_cell_468/MatMul:product:0(lstm_36/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp5lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_36/lstm_cell_468/BiasAddBiasAddlstm_36/lstm_cell_468/add:z:04lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_36/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_36/lstm_cell_468/splitSplit.lstm_36/lstm_cell_468/split/split_dim:output:0&lstm_36/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_36/lstm_cell_468/SigmoidSigmoid$lstm_36/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/Sigmoid_1Sigmoid$lstm_36/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mulMul#lstm_36/lstm_cell_468/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_36/lstm_cell_468/ReluRelu$lstm_36/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mul_1Mul!lstm_36/lstm_cell_468/Sigmoid:y:0(lstm_36/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/add_1AddV2lstm_36/lstm_cell_468/mul:z:0lstm_36/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/Sigmoid_2Sigmoid$lstm_36/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_36/lstm_cell_468/Relu_1Relulstm_36/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_36/lstm_cell_468/mul_2Mul#lstm_36/lstm_cell_468/Sigmoid_2:y:0*lstm_36/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_36/TensorArrayV2_1TensorListReserve.lstm_36/TensorArrayV2_1/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_36_lstm_cell_468_matmul_readvariableop_resource6lstm_36_lstm_cell_468_matmul_1_readvariableop_resource5lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_36_while_body_2843392*&
condR
lstm_36_while_cond_2843391*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_36/strided_slice_3StridedSlice3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_36/strided_slice_3/stack:output:0(lstm_36/strided_slice_3/stack_1:output:0(lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_36/transpose_1	Transpose3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_37/ShapeShapelstm_36/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_sliceStridedSlicelstm_37/Shape:output:0$lstm_37/strided_slice/stack:output:0&lstm_37/strided_slice/stack_1:output:0&lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_37/zeros/packedPacklstm_37/strided_slice:output:0lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_37/zerosFilllstm_37/zeros/packed:output:0lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_37/zeros_1/packedPacklstm_37/strided_slice:output:0!lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_37/zeros_1Filllstm_37/zeros_1/packed:output:0lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_37/transpose	Transposelstm_36/transpose_1:y:0lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_37/Shape_1Shapelstm_37/transpose:y:0*
T0*
_output_shapes
:g
lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_1StridedSlicelstm_37/Shape_1:output:0&lstm_37/strided_slice_1/stack:output:0(lstm_37/strided_slice_1/stack_1:output:0(lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_37/TensorArrayV2TensorListReserve,lstm_37/TensorArrayV2/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_37/transpose:y:0Flstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_2StridedSlicelstm_37/transpose:y:0&lstm_37/strided_slice_2/stack:output:0(lstm_37/strided_slice_2/stack_1:output:0(lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_37/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4lstm_37_lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_37/lstm_cell_469/MatMulMatMul lstm_37/strided_slice_2:output:03lstm_37/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_37/lstm_cell_469/MatMul_1MatMullstm_37/zeros:output:05lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_37/lstm_cell_469/addAddV2&lstm_37/lstm_cell_469/MatMul:product:0(lstm_37/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_37/lstm_cell_469/BiasAddBiasAddlstm_37/lstm_cell_469/add:z:04lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_37/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_37/lstm_cell_469/splitSplit.lstm_37/lstm_cell_469/split/split_dim:output:0&lstm_37/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_37/lstm_cell_469/SigmoidSigmoid$lstm_37/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/Sigmoid_1Sigmoid$lstm_37/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mulMul#lstm_37/lstm_cell_469/Sigmoid_1:y:0lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_37/lstm_cell_469/ReluRelu$lstm_37/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mul_1Mul!lstm_37/lstm_cell_469/Sigmoid:y:0(lstm_37/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/add_1AddV2lstm_37/lstm_cell_469/mul:z:0lstm_37/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/Sigmoid_2Sigmoid$lstm_37/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_37/lstm_cell_469/Relu_1Relulstm_37/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_37/lstm_cell_469/mul_2Mul#lstm_37/lstm_cell_469/Sigmoid_2:y:0*lstm_37/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_37/TensorArrayV2_1TensorListReserve.lstm_37/TensorArrayV2_1/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_37/whileWhile#lstm_37/while/loop_counter:output:0)lstm_37/while/maximum_iterations:output:0lstm_37/time:output:0 lstm_37/TensorArrayV2_1:handle:0lstm_37/zeros:output:0lstm_37/zeros_1:output:0 lstm_37/strided_slice_1:output:0?lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_37_lstm_cell_469_matmul_readvariableop_resource6lstm_37_lstm_cell_469_matmul_1_readvariableop_resource5lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_37_while_body_2843531*&
condR
lstm_37_while_cond_2843530*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_37/TensorArrayV2Stack/TensorListStackTensorListStacklstm_37/while:output:3Alstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_37/strided_slice_3StridedSlice3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_37/strided_slice_3/stack:output:0(lstm_37/strided_slice_3/stack_1:output:0(lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_37/transpose_1	Transpose3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_38/ShapeShapelstm_37/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_sliceStridedSlicelstm_38/Shape:output:0$lstm_38/strided_slice/stack:output:0&lstm_38/strided_slice/stack_1:output:0&lstm_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_38/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_38/zeros/packedPacklstm_38/strided_slice:output:0lstm_38/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_38/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_38/zerosFilllstm_38/zeros/packed:output:0lstm_38/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_38/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_38/zeros_1/packedPacklstm_38/strided_slice:output:0!lstm_38/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_38/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_38/zeros_1Filllstm_38/zeros_1/packed:output:0lstm_38/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_38/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_38/transpose	Transposelstm_37/transpose_1:y:0lstm_38/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_38/Shape_1Shapelstm_38/transpose:y:0*
T0*
_output_shapes
:g
lstm_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_1StridedSlicelstm_38/Shape_1:output:0&lstm_38/strided_slice_1/stack:output:0(lstm_38/strided_slice_1/stack_1:output:0(lstm_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_38/TensorArrayV2TensorListReserve,lstm_38/TensorArrayV2/element_shape:output:0 lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_38/transpose:y:0Flstm_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_2StridedSlicelstm_38/transpose:y:0&lstm_38/strided_slice_2/stack:output:0(lstm_38/strided_slice_2/stack_1:output:0(lstm_38/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_38/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4lstm_38_lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_38/lstm_cell_470/MatMulMatMul lstm_38/strided_slice_2:output:03lstm_38/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_38/lstm_cell_470/MatMul_1MatMullstm_38/zeros:output:05lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_38/lstm_cell_470/addAddV2&lstm_38/lstm_cell_470/MatMul:product:0(lstm_38/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_38/lstm_cell_470/BiasAddBiasAddlstm_38/lstm_cell_470/add:z:04lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_38/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_38/lstm_cell_470/splitSplit.lstm_38/lstm_cell_470/split/split_dim:output:0&lstm_38/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_38/lstm_cell_470/SigmoidSigmoid$lstm_38/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/Sigmoid_1Sigmoid$lstm_38/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mulMul#lstm_38/lstm_cell_470/Sigmoid_1:y:0lstm_38/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_38/lstm_cell_470/ReluRelu$lstm_38/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mul_1Mul!lstm_38/lstm_cell_470/Sigmoid:y:0(lstm_38/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/add_1AddV2lstm_38/lstm_cell_470/mul:z:0lstm_38/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/Sigmoid_2Sigmoid$lstm_38/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_38/lstm_cell_470/Relu_1Relulstm_38/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_38/lstm_cell_470/mul_2Mul#lstm_38/lstm_cell_470/Sigmoid_2:y:0*lstm_38/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_38/TensorArrayV2_1TensorListReserve.lstm_38/TensorArrayV2_1/element_shape:output:0 lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_38/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_38/whileWhile#lstm_38/while/loop_counter:output:0)lstm_38/while/maximum_iterations:output:0lstm_38/time:output:0 lstm_38/TensorArrayV2_1:handle:0lstm_38/zeros:output:0lstm_38/zeros_1:output:0 lstm_38/strided_slice_1:output:0?lstm_38/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_38_lstm_cell_470_matmul_readvariableop_resource6lstm_38_lstm_cell_470_matmul_1_readvariableop_resource5lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_38_while_body_2843670*&
condR
lstm_38_while_cond_2843669*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_38/TensorArrayV2Stack/TensorListStackTensorListStacklstm_38/while:output:3Alstm_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_38/strided_slice_3StridedSlice3lstm_38/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_38/strided_slice_3/stack:output:0(lstm_38/strided_slice_3/stack_1:output:0(lstm_38/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_38/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_38/transpose_1	Transpose3lstm_38/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_38/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_38/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_12/MatMulMatMul lstm_38/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp-^lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp,^lstm_36/lstm_cell_468/MatMul/ReadVariableOp.^lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp^lstm_36/while-^lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp,^lstm_37/lstm_cell_469/MatMul/ReadVariableOp.^lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp^lstm_37/while-^lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp,^lstm_38/lstm_cell_470/MatMul/ReadVariableOp.^lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp^lstm_38/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2\
,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp,lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp2Z
+lstm_36/lstm_cell_468/MatMul/ReadVariableOp+lstm_36/lstm_cell_468/MatMul/ReadVariableOp2^
-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp-lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp2
lstm_36/whilelstm_36/while2\
,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp,lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp2Z
+lstm_37/lstm_cell_469/MatMul/ReadVariableOp+lstm_37/lstm_cell_469/MatMul/ReadVariableOp2^
-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp-lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp2
lstm_37/whilelstm_37/while2\
,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp,lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp2Z
+lstm_38/lstm_cell_470/MatMul/ReadVariableOp+lstm_38/lstm_cell_470/MatMul/ReadVariableOp2^
-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp-lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp2
lstm_38/whilelstm_38/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_470_layer_call_fn_2846284

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841932o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�8
�
while_body_2845192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2841640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841640___redundant_placeholder05
1while_while_cond_2841640___redundant_placeholder15
1while_while_cond_2841640___redundant_placeholder25
1while_while_cond_2841640___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846316

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
ݳ
�
"__inference__wrapped_model_2841019
lstm_36_inputU
Bsequential_12_lstm_36_lstm_cell_468_matmul_readvariableop_resource:	�W
Dsequential_12_lstm_36_lstm_cell_468_matmul_1_readvariableop_resource:	d�R
Csequential_12_lstm_36_lstm_cell_468_biasadd_readvariableop_resource:	�U
Bsequential_12_lstm_37_lstm_cell_469_matmul_readvariableop_resource:	d�W
Dsequential_12_lstm_37_lstm_cell_469_matmul_1_readvariableop_resource:	2�R
Csequential_12_lstm_37_lstm_cell_469_biasadd_readvariableop_resource:	�T
Bsequential_12_lstm_38_lstm_cell_470_matmul_readvariableop_resource:2(V
Dsequential_12_lstm_38_lstm_cell_470_matmul_1_readvariableop_resource:
(Q
Csequential_12_lstm_38_lstm_cell_470_biasadd_readvariableop_resource:(G
5sequential_12_dense_12_matmul_readvariableop_resource:
D
6sequential_12_dense_12_biasadd_readvariableop_resource:
identity��-sequential_12/dense_12/BiasAdd/ReadVariableOp�,sequential_12/dense_12/MatMul/ReadVariableOp�:sequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp�9sequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOp�;sequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp�sequential_12/lstm_36/while�:sequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp�9sequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOp�;sequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp�sequential_12/lstm_37/while�:sequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp�9sequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOp�;sequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp�sequential_12/lstm_38/whileX
sequential_12/lstm_36/ShapeShapelstm_36_input*
T0*
_output_shapes
:s
)sequential_12/lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_12/lstm_36/strided_sliceStridedSlice$sequential_12/lstm_36/Shape:output:02sequential_12/lstm_36/strided_slice/stack:output:04sequential_12/lstm_36/strided_slice/stack_1:output:04sequential_12/lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
"sequential_12/lstm_36/zeros/packedPack,sequential_12/lstm_36/strided_slice:output:0-sequential_12/lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_36/zerosFill+sequential_12/lstm_36/zeros/packed:output:0*sequential_12/lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:���������dh
&sequential_12/lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_12/lstm_36/zeros_1/packedPack,sequential_12/lstm_36/strided_slice:output:0/sequential_12/lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_36/zeros_1Fill-sequential_12/lstm_36/zeros_1/packed:output:0,sequential_12/lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dy
$sequential_12/lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_12/lstm_36/transpose	Transposelstm_36_input-sequential_12/lstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:���������p
sequential_12/lstm_36/Shape_1Shape#sequential_12/lstm_36/transpose:y:0*
T0*
_output_shapes
:u
+sequential_12/lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_36/strided_slice_1StridedSlice&sequential_12/lstm_36/Shape_1:output:04sequential_12/lstm_36/strided_slice_1/stack:output:06sequential_12/lstm_36/strided_slice_1/stack_1:output:06sequential_12/lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_12/lstm_36/TensorArrayV2TensorListReserve:sequential_12/lstm_36/TensorArrayV2/element_shape:output:0.sequential_12/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_12/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_12/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_36/transpose:y:0Tsequential_12/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_12/lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_36/strided_slice_2StridedSlice#sequential_12/lstm_36/transpose:y:04sequential_12/lstm_36/strided_slice_2/stack:output:06sequential_12/lstm_36/strided_slice_2/stack_1:output:06sequential_12/lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
9sequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOpReadVariableOpBsequential_12_lstm_36_lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*sequential_12/lstm_36/lstm_cell_468/MatMulMatMul.sequential_12/lstm_36/strided_slice_2:output:0Asequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOpDsequential_12_lstm_36_lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_12/lstm_36/lstm_cell_468/MatMul_1MatMul$sequential_12/lstm_36/zeros:output:0Csequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_12/lstm_36/lstm_cell_468/addAddV24sequential_12/lstm_36/lstm_cell_468/MatMul:product:06sequential_12/lstm_36/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOpCsequential_12_lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_12/lstm_36/lstm_cell_468/BiasAddBiasAdd+sequential_12/lstm_36/lstm_cell_468/add:z:0Bsequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_12/lstm_36/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_12/lstm_36/lstm_cell_468/splitSplit<sequential_12/lstm_36/lstm_cell_468/split/split_dim:output:04sequential_12/lstm_36/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
+sequential_12/lstm_36/lstm_cell_468/SigmoidSigmoid2sequential_12/lstm_36/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
-sequential_12/lstm_36/lstm_cell_468/Sigmoid_1Sigmoid2sequential_12/lstm_36/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
'sequential_12/lstm_36/lstm_cell_468/mulMul1sequential_12/lstm_36/lstm_cell_468/Sigmoid_1:y:0&sequential_12/lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
(sequential_12/lstm_36/lstm_cell_468/ReluRelu2sequential_12/lstm_36/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
)sequential_12/lstm_36/lstm_cell_468/mul_1Mul/sequential_12/lstm_36/lstm_cell_468/Sigmoid:y:06sequential_12/lstm_36/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential_12/lstm_36/lstm_cell_468/add_1AddV2+sequential_12/lstm_36/lstm_cell_468/mul:z:0-sequential_12/lstm_36/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
-sequential_12/lstm_36/lstm_cell_468/Sigmoid_2Sigmoid2sequential_12/lstm_36/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������d�
*sequential_12/lstm_36/lstm_cell_468/Relu_1Relu-sequential_12/lstm_36/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_12/lstm_36/lstm_cell_468/mul_2Mul1sequential_12/lstm_36/lstm_cell_468/Sigmoid_2:y:08sequential_12/lstm_36/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3sequential_12/lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
%sequential_12/lstm_36/TensorArrayV2_1TensorListReserve<sequential_12/lstm_36/TensorArrayV2_1/element_shape:output:0.sequential_12/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_12/lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_12/lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_12/lstm_36/whileWhile1sequential_12/lstm_36/while/loop_counter:output:07sequential_12/lstm_36/while/maximum_iterations:output:0#sequential_12/lstm_36/time:output:0.sequential_12/lstm_36/TensorArrayV2_1:handle:0$sequential_12/lstm_36/zeros:output:0&sequential_12/lstm_36/zeros_1:output:0.sequential_12/lstm_36/strided_slice_1:output:0Msequential_12/lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_12_lstm_36_lstm_cell_468_matmul_readvariableop_resourceDsequential_12_lstm_36_lstm_cell_468_matmul_1_readvariableop_resourceCsequential_12_lstm_36_lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_12_lstm_36_while_body_2840651*4
cond,R*
(sequential_12_lstm_36_while_cond_2840650*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Fsequential_12/lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
8sequential_12/lstm_36/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_36/while:output:3Osequential_12/lstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0~
+sequential_12/lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_12/lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_36/strided_slice_3StridedSliceAsequential_12/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_36/strided_slice_3/stack:output:06sequential_12/lstm_36/strided_slice_3/stack_1:output:06sequential_12/lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask{
&sequential_12/lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_12/lstm_36/transpose_1	TransposeAsequential_12/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dq
sequential_12/lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_12/lstm_37/ShapeShape%sequential_12/lstm_36/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_12/lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_12/lstm_37/strided_sliceStridedSlice$sequential_12/lstm_37/Shape:output:02sequential_12/lstm_37/strided_slice/stack:output:04sequential_12/lstm_37/strided_slice/stack_1:output:04sequential_12/lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_12/lstm_37/zeros/packedPack,sequential_12/lstm_37/strided_slice:output:0-sequential_12/lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_37/zerosFill+sequential_12/lstm_37/zeros/packed:output:0*sequential_12/lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:���������2h
&sequential_12/lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_12/lstm_37/zeros_1/packedPack,sequential_12/lstm_37/strided_slice:output:0/sequential_12/lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_37/zeros_1Fill-sequential_12/lstm_37/zeros_1/packed:output:0,sequential_12/lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2y
$sequential_12/lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_12/lstm_37/transpose	Transpose%sequential_12/lstm_36/transpose_1:y:0-sequential_12/lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:���������dp
sequential_12/lstm_37/Shape_1Shape#sequential_12/lstm_37/transpose:y:0*
T0*
_output_shapes
:u
+sequential_12/lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_37/strided_slice_1StridedSlice&sequential_12/lstm_37/Shape_1:output:04sequential_12/lstm_37/strided_slice_1/stack:output:06sequential_12/lstm_37/strided_slice_1/stack_1:output:06sequential_12/lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_12/lstm_37/TensorArrayV2TensorListReserve:sequential_12/lstm_37/TensorArrayV2/element_shape:output:0.sequential_12/lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_12/lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
=sequential_12/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_37/transpose:y:0Tsequential_12/lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_12/lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_37/strided_slice_2StridedSlice#sequential_12/lstm_37/transpose:y:04sequential_12/lstm_37/strided_slice_2/stack:output:06sequential_12/lstm_37/strided_slice_2/stack_1:output:06sequential_12/lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
9sequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOpReadVariableOpBsequential_12_lstm_37_lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
*sequential_12/lstm_37/lstm_cell_469/MatMulMatMul.sequential_12/lstm_37/strided_slice_2:output:0Asequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOpDsequential_12_lstm_37_lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
,sequential_12/lstm_37/lstm_cell_469/MatMul_1MatMul$sequential_12/lstm_37/zeros:output:0Csequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_12/lstm_37/lstm_cell_469/addAddV24sequential_12/lstm_37/lstm_cell_469/MatMul:product:06sequential_12/lstm_37/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOpCsequential_12_lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_12/lstm_37/lstm_cell_469/BiasAddBiasAdd+sequential_12/lstm_37/lstm_cell_469/add:z:0Bsequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_12/lstm_37/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_12/lstm_37/lstm_cell_469/splitSplit<sequential_12/lstm_37/lstm_cell_469/split/split_dim:output:04sequential_12/lstm_37/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
+sequential_12/lstm_37/lstm_cell_469/SigmoidSigmoid2sequential_12/lstm_37/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2�
-sequential_12/lstm_37/lstm_cell_469/Sigmoid_1Sigmoid2sequential_12/lstm_37/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
'sequential_12/lstm_37/lstm_cell_469/mulMul1sequential_12/lstm_37/lstm_cell_469/Sigmoid_1:y:0&sequential_12/lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
(sequential_12/lstm_37/lstm_cell_469/ReluRelu2sequential_12/lstm_37/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
)sequential_12/lstm_37/lstm_cell_469/mul_1Mul/sequential_12/lstm_37/lstm_cell_469/Sigmoid:y:06sequential_12/lstm_37/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
)sequential_12/lstm_37/lstm_cell_469/add_1AddV2+sequential_12/lstm_37/lstm_cell_469/mul:z:0-sequential_12/lstm_37/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_12/lstm_37/lstm_cell_469/Sigmoid_2Sigmoid2sequential_12/lstm_37/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2�
*sequential_12/lstm_37/lstm_cell_469/Relu_1Relu-sequential_12/lstm_37/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
)sequential_12/lstm_37/lstm_cell_469/mul_2Mul1sequential_12/lstm_37/lstm_cell_469/Sigmoid_2:y:08sequential_12/lstm_37/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3sequential_12/lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
%sequential_12/lstm_37/TensorArrayV2_1TensorListReserve<sequential_12/lstm_37/TensorArrayV2_1/element_shape:output:0.sequential_12/lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_12/lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_12/lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_12/lstm_37/whileWhile1sequential_12/lstm_37/while/loop_counter:output:07sequential_12/lstm_37/while/maximum_iterations:output:0#sequential_12/lstm_37/time:output:0.sequential_12/lstm_37/TensorArrayV2_1:handle:0$sequential_12/lstm_37/zeros:output:0&sequential_12/lstm_37/zeros_1:output:0.sequential_12/lstm_37/strided_slice_1:output:0Msequential_12/lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_12_lstm_37_lstm_cell_469_matmul_readvariableop_resourceDsequential_12_lstm_37_lstm_cell_469_matmul_1_readvariableop_resourceCsequential_12_lstm_37_lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_12_lstm_37_while_body_2840790*4
cond,R*
(sequential_12_lstm_37_while_cond_2840789*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Fsequential_12/lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
8sequential_12/lstm_37/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_37/while:output:3Osequential_12/lstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0~
+sequential_12/lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_12/lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_37/strided_slice_3StridedSliceAsequential_12/lstm_37/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_37/strided_slice_3/stack:output:06sequential_12/lstm_37/strided_slice_3/stack_1:output:06sequential_12/lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask{
&sequential_12/lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_12/lstm_37/transpose_1	TransposeAsequential_12/lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_12/lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_12/lstm_38/ShapeShape%sequential_12/lstm_37/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_12/lstm_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_12/lstm_38/strided_sliceStridedSlice$sequential_12/lstm_38/Shape:output:02sequential_12/lstm_38/strided_slice/stack:output:04sequential_12/lstm_38/strided_slice/stack_1:output:04sequential_12/lstm_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_38/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"sequential_12/lstm_38/zeros/packedPack,sequential_12/lstm_38/strided_slice:output:0-sequential_12/lstm_38/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_38/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_38/zerosFill+sequential_12/lstm_38/zeros/packed:output:0*sequential_12/lstm_38/zeros/Const:output:0*
T0*'
_output_shapes
:���������
h
&sequential_12/lstm_38/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_12/lstm_38/zeros_1/packedPack,sequential_12/lstm_38/strided_slice:output:0/sequential_12/lstm_38/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_38/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_12/lstm_38/zeros_1Fill-sequential_12/lstm_38/zeros_1/packed:output:0,sequential_12/lstm_38/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
y
$sequential_12/lstm_38/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_12/lstm_38/transpose	Transpose%sequential_12/lstm_37/transpose_1:y:0-sequential_12/lstm_38/transpose/perm:output:0*
T0*+
_output_shapes
:���������2p
sequential_12/lstm_38/Shape_1Shape#sequential_12/lstm_38/transpose:y:0*
T0*
_output_shapes
:u
+sequential_12/lstm_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_38/strided_slice_1StridedSlice&sequential_12/lstm_38/Shape_1:output:04sequential_12/lstm_38/strided_slice_1/stack:output:06sequential_12/lstm_38/strided_slice_1/stack_1:output:06sequential_12/lstm_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_12/lstm_38/TensorArrayV2TensorListReserve:sequential_12/lstm_38/TensorArrayV2/element_shape:output:0.sequential_12/lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_12/lstm_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
=sequential_12/lstm_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_38/transpose:y:0Tsequential_12/lstm_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_12/lstm_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_38/strided_slice_2StridedSlice#sequential_12/lstm_38/transpose:y:04sequential_12/lstm_38/strided_slice_2/stack:output:06sequential_12/lstm_38/strided_slice_2/stack_1:output:06sequential_12/lstm_38/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
9sequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOpReadVariableOpBsequential_12_lstm_38_lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
*sequential_12/lstm_38/lstm_cell_470/MatMulMatMul.sequential_12/lstm_38/strided_slice_2:output:0Asequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;sequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOpDsequential_12_lstm_38_lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
,sequential_12/lstm_38/lstm_cell_470/MatMul_1MatMul$sequential_12/lstm_38/zeros:output:0Csequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
'sequential_12/lstm_38/lstm_cell_470/addAddV24sequential_12/lstm_38/lstm_cell_470/MatMul:product:06sequential_12/lstm_38/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
:sequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOpCsequential_12_lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
+sequential_12/lstm_38/lstm_cell_470/BiasAddBiasAdd+sequential_12/lstm_38/lstm_cell_470/add:z:0Bsequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(u
3sequential_12/lstm_38/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_12/lstm_38/lstm_cell_470/splitSplit<sequential_12/lstm_38/lstm_cell_470/split/split_dim:output:04sequential_12/lstm_38/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
+sequential_12/lstm_38/lstm_cell_470/SigmoidSigmoid2sequential_12/lstm_38/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
�
-sequential_12/lstm_38/lstm_cell_470/Sigmoid_1Sigmoid2sequential_12/lstm_38/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
'sequential_12/lstm_38/lstm_cell_470/mulMul1sequential_12/lstm_38/lstm_cell_470/Sigmoid_1:y:0&sequential_12/lstm_38/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
(sequential_12/lstm_38/lstm_cell_470/ReluRelu2sequential_12/lstm_38/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
)sequential_12/lstm_38/lstm_cell_470/mul_1Mul/sequential_12/lstm_38/lstm_cell_470/Sigmoid:y:06sequential_12/lstm_38/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
)sequential_12/lstm_38/lstm_cell_470/add_1AddV2+sequential_12/lstm_38/lstm_cell_470/mul:z:0-sequential_12/lstm_38/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_12/lstm_38/lstm_cell_470/Sigmoid_2Sigmoid2sequential_12/lstm_38/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
�
*sequential_12/lstm_38/lstm_cell_470/Relu_1Relu-sequential_12/lstm_38/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
)sequential_12/lstm_38/lstm_cell_470/mul_2Mul1sequential_12/lstm_38/lstm_cell_470/Sigmoid_2:y:08sequential_12/lstm_38/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3sequential_12/lstm_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
%sequential_12/lstm_38/TensorArrayV2_1TensorListReserve<sequential_12/lstm_38/TensorArrayV2_1/element_shape:output:0.sequential_12/lstm_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_12/lstm_38/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_12/lstm_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_12/lstm_38/whileWhile1sequential_12/lstm_38/while/loop_counter:output:07sequential_12/lstm_38/while/maximum_iterations:output:0#sequential_12/lstm_38/time:output:0.sequential_12/lstm_38/TensorArrayV2_1:handle:0$sequential_12/lstm_38/zeros:output:0&sequential_12/lstm_38/zeros_1:output:0.sequential_12/lstm_38/strided_slice_1:output:0Msequential_12/lstm_38/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_12_lstm_38_lstm_cell_470_matmul_readvariableop_resourceDsequential_12_lstm_38_lstm_cell_470_matmul_1_readvariableop_resourceCsequential_12_lstm_38_lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_12_lstm_38_while_body_2840929*4
cond,R*
(sequential_12_lstm_38_while_cond_2840928*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Fsequential_12/lstm_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
8sequential_12/lstm_38/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_38/while:output:3Osequential_12/lstm_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0~
+sequential_12/lstm_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_12/lstm_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_12/lstm_38/strided_slice_3StridedSliceAsequential_12/lstm_38/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_38/strided_slice_3/stack:output:06sequential_12/lstm_38/strided_slice_3/stack_1:output:06sequential_12/lstm_38/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask{
&sequential_12/lstm_38/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_12/lstm_38/transpose_1	TransposeAsequential_12/lstm_38/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_38/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
q
sequential_12/lstm_38/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_12/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_12_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_12/dense_12/MatMulMatMul.sequential_12/lstm_38/strided_slice_3:output:04sequential_12/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_12/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_12/dense_12/BiasAddBiasAdd'sequential_12/dense_12/MatMul:product:05sequential_12/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_12/dense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_12/dense_12/BiasAdd/ReadVariableOp-^sequential_12/dense_12/MatMul/ReadVariableOp;^sequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp:^sequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOp<^sequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp^sequential_12/lstm_36/while;^sequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp:^sequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOp<^sequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp^sequential_12/lstm_37/while;^sequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp:^sequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOp<^sequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp^sequential_12/lstm_38/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_12/dense_12/BiasAdd/ReadVariableOp-sequential_12/dense_12/BiasAdd/ReadVariableOp2\
,sequential_12/dense_12/MatMul/ReadVariableOp,sequential_12/dense_12/MatMul/ReadVariableOp2x
:sequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp:sequential_12/lstm_36/lstm_cell_468/BiasAdd/ReadVariableOp2v
9sequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOp9sequential_12/lstm_36/lstm_cell_468/MatMul/ReadVariableOp2z
;sequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp;sequential_12/lstm_36/lstm_cell_468/MatMul_1/ReadVariableOp2:
sequential_12/lstm_36/whilesequential_12/lstm_36/while2x
:sequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp:sequential_12/lstm_37/lstm_cell_469/BiasAdd/ReadVariableOp2v
9sequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOp9sequential_12/lstm_37/lstm_cell_469/MatMul/ReadVariableOp2z
;sequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp;sequential_12/lstm_37/lstm_cell_469/MatMul_1/ReadVariableOp2:
sequential_12/lstm_37/whilesequential_12/lstm_37/while2x
:sequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp:sequential_12/lstm_38/lstm_cell_470/BiasAdd/ReadVariableOp2v
9sequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOp9sequential_12/lstm_38/lstm_cell_470/MatMul/ReadVariableOp2z
;sequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp;sequential_12/lstm_38/lstm_cell_470/MatMul_1/ReadVariableOp2:
sequential_12/lstm_38/whilesequential_12/lstm_38/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
�
�
while_cond_2841290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841290___redundant_placeholder05
1while_while_cond_2841290___redundant_placeholder15
1while_while_cond_2841290___redundant_placeholder25
1while_while_cond_2841290___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2841449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841449___redundant_placeholder05
1while_while_cond_2841449___redundant_placeholder15
1while_while_cond_2841449___redundant_placeholder25
1while_while_cond_2841449___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�	
�
E__inference_dense_12_layer_call_and_return_conditional_losses_2846054

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846250

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�
�
while_cond_2845048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2845048___redundant_placeholder05
1while_while_cond_2845048___redundant_placeholder15
1while_while_cond_2845048___redundant_placeholder25
1while_while_cond_2845048___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_2842284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_469_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_469_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_469_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_469_matmul_readvariableop_resource:	d�G
4while_lstm_cell_469_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_469_biasadd_readvariableop_resource:	���*while/lstm_cell_469/BiasAdd/ReadVariableOp�)while/lstm_cell_469/MatMul/ReadVariableOp�+while/lstm_cell_469/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_469/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_469_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_469/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_469_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_469/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_469/addAddV2$while/lstm_cell_469/MatMul:product:0&while/lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_469_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_469/BiasAddBiasAddwhile/lstm_cell_469/add:z:02while/lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_469/splitSplit,while/lstm_cell_469/split/split_dim:output:0$while/lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_469/SigmoidSigmoid"while/lstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_1Sigmoid"while/lstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mulMul!while/lstm_cell_469/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_469/ReluRelu"while/lstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_1Mulwhile/lstm_cell_469/Sigmoid:y:0&while/lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/add_1AddV2while/lstm_cell_469/mul:z:0while/lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_469/Sigmoid_2Sigmoid"while/lstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_469/Relu_1Reluwhile/lstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_469/mul_2Mul!while/lstm_cell_469/Sigmoid_2:y:0(while/lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_469/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_469/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_469/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_469/BiasAdd/ReadVariableOp*^while/lstm_cell_469/MatMul/ReadVariableOp,^while/lstm_cell_469/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_469_biasadd_readvariableop_resource5while_lstm_cell_469_biasadd_readvariableop_resource_0"n
4while_lstm_cell_469_matmul_1_readvariableop_resource6while_lstm_cell_469_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_469_matmul_readvariableop_resource4while_lstm_cell_469_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_469/BiasAdd/ReadVariableOp*while/lstm_cell_469/BiasAdd/ReadVariableOp2V
)while/lstm_cell_469/MatMul/ReadVariableOp)while/lstm_cell_469/MatMul/ReadVariableOp2Z
+while/lstm_cell_469/MatMul_1/ReadVariableOp+while/lstm_cell_469/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
��
�
#__inference__traced_restore_2846621
file_prefix2
 assignvariableop_dense_12_kernel:
.
 assignvariableop_1_dense_12_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_36_lstm_cell_36_kernel:	�K
8assignvariableop_8_lstm_36_lstm_cell_36_recurrent_kernel:	d�;
,assignvariableop_9_lstm_36_lstm_cell_36_bias:	�B
/assignvariableop_10_lstm_37_lstm_cell_37_kernel:	d�L
9assignvariableop_11_lstm_37_lstm_cell_37_recurrent_kernel:	2�<
-assignvariableop_12_lstm_37_lstm_cell_37_bias:	�A
/assignvariableop_13_lstm_38_lstm_cell_38_kernel:2(K
9assignvariableop_14_lstm_38_lstm_cell_38_recurrent_kernel:
(;
-assignvariableop_15_lstm_38_lstm_cell_38_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_12_kernel_m:
6
(assignvariableop_19_adam_dense_12_bias_m:I
6assignvariableop_20_adam_lstm_36_lstm_cell_36_kernel_m:	�S
@assignvariableop_21_adam_lstm_36_lstm_cell_36_recurrent_kernel_m:	d�C
4assignvariableop_22_adam_lstm_36_lstm_cell_36_bias_m:	�I
6assignvariableop_23_adam_lstm_37_lstm_cell_37_kernel_m:	d�S
@assignvariableop_24_adam_lstm_37_lstm_cell_37_recurrent_kernel_m:	2�C
4assignvariableop_25_adam_lstm_37_lstm_cell_37_bias_m:	�H
6assignvariableop_26_adam_lstm_38_lstm_cell_38_kernel_m:2(R
@assignvariableop_27_adam_lstm_38_lstm_cell_38_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_38_lstm_cell_38_bias_m:(<
*assignvariableop_29_adam_dense_12_kernel_v:
6
(assignvariableop_30_adam_dense_12_bias_v:I
6assignvariableop_31_adam_lstm_36_lstm_cell_36_kernel_v:	�S
@assignvariableop_32_adam_lstm_36_lstm_cell_36_recurrent_kernel_v:	d�C
4assignvariableop_33_adam_lstm_36_lstm_cell_36_bias_v:	�I
6assignvariableop_34_adam_lstm_37_lstm_cell_37_kernel_v:	d�S
@assignvariableop_35_adam_lstm_37_lstm_cell_37_recurrent_kernel_v:	2�C
4assignvariableop_36_adam_lstm_37_lstm_cell_37_bias_v:	�H
6assignvariableop_37_adam_lstm_38_lstm_cell_38_kernel_v:2(R
@assignvariableop_38_adam_lstm_38_lstm_cell_38_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_38_lstm_cell_38_bias_v:(
identity_41��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_36_lstm_cell_36_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_36_lstm_cell_36_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_36_lstm_cell_36_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_37_lstm_cell_37_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_37_lstm_cell_37_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_37_lstm_cell_37_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_38_lstm_cell_38_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_38_lstm_cell_38_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_38_lstm_cell_38_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_12_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_12_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_36_lstm_cell_36_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_36_lstm_cell_36_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_36_lstm_cell_36_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_37_lstm_cell_37_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_37_lstm_cell_37_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_37_lstm_cell_37_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_38_lstm_cell_38_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_38_lstm_cell_38_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_38_lstm_cell_38_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_12_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_12_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_36_lstm_cell_36_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_36_lstm_cell_36_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_36_lstm_cell_36_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_37_lstm_cell_37_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_37_lstm_cell_37_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_37_lstm_cell_37_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_38_lstm_cell_38_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_38_lstm_cell_38_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_38_lstm_cell_38_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
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
�#
�
while_body_2841991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_470_2842015_0:2(/
while_lstm_cell_470_2842017_0:
(+
while_lstm_cell_470_2842019_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_470_2842015:2(-
while_lstm_cell_470_2842017:
()
while_lstm_cell_470_2842019:(��+while/lstm_cell_470/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_470/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_470_2842015_0while_lstm_cell_470_2842017_0while_lstm_cell_470_2842019_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841932�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_470/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_470/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_470/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_470/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_470_2842015while_lstm_cell_470_2842015_0"<
while_lstm_cell_470_2842017while_lstm_cell_470_2842017_0"<
while_lstm_cell_470_2842019while_lstm_cell_470_2842019_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_470/StatefulPartitionedCall+while/lstm_cell_470/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�B
�

lstm_36_while_body_2843392,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0:	�Q
>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0:	d�L
=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0:	�
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorM
:lstm_36_while_lstm_cell_468_matmul_readvariableop_resource:	�O
<lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource:	d�J
;lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource:	���2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp�1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp�3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp�
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_36/while/lstm_cell_468/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_36/while/lstm_cell_468/MatMul_1MatMullstm_36_while_placeholder_2;lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_36/while/lstm_cell_468/addAddV2,lstm_36/while/lstm_cell_468/MatMul:product:0.lstm_36/while/lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_36/while/lstm_cell_468/BiasAddBiasAdd#lstm_36/while/lstm_cell_468/add:z:0:lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_36/while/lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_36/while/lstm_cell_468/splitSplit4lstm_36/while/lstm_cell_468/split/split_dim:output:0,lstm_36/while/lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_36/while/lstm_cell_468/SigmoidSigmoid*lstm_36/while/lstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_36/while/lstm_cell_468/Sigmoid_1Sigmoid*lstm_36/while/lstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_36/while/lstm_cell_468/mulMul)lstm_36/while/lstm_cell_468/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_36/while/lstm_cell_468/ReluRelu*lstm_36/while/lstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/mul_1Mul'lstm_36/while/lstm_cell_468/Sigmoid:y:0.lstm_36/while/lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/add_1AddV2#lstm_36/while/lstm_cell_468/mul:z:0%lstm_36/while/lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_36/while/lstm_cell_468/Sigmoid_2Sigmoid*lstm_36/while/lstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_36/while/lstm_cell_468/Relu_1Relu%lstm_36/while/lstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_36/while/lstm_cell_468/mul_2Mul)lstm_36/while/lstm_cell_468/Sigmoid_2:y:00lstm_36/while/lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder%lstm_36/while/lstm_cell_468/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_36/while/addAddV2lstm_36_while_placeholderlstm_36/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_36/while/add_1AddV2(lstm_36_while_lstm_36_while_loop_counterlstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_36/while/IdentityIdentitylstm_36/while/add_1:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_1Identity.lstm_36_while_lstm_36_while_maximum_iterations^lstm_36/while/NoOp*
T0*
_output_shapes
: q
lstm_36/while/Identity_2Identitylstm_36/while/add:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_3IdentityBlstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_36/while/NoOp*
T0*
_output_shapes
: �
lstm_36/while/Identity_4Identity%lstm_36/while/lstm_cell_468/mul_2:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_36/while/Identity_5Identity%lstm_36/while/lstm_cell_468/add_1:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_36/while/NoOpNoOp3^lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2^lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp4^lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_36_while_identitylstm_36/while/Identity:output:0"=
lstm_36_while_identity_1!lstm_36/while/Identity_1:output:0"=
lstm_36_while_identity_2!lstm_36/while/Identity_2:output:0"=
lstm_36_while_identity_3!lstm_36/while/Identity_3:output:0"=
lstm_36_while_identity_4!lstm_36/while/Identity_4:output:0"=
lstm_36_while_identity_5!lstm_36/while/Identity_5:output:0"P
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"|
;lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource=lstm_36_while_lstm_cell_468_biasadd_readvariableop_resource_0"~
<lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource>lstm_36_while_lstm_cell_468_matmul_1_readvariableop_resource_0"z
:lstm_36_while_lstm_cell_468_matmul_readvariableop_resource<lstm_36_while_lstm_cell_468_matmul_readvariableop_resource_0"�
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2lstm_36/while/lstm_cell_468/BiasAdd/ReadVariableOp2f
1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp1lstm_36/while/lstm_cell_468/MatMul/ReadVariableOp2j
3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp3lstm_36/while/lstm_cell_468/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845133
inputs_0?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845049*
condR
while_cond_2845048*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�

�
lstm_38_while_cond_2843669,
(lstm_38_while_lstm_38_while_loop_counter2
.lstm_38_while_lstm_38_while_maximum_iterations
lstm_38_while_placeholder
lstm_38_while_placeholder_1
lstm_38_while_placeholder_2
lstm_38_while_placeholder_3.
*lstm_38_while_less_lstm_38_strided_slice_1E
Alstm_38_while_lstm_38_while_cond_2843669___redundant_placeholder0E
Alstm_38_while_lstm_38_while_cond_2843669___redundant_placeholder1E
Alstm_38_while_lstm_38_while_cond_2843669___redundant_placeholder2E
Alstm_38_while_lstm_38_while_cond_2843669___redundant_placeholder3
lstm_38_while_identity
�
lstm_38/while/LessLesslstm_38_while_placeholder*lstm_38_while_less_lstm_38_strided_slice_1*
T0*
_output_shapes
: [
lstm_38/while/IdentityIdentitylstm_38/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_38_while_identitylstm_38/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_lstm_cell_470_layer_call_fn_2846267

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841786o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�

�
/__inference_sequential_12_layer_call_fn_2843306

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2842543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2842368

inputs?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842284*
condR
while_cond_2842283*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_lstm_37_layer_call_fn_2844825
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_37_layer_call_and_return_conditional_losses_2841710|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�

�
/__inference_sequential_12_layer_call_fn_2843184
lstm_36_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_36_input
�J
�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2843064

inputs?
,lstm_cell_468_matmul_readvariableop_resource:	�A
.lstm_cell_468_matmul_1_readvariableop_resource:	d�<
-lstm_cell_468_biasadd_readvariableop_resource:	�
identity��$lstm_cell_468/BiasAdd/ReadVariableOp�#lstm_cell_468/MatMul/ReadVariableOp�%lstm_cell_468/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_468/MatMul/ReadVariableOpReadVariableOp,lstm_cell_468_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_468/MatMulMatMulstrided_slice_2:output:0+lstm_cell_468/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_468/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_468_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_468/MatMul_1MatMulzeros:output:0-lstm_cell_468/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_468/addAddV2lstm_cell_468/MatMul:product:0 lstm_cell_468/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_468/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_468_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_468/BiasAddBiasAddlstm_cell_468/add:z:0,lstm_cell_468/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_468/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_468/splitSplit&lstm_cell_468/split/split_dim:output:0lstm_cell_468/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_468/SigmoidSigmoidlstm_cell_468/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_1Sigmoidlstm_cell_468/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_468/mulMullstm_cell_468/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_468/ReluRelulstm_cell_468/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_1Mullstm_cell_468/Sigmoid:y:0 lstm_cell_468/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_468/add_1AddV2lstm_cell_468/mul:z:0lstm_cell_468/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_468/Sigmoid_2Sigmoidlstm_cell_468/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_468/Relu_1Relulstm_cell_468/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_468/mul_2Mullstm_cell_468/Sigmoid_2:y:0"lstm_cell_468/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_468_matmul_readvariableop_resource.lstm_cell_468_matmul_1_readvariableop_resource-lstm_cell_468_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842980*
condR
while_cond_2842979*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_468/BiasAdd/ReadVariableOp$^lstm_cell_468/MatMul/ReadVariableOp&^lstm_cell_468/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_468/BiasAdd/ReadVariableOp$lstm_cell_468/BiasAdd/ReadVariableOp2J
#lstm_cell_468/MatMul/ReadVariableOp#lstm_cell_468/MatMul/ReadVariableOp2N
%lstm_cell_468/MatMul_1/ReadVariableOp%lstm_cell_468/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845606
inputs_0>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845522*
condR
while_cond_2845521*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2842734

inputs>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2842650*
condR
while_cond_2842649*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(sequential_12_lstm_37_while_cond_2840789H
Dsequential_12_lstm_37_while_sequential_12_lstm_37_while_loop_counterN
Jsequential_12_lstm_37_while_sequential_12_lstm_37_while_maximum_iterations+
'sequential_12_lstm_37_while_placeholder-
)sequential_12_lstm_37_while_placeholder_1-
)sequential_12_lstm_37_while_placeholder_2-
)sequential_12_lstm_37_while_placeholder_3J
Fsequential_12_lstm_37_while_less_sequential_12_lstm_37_strided_slice_1a
]sequential_12_lstm_37_while_sequential_12_lstm_37_while_cond_2840789___redundant_placeholder0a
]sequential_12_lstm_37_while_sequential_12_lstm_37_while_cond_2840789___redundant_placeholder1a
]sequential_12_lstm_37_while_sequential_12_lstm_37_while_cond_2840789___redundant_placeholder2a
]sequential_12_lstm_37_while_sequential_12_lstm_37_while_cond_2840789___redundant_placeholder3(
$sequential_12_lstm_37_while_identity
�
 sequential_12/lstm_37/while/LessLess'sequential_12_lstm_37_while_placeholderFsequential_12_lstm_37_while_less_sequential_12_lstm_37_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_37/while/IdentityIdentity$sequential_12/lstm_37/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_37_while_identity-sequential_12/lstm_37/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2846035

inputs>
,lstm_cell_470_matmul_readvariableop_resource:2(@
.lstm_cell_470_matmul_1_readvariableop_resource:
(;
-lstm_cell_470_biasadd_readvariableop_resource:(
identity��$lstm_cell_470/BiasAdd/ReadVariableOp�#lstm_cell_470/MatMul/ReadVariableOp�%lstm_cell_470/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_470/MatMul/ReadVariableOpReadVariableOp,lstm_cell_470_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_470/MatMulMatMulstrided_slice_2:output:0+lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_470_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_470/MatMul_1MatMulzeros:output:0-lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_470/addAddV2lstm_cell_470/MatMul:product:0 lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_470_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_470/BiasAddBiasAddlstm_cell_470/add:z:0,lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_470/splitSplit&lstm_cell_470/split/split_dim:output:0lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_470/SigmoidSigmoidlstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_1Sigmoidlstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_470/mulMullstm_cell_470/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_470/ReluRelulstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_1Mullstm_cell_470/Sigmoid:y:0 lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_470/add_1AddV2lstm_cell_470/mul:z:0lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_470/Sigmoid_2Sigmoidlstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_470/Relu_1Relulstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_470/mul_2Mullstm_cell_470/Sigmoid_2:y:0"lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_470_matmul_readvariableop_resource.lstm_cell_470_matmul_1_readvariableop_resource-lstm_cell_470_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2845951*
condR
while_cond_2845950*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_470/BiasAdd/ReadVariableOp$^lstm_cell_470/MatMul/ReadVariableOp&^lstm_cell_470/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_470/BiasAdd/ReadVariableOp$lstm_cell_470/BiasAdd/ReadVariableOp2J
#lstm_cell_470/MatMul/ReadVariableOp#lstm_cell_470/MatMul/ReadVariableOp2N
%lstm_cell_470/MatMul_1/ReadVariableOp%lstm_cell_470/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2841869

inputs'
lstm_cell_470_2841787:2('
lstm_cell_470_2841789:
(#
lstm_cell_470_2841791:(
identity��%lstm_cell_470/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_470/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_470_2841787lstm_cell_470_2841789lstm_cell_470_2841791*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2841786n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_470_2841787lstm_cell_470_2841789lstm_cell_470_2841791*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2841800*
condR
while_cond_2841799*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
v
NoOpNoOp&^lstm_cell_470/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_470/StatefulPartitionedCall%lstm_cell_470/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_2841099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2841099___redundant_placeholder05
1while_while_cond_2841099___redundant_placeholder15
1while_while_cond_2841099___redundant_placeholder25
1while_while_cond_2841099___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_2845522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_470_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_470_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_470_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_470_matmul_readvariableop_resource:2(F
4while_lstm_cell_470_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_470_biasadd_readvariableop_resource:(��*while/lstm_cell_470/BiasAdd/ReadVariableOp�)while/lstm_cell_470/MatMul/ReadVariableOp�+while/lstm_cell_470/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_470/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_470_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_470/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_470/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_470/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_470_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_470/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_470/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_470/addAddV2$while/lstm_cell_470/MatMul:product:0&while/lstm_cell_470/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_470/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_470_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_470/BiasAddBiasAddwhile/lstm_cell_470/add:z:02while/lstm_cell_470/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_470/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_470/splitSplit,while/lstm_cell_470/split/split_dim:output:0$while/lstm_cell_470/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_470/SigmoidSigmoid"while/lstm_cell_470/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_1Sigmoid"while/lstm_cell_470/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mulMul!while/lstm_cell_470/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_470/ReluRelu"while/lstm_cell_470/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_1Mulwhile/lstm_cell_470/Sigmoid:y:0&while/lstm_cell_470/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/add_1AddV2while/lstm_cell_470/mul:z:0while/lstm_cell_470/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_470/Sigmoid_2Sigmoid"while/lstm_cell_470/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_470/Relu_1Reluwhile/lstm_cell_470/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_470/mul_2Mul!while/lstm_cell_470/Sigmoid_2:y:0(while/lstm_cell_470/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_470/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_470/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_470/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_470/BiasAdd/ReadVariableOp*^while/lstm_cell_470/MatMul/ReadVariableOp,^while/lstm_cell_470/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_470_biasadd_readvariableop_resource5while_lstm_cell_470_biasadd_readvariableop_resource_0"n
4while_lstm_cell_470_matmul_1_readvariableop_resource6while_lstm_cell_470_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_470_matmul_readvariableop_resource4while_lstm_cell_470_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_470/BiasAdd/ReadVariableOp*while/lstm_cell_470/BiasAdd/ReadVariableOp2V
)while/lstm_cell_470/MatMul/ReadVariableOp)while/lstm_cell_470/MatMul/ReadVariableOp2Z
+while/lstm_cell_470/MatMul_1/ReadVariableOp+while/lstm_cell_470/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2844990
inputs_0?
,lstm_cell_469_matmul_readvariableop_resource:	d�A
.lstm_cell_469_matmul_1_readvariableop_resource:	2�<
-lstm_cell_469_biasadd_readvariableop_resource:	�
identity��$lstm_cell_469/BiasAdd/ReadVariableOp�#lstm_cell_469/MatMul/ReadVariableOp�%lstm_cell_469/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_469/MatMul/ReadVariableOpReadVariableOp,lstm_cell_469_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_469/MatMulMatMulstrided_slice_2:output:0+lstm_cell_469/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_469/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_469_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_469/MatMul_1MatMulzeros:output:0-lstm_cell_469/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_469/addAddV2lstm_cell_469/MatMul:product:0 lstm_cell_469/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_469/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_469_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_469/BiasAddBiasAddlstm_cell_469/add:z:0,lstm_cell_469/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_469/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_469/splitSplit&lstm_cell_469/split/split_dim:output:0lstm_cell_469/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_469/SigmoidSigmoidlstm_cell_469/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_1Sigmoidlstm_cell_469/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_469/mulMullstm_cell_469/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_469/ReluRelulstm_cell_469/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_1Mullstm_cell_469/Sigmoid:y:0 lstm_cell_469/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_469/add_1AddV2lstm_cell_469/mul:z:0lstm_cell_469/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_469/Sigmoid_2Sigmoidlstm_cell_469/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_469/Relu_1Relulstm_cell_469/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_469/mul_2Mullstm_cell_469/Sigmoid_2:y:0"lstm_cell_469/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_469_matmul_readvariableop_resource.lstm_cell_469_matmul_1_readvariableop_resource-lstm_cell_469_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2844906*
condR
while_cond_2844905*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_469/BiasAdd/ReadVariableOp$^lstm_cell_469/MatMul/ReadVariableOp&^lstm_cell_469/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_469/BiasAdd/ReadVariableOp$lstm_cell_469/BiasAdd/ReadVariableOp2J
#lstm_cell_469/MatMul/ReadVariableOp#lstm_cell_469/MatMul/ReadVariableOp2N
%lstm_cell_469/MatMul_1/ReadVariableOp%lstm_cell_469/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_36_input:
serving_default_lstm_36_input:0���������<
dense_120
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_12/kernel
:2dense_12/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2lstm_36/lstm_cell_36/kernel
8:6	d�2%lstm_36/lstm_cell_36/recurrent_kernel
(:&�2lstm_36/lstm_cell_36/bias
.:,	d�2lstm_37/lstm_cell_37/kernel
8:6	2�2%lstm_37/lstm_cell_37/recurrent_kernel
(:&�2lstm_37/lstm_cell_37/bias
-:+2(2lstm_38/lstm_cell_38/kernel
7:5
(2%lstm_38/lstm_cell_38/recurrent_kernel
':%(2lstm_38/lstm_cell_38/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
&:$
2Adam/dense_12/kernel/m
 :2Adam/dense_12/bias/m
3:1	�2"Adam/lstm_36/lstm_cell_36/kernel/m
=:;	d�2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
-:+�2 Adam/lstm_36/lstm_cell_36/bias/m
3:1	d�2"Adam/lstm_37/lstm_cell_37/kernel/m
=:;	2�2,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m
-:+�2 Adam/lstm_37/lstm_cell_37/bias/m
2:02(2"Adam/lstm_38/lstm_cell_38/kernel/m
<::
(2,Adam/lstm_38/lstm_cell_38/recurrent_kernel/m
,:*(2 Adam/lstm_38/lstm_cell_38/bias/m
&:$
2Adam/dense_12/kernel/v
 :2Adam/dense_12/bias/v
3:1	�2"Adam/lstm_36/lstm_cell_36/kernel/v
=:;	d�2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
-:+�2 Adam/lstm_36/lstm_cell_36/bias/v
3:1	d�2"Adam/lstm_37/lstm_cell_37/kernel/v
=:;	2�2,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v
-:+�2 Adam/lstm_37/lstm_cell_37/bias/v
2:02(2"Adam/lstm_38/lstm_cell_38/kernel/v
<::
(2,Adam/lstm_38/lstm_cell_38/recurrent_kernel/v
,:*(2 Adam/lstm_38/lstm_cell_38/bias/v
�2�
/__inference_sequential_12_layer_call_fn_2842568
/__inference_sequential_12_layer_call_fn_2843306
/__inference_sequential_12_layer_call_fn_2843333
/__inference_sequential_12_layer_call_fn_2843184�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843760
J__inference_sequential_12_layer_call_and_return_conditional_losses_2844187
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843214
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843244�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_2841019lstm_36_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_lstm_36_layer_call_fn_2844198
)__inference_lstm_36_layer_call_fn_2844209
)__inference_lstm_36_layer_call_fn_2844220
)__inference_lstm_36_layer_call_fn_2844231�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844374
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844517
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844660
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844803�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_37_layer_call_fn_2844814
)__inference_lstm_37_layer_call_fn_2844825
)__inference_lstm_37_layer_call_fn_2844836
)__inference_lstm_37_layer_call_fn_2844847�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2844990
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845133
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845276
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845419�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_38_layer_call_fn_2845430
)__inference_lstm_38_layer_call_fn_2845441
)__inference_lstm_38_layer_call_fn_2845452
)__inference_lstm_38_layer_call_fn_2845463�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845606
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845749
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845892
D__inference_lstm_38_layer_call_and_return_conditional_losses_2846035�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_12_layer_call_fn_2846044�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_12_layer_call_and_return_conditional_losses_2846054�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_2843279lstm_36_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_lstm_cell_468_layer_call_fn_2846071
/__inference_lstm_cell_468_layer_call_fn_2846088�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846120
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846152�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_469_layer_call_fn_2846169
/__inference_lstm_cell_469_layer_call_fn_2846186�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846218
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846250�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_470_layer_call_fn_2846267
/__inference_lstm_cell_470_layer_call_fn_2846284�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846316
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846348�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_2841019~-./012345!":�7
0�-
+�(
lstm_36_input���������
� "3�0
.
dense_12"�
dense_12����������
E__inference_dense_12_layer_call_and_return_conditional_losses_2846054\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_12_layer_call_fn_2846044O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844374�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������d
� �
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844517�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������d
� �
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844660q-./?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������d
� �
D__inference_lstm_36_layer_call_and_return_conditional_losses_2844803q-./?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������d
� �
)__inference_lstm_36_layer_call_fn_2844198}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������d�
)__inference_lstm_36_layer_call_fn_2844209}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������d�
)__inference_lstm_36_layer_call_fn_2844220d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_36_layer_call_fn_2844231d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_37_layer_call_and_return_conditional_losses_2844990�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "2�/
(�%
0������������������2
� �
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845133�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "2�/
(�%
0������������������2
� �
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845276q012?�<
5�2
$�!
inputs���������d

 
p 

 
� ")�&
�
0���������2
� �
D__inference_lstm_37_layer_call_and_return_conditional_losses_2845419q012?�<
5�2
$�!
inputs���������d

 
p

 
� ")�&
�
0���������2
� �
)__inference_lstm_37_layer_call_fn_2844814}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "%�"������������������2�
)__inference_lstm_37_layer_call_fn_2844825}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "%�"������������������2�
)__inference_lstm_37_layer_call_fn_2844836d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_37_layer_call_fn_2844847d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845606}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "%�"
�
0���������

� �
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845749}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "%�"
�
0���������

� �
D__inference_lstm_38_layer_call_and_return_conditional_losses_2845892m345?�<
5�2
$�!
inputs���������2

 
p 

 
� "%�"
�
0���������

� �
D__inference_lstm_38_layer_call_and_return_conditional_losses_2846035m345?�<
5�2
$�!
inputs���������2

 
p

 
� "%�"
�
0���������

� �
)__inference_lstm_38_layer_call_fn_2845430p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "����������
�
)__inference_lstm_38_layer_call_fn_2845441p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "����������
�
)__inference_lstm_38_layer_call_fn_2845452`345?�<
5�2
$�!
inputs���������2

 
p 

 
� "����������
�
)__inference_lstm_38_layer_call_fn_2845463`345?�<
5�2
$�!
inputs���������2

 
p

 
� "����������
�
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846120�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
J__inference_lstm_cell_468_layer_call_and_return_conditional_losses_2846152�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
/__inference_lstm_cell_468_layer_call_fn_2846071�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
/__inference_lstm_cell_468_layer_call_fn_2846088�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846218�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
J__inference_lstm_cell_469_layer_call_and_return_conditional_losses_2846250�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
/__inference_lstm_cell_469_layer_call_fn_2846169�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
/__inference_lstm_cell_469_layer_call_fn_2846186�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846316�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
J__inference_lstm_cell_470_layer_call_and_return_conditional_losses_2846348�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
/__inference_lstm_cell_470_layer_call_fn_2846267�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
/__inference_lstm_cell_470_layer_call_fn_2846284�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843214x-./012345!"B�?
8�5
+�(
lstm_36_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843244x-./012345!"B�?
8�5
+�(
lstm_36_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_2843760q-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_2844187q-./012345!";�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
/__inference_sequential_12_layer_call_fn_2842568k-./012345!"B�?
8�5
+�(
lstm_36_input���������
p 

 
� "�����������
/__inference_sequential_12_layer_call_fn_2843184k-./012345!"B�?
8�5
+�(
lstm_36_input���������
p

 
� "�����������
/__inference_sequential_12_layer_call_fn_2843306d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_12_layer_call_fn_2843333d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_2843279�-./012345!"K�H
� 
A�>
<
lstm_36_input+�(
lstm_36_input���������"3�0
.
dense_12"�
dense_12���������