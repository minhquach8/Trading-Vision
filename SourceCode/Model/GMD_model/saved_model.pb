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
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:
*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
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
lstm_81/lstm_cell_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_81/lstm_cell_81/kernel
�
/lstm_81/lstm_cell_81/kernel/Read/ReadVariableOpReadVariableOplstm_81/lstm_cell_81/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_81/lstm_cell_81/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*6
shared_name'%lstm_81/lstm_cell_81/recurrent_kernel
�
9lstm_81/lstm_cell_81/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_81/lstm_cell_81/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_81/lstm_cell_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_81/lstm_cell_81/bias
�
-lstm_81/lstm_cell_81/bias/Read/ReadVariableOpReadVariableOplstm_81/lstm_cell_81/bias*
_output_shapes	
:�*
dtype0
�
lstm_82/lstm_cell_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*,
shared_namelstm_82/lstm_cell_82/kernel
�
/lstm_82/lstm_cell_82/kernel/Read/ReadVariableOpReadVariableOplstm_82/lstm_cell_82/kernel*
_output_shapes
:	d�*
dtype0
�
%lstm_82/lstm_cell_82/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%lstm_82/lstm_cell_82/recurrent_kernel
�
9lstm_82/lstm_cell_82/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_82/lstm_cell_82/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_82/lstm_cell_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_82/lstm_cell_82/bias
�
-lstm_82/lstm_cell_82/bias/Read/ReadVariableOpReadVariableOplstm_82/lstm_cell_82/bias*
_output_shapes	
:�*
dtype0
�
lstm_83/lstm_cell_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_83/lstm_cell_83/kernel
�
/lstm_83/lstm_cell_83/kernel/Read/ReadVariableOpReadVariableOplstm_83/lstm_cell_83/kernel*
_output_shapes

:2(*
dtype0
�
%lstm_83/lstm_cell_83/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_83/lstm_cell_83/recurrent_kernel
�
9lstm_83/lstm_cell_83/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_83/lstm_cell_83/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_83/lstm_cell_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_83/lstm_cell_83/bias
�
-lstm_83/lstm_cell_83/bias/Read/ReadVariableOpReadVariableOplstm_83/lstm_cell_83/bias*
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
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_27/kernel/m
�
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_81/lstm_cell_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_81/lstm_cell_81/kernel/m
�
6Adam/lstm_81/lstm_cell_81/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_81/lstm_cell_81/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_81/lstm_cell_81/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_81/lstm_cell_81/recurrent_kernel/m
�
@Adam/lstm_81/lstm_cell_81/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_81/lstm_cell_81/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_81/lstm_cell_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_81/lstm_cell_81/bias/m
�
4Adam/lstm_81/lstm_cell_81/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_81/lstm_cell_81/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_82/lstm_cell_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_82/lstm_cell_82/kernel/m
�
6Adam/lstm_82/lstm_cell_82/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_82/lstm_cell_82/kernel/m*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_82/lstm_cell_82/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_82/lstm_cell_82/recurrent_kernel/m
�
@Adam/lstm_82/lstm_cell_82/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_82/lstm_cell_82/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_82/lstm_cell_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_82/lstm_cell_82/bias/m
�
4Adam/lstm_82/lstm_cell_82/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_82/lstm_cell_82/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_83/lstm_cell_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_83/lstm_cell_83/kernel/m
�
6Adam/lstm_83/lstm_cell_83/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_83/lstm_cell_83/kernel/m*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_83/lstm_cell_83/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_83/lstm_cell_83/recurrent_kernel/m
�
@Adam/lstm_83/lstm_cell_83/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_83/lstm_cell_83/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_83/lstm_cell_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_83/lstm_cell_83/bias/m
�
4Adam/lstm_83/lstm_cell_83/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_83/lstm_cell_83/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_27/kernel/v
�
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_81/lstm_cell_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_81/lstm_cell_81/kernel/v
�
6Adam/lstm_81/lstm_cell_81/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_81/lstm_cell_81/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_81/lstm_cell_81/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_81/lstm_cell_81/recurrent_kernel/v
�
@Adam/lstm_81/lstm_cell_81/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_81/lstm_cell_81/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_81/lstm_cell_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_81/lstm_cell_81/bias/v
�
4Adam/lstm_81/lstm_cell_81/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_81/lstm_cell_81/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_82/lstm_cell_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_82/lstm_cell_82/kernel/v
�
6Adam/lstm_82/lstm_cell_82/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_82/lstm_cell_82/kernel/v*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_82/lstm_cell_82/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_82/lstm_cell_82/recurrent_kernel/v
�
@Adam/lstm_82/lstm_cell_82/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_82/lstm_cell_82/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_82/lstm_cell_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_82/lstm_cell_82/bias/v
�
4Adam/lstm_82/lstm_cell_82/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_82/lstm_cell_82/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_83/lstm_cell_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_83/lstm_cell_83/kernel/v
�
6Adam/lstm_83/lstm_cell_83/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_83/lstm_cell_83/kernel/v*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_83/lstm_cell_83/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_83/lstm_cell_83/recurrent_kernel/v
�
@Adam/lstm_83/lstm_cell_83/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_83/lstm_cell_83/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_83/lstm_cell_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_83/lstm_cell_83/bias/v
�
4Adam/lstm_83/lstm_cell_83/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_83/lstm_cell_83/bias/v*
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
VARIABLE_VALUEdense_27/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_81/lstm_cell_81/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_81/lstm_cell_81/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_81/lstm_cell_81/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_82/lstm_cell_82/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_82/lstm_cell_82/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_82/lstm_cell_82/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_83/lstm_cell_83/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_83/lstm_cell_83/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_83/lstm_cell_83/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_27/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_81/lstm_cell_81/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_81/lstm_cell_81/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_81/lstm_cell_81/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_82/lstm_cell_82/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_82/lstm_cell_82/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_82/lstm_cell_82/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_83/lstm_cell_83/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_83/lstm_cell_83/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_83/lstm_cell_83/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_27/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_81/lstm_cell_81/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_81/lstm_cell_81/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_81/lstm_cell_81/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_82/lstm_cell_82/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_82/lstm_cell_82/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_82/lstm_cell_82/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_83/lstm_cell_83/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_83/lstm_cell_83/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_83/lstm_cell_83/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_81_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_81_inputlstm_81/lstm_cell_81/kernel%lstm_81/lstm_cell_81/recurrent_kernellstm_81/lstm_cell_81/biaslstm_82/lstm_cell_82/kernel%lstm_82/lstm_cell_82/recurrent_kernellstm_82/lstm_cell_82/biaslstm_83/lstm_cell_83/kernel%lstm_83/lstm_cell_83/recurrent_kernellstm_83/lstm_cell_83/biasdense_27/kerneldense_27/bias*
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
%__inference_signature_wrapper_1157395
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_81/lstm_cell_81/kernel/Read/ReadVariableOp9lstm_81/lstm_cell_81/recurrent_kernel/Read/ReadVariableOp-lstm_81/lstm_cell_81/bias/Read/ReadVariableOp/lstm_82/lstm_cell_82/kernel/Read/ReadVariableOp9lstm_82/lstm_cell_82/recurrent_kernel/Read/ReadVariableOp-lstm_82/lstm_cell_82/bias/Read/ReadVariableOp/lstm_83/lstm_cell_83/kernel/Read/ReadVariableOp9lstm_83/lstm_cell_83/recurrent_kernel/Read/ReadVariableOp-lstm_83/lstm_cell_83/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp6Adam/lstm_81/lstm_cell_81/kernel/m/Read/ReadVariableOp@Adam/lstm_81/lstm_cell_81/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_81/lstm_cell_81/bias/m/Read/ReadVariableOp6Adam/lstm_82/lstm_cell_82/kernel/m/Read/ReadVariableOp@Adam/lstm_82/lstm_cell_82/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_82/lstm_cell_82/bias/m/Read/ReadVariableOp6Adam/lstm_83/lstm_cell_83/kernel/m/Read/ReadVariableOp@Adam/lstm_83/lstm_cell_83/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_83/lstm_cell_83/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOp6Adam/lstm_81/lstm_cell_81/kernel/v/Read/ReadVariableOp@Adam/lstm_81/lstm_cell_81/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_81/lstm_cell_81/bias/v/Read/ReadVariableOp6Adam/lstm_82/lstm_cell_82/kernel/v/Read/ReadVariableOp@Adam/lstm_82/lstm_cell_82/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_82/lstm_cell_82/bias/v/Read/ReadVariableOp6Adam/lstm_83/lstm_cell_83/kernel/v/Read/ReadVariableOp@Adam/lstm_83/lstm_cell_83/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_83/lstm_cell_83/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1160607
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_27/kerneldense_27/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_81/lstm_cell_81/kernel%lstm_81/lstm_cell_81/recurrent_kernellstm_81/lstm_cell_81/biaslstm_82/lstm_cell_82/kernel%lstm_82/lstm_cell_82/recurrent_kernellstm_82/lstm_cell_82/biaslstm_83/lstm_cell_83/kernel%lstm_83/lstm_cell_83/recurrent_kernellstm_83/lstm_cell_83/biastotalcountAdam/dense_27/kernel/mAdam/dense_27/bias/m"Adam/lstm_81/lstm_cell_81/kernel/m,Adam/lstm_81/lstm_cell_81/recurrent_kernel/m Adam/lstm_81/lstm_cell_81/bias/m"Adam/lstm_82/lstm_cell_82/kernel/m,Adam/lstm_82/lstm_cell_82/recurrent_kernel/m Adam/lstm_82/lstm_cell_82/bias/m"Adam/lstm_83/lstm_cell_83/kernel/m,Adam/lstm_83/lstm_cell_83/recurrent_kernel/m Adam/lstm_83/lstm_cell_83/bias/mAdam/dense_27/kernel/vAdam/dense_27/bias/v"Adam/lstm_81/lstm_cell_81/kernel/v,Adam/lstm_81/lstm_cell_81/recurrent_kernel/v Adam/lstm_81/lstm_cell_81/bias/v"Adam/lstm_82/lstm_cell_82/kernel/v,Adam/lstm_82/lstm_cell_82/recurrent_kernel/v Adam/lstm_82/lstm_cell_82/bias/v"Adam/lstm_83/lstm_cell_83/kernel/v,Adam/lstm_83/lstm_cell_83/recurrent_kernel/v Adam/lstm_83/lstm_cell_83/bias/v*4
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
#__inference__traced_restore_1160737��+
�

�
lstm_81_while_cond_1157934,
(lstm_81_while_lstm_81_while_loop_counter2
.lstm_81_while_lstm_81_while_maximum_iterations
lstm_81_while_placeholder
lstm_81_while_placeholder_1
lstm_81_while_placeholder_2
lstm_81_while_placeholder_3.
*lstm_81_while_less_lstm_81_strided_slice_1E
Alstm_81_while_lstm_81_while_cond_1157934___redundant_placeholder0E
Alstm_81_while_lstm_81_while_cond_1157934___redundant_placeholder1E
Alstm_81_while_lstm_81_while_cond_1157934___redundant_placeholder2E
Alstm_81_while_lstm_81_while_cond_1157934___redundant_placeholder3
lstm_81_while_identity
�
lstm_81/while/LessLesslstm_81_while_placeholder*lstm_81_while_less_lstm_81_strided_slice_1*
T0*
_output_shapes
: [
lstm_81/while/IdentityIdentitylstm_81/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_81_while_identitylstm_81/while/Identity:output:0*(
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
�J
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158919

inputs?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1158835*
condR
while_cond_1158834*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_189_layer_call_fn_1160204

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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155348o
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
�

�
%__inference_signature_wrapper_1157395
lstm_81_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1155135o
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
_user_specified_namelstm_81_input
�
�
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160464

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
�K
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159249
inputs_0?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1159165*
condR
while_cond_1159164*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_1160067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
while_cond_1156765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156765___redundant_placeholder05
1while_while_cond_1156765___redundant_placeholder15
1while_while_cond_1156765___redundant_placeholder25
1while_while_cond_1156765___redundant_placeholder3
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
)__inference_lstm_83_layer_call_fn_1159557
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156176o
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
�K
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158490
inputs_0?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1158406*
condR
while_cond_1158405*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1159923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159923___redundant_placeholder05
1while_while_cond_1159923___redundant_placeholder15
1while_while_cond_1159923___redundant_placeholder25
1while_while_cond_1159923___redundant_placeholder3
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
)__inference_lstm_81_layer_call_fn_1158336

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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1156334s
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
�
�
while_cond_1156249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156249___redundant_placeholder05
1while_while_cond_1156249___redundant_placeholder15
1while_while_cond_1156249___redundant_placeholder25
1while_while_cond_1156249___redundant_placeholder3
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
�J
�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160151

inputs>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1160067*
condR
while_cond_1160066*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_81_layer_call_fn_1158347

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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1157180s
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
�
�
)__inference_lstm_82_layer_call_fn_1158963

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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1157015s
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
�
�
while_cond_1158691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1158691___redundant_placeholder05
1while_while_cond_1158691___redundant_placeholder15
1while_while_cond_1158691___redundant_placeholder25
1while_while_cond_1158691___redundant_placeholder3
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
�J
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1157015

inputs?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1156931*
condR
while_cond_1156930*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(sequential_27_lstm_81_while_cond_1154766H
Dsequential_27_lstm_81_while_sequential_27_lstm_81_while_loop_counterN
Jsequential_27_lstm_81_while_sequential_27_lstm_81_while_maximum_iterations+
'sequential_27_lstm_81_while_placeholder-
)sequential_27_lstm_81_while_placeholder_1-
)sequential_27_lstm_81_while_placeholder_2-
)sequential_27_lstm_81_while_placeholder_3J
Fsequential_27_lstm_81_while_less_sequential_27_lstm_81_strided_slice_1a
]sequential_27_lstm_81_while_sequential_27_lstm_81_while_cond_1154766___redundant_placeholder0a
]sequential_27_lstm_81_while_sequential_27_lstm_81_while_cond_1154766___redundant_placeholder1a
]sequential_27_lstm_81_while_sequential_27_lstm_81_while_cond_1154766___redundant_placeholder2a
]sequential_27_lstm_81_while_sequential_27_lstm_81_while_cond_1154766___redundant_placeholder3(
$sequential_27_lstm_81_while_identity
�
 sequential_27/lstm_81/while/LessLess'sequential_27_lstm_81_while_placeholderFsequential_27_lstm_81_while_less_sequential_27_lstm_81_strided_slice_1*
T0*
_output_shapes
: w
$sequential_27/lstm_81/while/IdentityIdentity$sequential_27/lstm_81/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_27_lstm_81_while_identity-sequential_27/lstm_81/while/Identity:output:0*(
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
�
(sequential_27_lstm_82_while_cond_1154905H
Dsequential_27_lstm_82_while_sequential_27_lstm_82_while_loop_counterN
Jsequential_27_lstm_82_while_sequential_27_lstm_82_while_maximum_iterations+
'sequential_27_lstm_82_while_placeholder-
)sequential_27_lstm_82_while_placeholder_1-
)sequential_27_lstm_82_while_placeholder_2-
)sequential_27_lstm_82_while_placeholder_3J
Fsequential_27_lstm_82_while_less_sequential_27_lstm_82_strided_slice_1a
]sequential_27_lstm_82_while_sequential_27_lstm_82_while_cond_1154905___redundant_placeholder0a
]sequential_27_lstm_82_while_sequential_27_lstm_82_while_cond_1154905___redundant_placeholder1a
]sequential_27_lstm_82_while_sequential_27_lstm_82_while_cond_1154905___redundant_placeholder2a
]sequential_27_lstm_82_while_sequential_27_lstm_82_while_cond_1154905___redundant_placeholder3(
$sequential_27_lstm_82_while_identity
�
 sequential_27/lstm_82/while/LessLess'sequential_27_lstm_82_while_placeholderFsequential_27_lstm_82_while_less_sequential_27_lstm_82_strided_slice_1*
T0*
_output_shapes
: w
$sequential_27/lstm_82/while/IdentityIdentity$sequential_27/lstm_82/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_27_lstm_82_while_identity-sequential_27/lstm_82/while/Identity:output:0*(
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
�#
�
while_body_1155757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_190_1155781_0:	d�0
while_lstm_cell_190_1155783_0:	2�,
while_lstm_cell_190_1155785_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_190_1155781:	d�.
while_lstm_cell_190_1155783:	2�*
while_lstm_cell_190_1155785:	���+while/lstm_cell_190/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_190/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_190_1155781_0while_lstm_cell_190_1155783_0while_lstm_cell_190_1155785_0*
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155698�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_190/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_190/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_190/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_190/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_190_1155781while_lstm_cell_190_1155781_0"<
while_lstm_cell_190_1155783while_lstm_cell_190_1155783_0"<
while_lstm_cell_190_1155785while_lstm_cell_190_1155785_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_190/StatefulPartitionedCall+while/lstm_cell_190/StatefulPartitionedCall: 
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

�
lstm_81_while_cond_1157507,
(lstm_81_while_lstm_81_while_loop_counter2
.lstm_81_while_lstm_81_while_maximum_iterations
lstm_81_while_placeholder
lstm_81_while_placeholder_1
lstm_81_while_placeholder_2
lstm_81_while_placeholder_3.
*lstm_81_while_less_lstm_81_strided_slice_1E
Alstm_81_while_lstm_81_while_cond_1157507___redundant_placeholder0E
Alstm_81_while_lstm_81_while_cond_1157507___redundant_placeholder1E
Alstm_81_while_lstm_81_while_cond_1157507___redundant_placeholder2E
Alstm_81_while_lstm_81_while_cond_1157507___redundant_placeholder3
lstm_81_while_identity
�
lstm_81/while/LessLesslstm_81_while_placeholder*lstm_81_while_less_lstm_81_strided_slice_1*
T0*
_output_shapes
: [
lstm_81/while/IdentityIdentitylstm_81/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_81_while_identitylstm_81/while/Identity:output:0*(
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
/__inference_lstm_cell_189_layer_call_fn_1160187

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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155202o
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
�
�
while_cond_1156930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156930___redundant_placeholder05
1while_while_cond_1156930___redundant_placeholder15
1while_while_cond_1156930___redundant_placeholder25
1while_while_cond_1156930___redundant_placeholder3
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
while_body_1156931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
�8
�
while_body_1156766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
while_cond_1159021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159021___redundant_placeholder05
1while_while_cond_1159021___redundant_placeholder15
1while_while_cond_1159021___redundant_placeholder25
1while_while_cond_1159021___redundant_placeholder3
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
�
while_cond_1159780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159780___redundant_placeholder05
1while_while_cond_1159780___redundant_placeholder15
1while_while_cond_1159780___redundant_placeholder25
1while_while_cond_1159780___redundant_placeholder3
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157876

inputsG
4lstm_81_lstm_cell_189_matmul_readvariableop_resource:	�I
6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource:	d�D
5lstm_81_lstm_cell_189_biasadd_readvariableop_resource:	�G
4lstm_82_lstm_cell_190_matmul_readvariableop_resource:	d�I
6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource:	2�D
5lstm_82_lstm_cell_190_biasadd_readvariableop_resource:	�F
4lstm_83_lstm_cell_191_matmul_readvariableop_resource:2(H
6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource:
(C
5lstm_83_lstm_cell_191_biasadd_readvariableop_resource:(9
'dense_27_matmul_readvariableop_resource:
6
(dense_27_biasadd_readvariableop_resource:
identity��dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp�+lstm_81/lstm_cell_189/MatMul/ReadVariableOp�-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp�lstm_81/while�,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp�+lstm_82/lstm_cell_190/MatMul/ReadVariableOp�-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp�lstm_82/while�,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp�+lstm_83/lstm_cell_191/MatMul/ReadVariableOp�-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp�lstm_83/whileC
lstm_81/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_sliceStridedSlicelstm_81/Shape:output:0$lstm_81/strided_slice/stack:output:0&lstm_81/strided_slice/stack_1:output:0&lstm_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_81/zeros/packedPacklstm_81/strided_slice:output:0lstm_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_81/zerosFilllstm_81/zeros/packed:output:0lstm_81/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_81/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_81/zeros_1/packedPacklstm_81/strided_slice:output:0!lstm_81/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_81/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_81/zeros_1Filllstm_81/zeros_1/packed:output:0lstm_81/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_81/transpose	Transposeinputslstm_81/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_81/Shape_1Shapelstm_81/transpose:y:0*
T0*
_output_shapes
:g
lstm_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_1StridedSlicelstm_81/Shape_1:output:0&lstm_81/strided_slice_1/stack:output:0(lstm_81/strided_slice_1/stack_1:output:0(lstm_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_81/TensorArrayV2TensorListReserve,lstm_81/TensorArrayV2/element_shape:output:0 lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_81/transpose:y:0Flstm_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_2StridedSlicelstm_81/transpose:y:0&lstm_81/strided_slice_2/stack:output:0(lstm_81/strided_slice_2/stack_1:output:0(lstm_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_81/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4lstm_81_lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_81/lstm_cell_189/MatMulMatMul lstm_81/strided_slice_2:output:03lstm_81/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_81/lstm_cell_189/MatMul_1MatMullstm_81/zeros:output:05lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_81/lstm_cell_189/addAddV2&lstm_81/lstm_cell_189/MatMul:product:0(lstm_81/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_81/lstm_cell_189/BiasAddBiasAddlstm_81/lstm_cell_189/add:z:04lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_81/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_81/lstm_cell_189/splitSplit.lstm_81/lstm_cell_189/split/split_dim:output:0&lstm_81/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_81/lstm_cell_189/SigmoidSigmoid$lstm_81/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/Sigmoid_1Sigmoid$lstm_81/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mulMul#lstm_81/lstm_cell_189/Sigmoid_1:y:0lstm_81/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_81/lstm_cell_189/ReluRelu$lstm_81/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mul_1Mul!lstm_81/lstm_cell_189/Sigmoid:y:0(lstm_81/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/add_1AddV2lstm_81/lstm_cell_189/mul:z:0lstm_81/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/Sigmoid_2Sigmoid$lstm_81/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_81/lstm_cell_189/Relu_1Relulstm_81/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mul_2Mul#lstm_81/lstm_cell_189/Sigmoid_2:y:0*lstm_81/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_81/TensorArrayV2_1TensorListReserve.lstm_81/TensorArrayV2_1/element_shape:output:0 lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_81/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_81/whileWhile#lstm_81/while/loop_counter:output:0)lstm_81/while/maximum_iterations:output:0lstm_81/time:output:0 lstm_81/TensorArrayV2_1:handle:0lstm_81/zeros:output:0lstm_81/zeros_1:output:0 lstm_81/strided_slice_1:output:0?lstm_81/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_81_lstm_cell_189_matmul_readvariableop_resource6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource5lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
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
lstm_81_while_body_1157508*&
condR
lstm_81_while_cond_1157507*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_81/TensorArrayV2Stack/TensorListStackTensorListStacklstm_81/while:output:3Alstm_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_3StridedSlice3lstm_81/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_81/strided_slice_3/stack:output:0(lstm_81/strided_slice_3/stack_1:output:0(lstm_81/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_81/transpose_1	Transpose3lstm_81/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_81/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_82/ShapeShapelstm_81/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_sliceStridedSlicelstm_82/Shape:output:0$lstm_82/strided_slice/stack:output:0&lstm_82/strided_slice/stack_1:output:0&lstm_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_82/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_82/zeros/packedPacklstm_82/strided_slice:output:0lstm_82/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_82/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_82/zerosFilllstm_82/zeros/packed:output:0lstm_82/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_82/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_82/zeros_1/packedPacklstm_82/strided_slice:output:0!lstm_82/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_82/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_82/zeros_1Filllstm_82/zeros_1/packed:output:0lstm_82/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_82/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_82/transpose	Transposelstm_81/transpose_1:y:0lstm_82/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_82/Shape_1Shapelstm_82/transpose:y:0*
T0*
_output_shapes
:g
lstm_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_1StridedSlicelstm_82/Shape_1:output:0&lstm_82/strided_slice_1/stack:output:0(lstm_82/strided_slice_1/stack_1:output:0(lstm_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_82/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_82/TensorArrayV2TensorListReserve,lstm_82/TensorArrayV2/element_shape:output:0 lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_82/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_82/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_82/transpose:y:0Flstm_82/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_82/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_82/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_2StridedSlicelstm_82/transpose:y:0&lstm_82/strided_slice_2/stack:output:0(lstm_82/strided_slice_2/stack_1:output:0(lstm_82/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_82/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4lstm_82_lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_82/lstm_cell_190/MatMulMatMul lstm_82/strided_slice_2:output:03lstm_82/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_82/lstm_cell_190/MatMul_1MatMullstm_82/zeros:output:05lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_82/lstm_cell_190/addAddV2&lstm_82/lstm_cell_190/MatMul:product:0(lstm_82/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_82/lstm_cell_190/BiasAddBiasAddlstm_82/lstm_cell_190/add:z:04lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_82/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_82/lstm_cell_190/splitSplit.lstm_82/lstm_cell_190/split/split_dim:output:0&lstm_82/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_82/lstm_cell_190/SigmoidSigmoid$lstm_82/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/Sigmoid_1Sigmoid$lstm_82/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mulMul#lstm_82/lstm_cell_190/Sigmoid_1:y:0lstm_82/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_82/lstm_cell_190/ReluRelu$lstm_82/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mul_1Mul!lstm_82/lstm_cell_190/Sigmoid:y:0(lstm_82/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/add_1AddV2lstm_82/lstm_cell_190/mul:z:0lstm_82/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/Sigmoid_2Sigmoid$lstm_82/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_82/lstm_cell_190/Relu_1Relulstm_82/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mul_2Mul#lstm_82/lstm_cell_190/Sigmoid_2:y:0*lstm_82/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_82/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_82/TensorArrayV2_1TensorListReserve.lstm_82/TensorArrayV2_1/element_shape:output:0 lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_82/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_82/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_82/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_82/whileWhile#lstm_82/while/loop_counter:output:0)lstm_82/while/maximum_iterations:output:0lstm_82/time:output:0 lstm_82/TensorArrayV2_1:handle:0lstm_82/zeros:output:0lstm_82/zeros_1:output:0 lstm_82/strided_slice_1:output:0?lstm_82/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_82_lstm_cell_190_matmul_readvariableop_resource6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource5lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
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
lstm_82_while_body_1157647*&
condR
lstm_82_while_cond_1157646*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_82/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_82/TensorArrayV2Stack/TensorListStackTensorListStacklstm_82/while:output:3Alstm_82/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_82/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_82/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_3StridedSlice3lstm_82/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_82/strided_slice_3/stack:output:0(lstm_82/strided_slice_3/stack_1:output:0(lstm_82/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_82/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_82/transpose_1	Transpose3lstm_82/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_82/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_82/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_83/ShapeShapelstm_82/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_sliceStridedSlicelstm_83/Shape:output:0$lstm_83/strided_slice/stack:output:0&lstm_83/strided_slice/stack_1:output:0&lstm_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_83/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_83/zeros/packedPacklstm_83/strided_slice:output:0lstm_83/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_83/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_83/zerosFilllstm_83/zeros/packed:output:0lstm_83/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_83/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_83/zeros_1/packedPacklstm_83/strided_slice:output:0!lstm_83/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_83/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_83/zeros_1Filllstm_83/zeros_1/packed:output:0lstm_83/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_83/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_83/transpose	Transposelstm_82/transpose_1:y:0lstm_83/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_83/Shape_1Shapelstm_83/transpose:y:0*
T0*
_output_shapes
:g
lstm_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_1StridedSlicelstm_83/Shape_1:output:0&lstm_83/strided_slice_1/stack:output:0(lstm_83/strided_slice_1/stack_1:output:0(lstm_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_83/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_83/TensorArrayV2TensorListReserve,lstm_83/TensorArrayV2/element_shape:output:0 lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_83/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_83/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_83/transpose:y:0Flstm_83/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_2StridedSlicelstm_83/transpose:y:0&lstm_83/strided_slice_2/stack:output:0(lstm_83/strided_slice_2/stack_1:output:0(lstm_83/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_83/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4lstm_83_lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_83/lstm_cell_191/MatMulMatMul lstm_83/strided_slice_2:output:03lstm_83/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_83/lstm_cell_191/MatMul_1MatMullstm_83/zeros:output:05lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_83/lstm_cell_191/addAddV2&lstm_83/lstm_cell_191/MatMul:product:0(lstm_83/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_83/lstm_cell_191/BiasAddBiasAddlstm_83/lstm_cell_191/add:z:04lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_83/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_83/lstm_cell_191/splitSplit.lstm_83/lstm_cell_191/split/split_dim:output:0&lstm_83/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_83/lstm_cell_191/SigmoidSigmoid$lstm_83/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/Sigmoid_1Sigmoid$lstm_83/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mulMul#lstm_83/lstm_cell_191/Sigmoid_1:y:0lstm_83/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_83/lstm_cell_191/ReluRelu$lstm_83/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mul_1Mul!lstm_83/lstm_cell_191/Sigmoid:y:0(lstm_83/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/add_1AddV2lstm_83/lstm_cell_191/mul:z:0lstm_83/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/Sigmoid_2Sigmoid$lstm_83/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_83/lstm_cell_191/Relu_1Relulstm_83/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mul_2Mul#lstm_83/lstm_cell_191/Sigmoid_2:y:0*lstm_83/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_83/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_83/TensorArrayV2_1TensorListReserve.lstm_83/TensorArrayV2_1/element_shape:output:0 lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_83/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_83/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_83/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_83/whileWhile#lstm_83/while/loop_counter:output:0)lstm_83/while/maximum_iterations:output:0lstm_83/time:output:0 lstm_83/TensorArrayV2_1:handle:0lstm_83/zeros:output:0lstm_83/zeros_1:output:0 lstm_83/strided_slice_1:output:0?lstm_83/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_83_lstm_cell_191_matmul_readvariableop_resource6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource5lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
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
lstm_83_while_body_1157786*&
condR
lstm_83_while_cond_1157785*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_83/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_83/TensorArrayV2Stack/TensorListStackTensorListStacklstm_83/while:output:3Alstm_83/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_3StridedSlice3lstm_83/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_83/strided_slice_3/stack:output:0(lstm_83/strided_slice_3/stack_1:output:0(lstm_83/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_83/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_83/transpose_1	Transpose3lstm_83/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_83/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_83/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_27/MatMulMatMul lstm_83/strided_slice_3:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp-^lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp,^lstm_81/lstm_cell_189/MatMul/ReadVariableOp.^lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp^lstm_81/while-^lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp,^lstm_82/lstm_cell_190/MatMul/ReadVariableOp.^lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp^lstm_82/while-^lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp,^lstm_83/lstm_cell_191/MatMul/ReadVariableOp.^lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp^lstm_83/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2\
,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp2Z
+lstm_81/lstm_cell_189/MatMul/ReadVariableOp+lstm_81/lstm_cell_189/MatMul/ReadVariableOp2^
-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp2
lstm_81/whilelstm_81/while2\
,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp2Z
+lstm_82/lstm_cell_190/MatMul/ReadVariableOp+lstm_82/lstm_cell_190/MatMul/ReadVariableOp2^
-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp2
lstm_82/whilelstm_82/while2\
,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp2Z
+lstm_83/lstm_cell_191/MatMul/ReadVariableOp+lstm_83/lstm_cell_191/MatMul/ReadVariableOp2^
-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp2
lstm_83/whilelstm_83/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_83_layer_call_fn_1159568

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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156634o
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
�
)__inference_lstm_82_layer_call_fn_1158930
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1155635|
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
��
�
#__inference__traced_restore_1160737
file_prefix2
 assignvariableop_dense_27_kernel:
.
 assignvariableop_1_dense_27_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_81_lstm_cell_81_kernel:	�K
8assignvariableop_8_lstm_81_lstm_cell_81_recurrent_kernel:	d�;
,assignvariableop_9_lstm_81_lstm_cell_81_bias:	�B
/assignvariableop_10_lstm_82_lstm_cell_82_kernel:	d�L
9assignvariableop_11_lstm_82_lstm_cell_82_recurrent_kernel:	2�<
-assignvariableop_12_lstm_82_lstm_cell_82_bias:	�A
/assignvariableop_13_lstm_83_lstm_cell_83_kernel:2(K
9assignvariableop_14_lstm_83_lstm_cell_83_recurrent_kernel:
(;
-assignvariableop_15_lstm_83_lstm_cell_83_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_27_kernel_m:
6
(assignvariableop_19_adam_dense_27_bias_m:I
6assignvariableop_20_adam_lstm_81_lstm_cell_81_kernel_m:	�S
@assignvariableop_21_adam_lstm_81_lstm_cell_81_recurrent_kernel_m:	d�C
4assignvariableop_22_adam_lstm_81_lstm_cell_81_bias_m:	�I
6assignvariableop_23_adam_lstm_82_lstm_cell_82_kernel_m:	d�S
@assignvariableop_24_adam_lstm_82_lstm_cell_82_recurrent_kernel_m:	2�C
4assignvariableop_25_adam_lstm_82_lstm_cell_82_bias_m:	�H
6assignvariableop_26_adam_lstm_83_lstm_cell_83_kernel_m:2(R
@assignvariableop_27_adam_lstm_83_lstm_cell_83_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_83_lstm_cell_83_bias_m:(<
*assignvariableop_29_adam_dense_27_kernel_v:
6
(assignvariableop_30_adam_dense_27_bias_v:I
6assignvariableop_31_adam_lstm_81_lstm_cell_81_kernel_v:	�S
@assignvariableop_32_adam_lstm_81_lstm_cell_81_recurrent_kernel_v:	d�C
4assignvariableop_33_adam_lstm_81_lstm_cell_81_bias_v:	�I
6assignvariableop_34_adam_lstm_82_lstm_cell_82_kernel_v:	d�S
@assignvariableop_35_adam_lstm_82_lstm_cell_82_recurrent_kernel_v:	2�C
4assignvariableop_36_adam_lstm_82_lstm_cell_82_bias_v:	�H
6assignvariableop_37_adam_lstm_83_lstm_cell_83_kernel_v:2(R
@assignvariableop_38_adam_lstm_83_lstm_cell_83_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_83_lstm_cell_83_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_27_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_27_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_81_lstm_cell_81_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_81_lstm_cell_81_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_81_lstm_cell_81_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_82_lstm_cell_82_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_82_lstm_cell_82_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_82_lstm_cell_82_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_83_lstm_cell_83_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_83_lstm_cell_83_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_83_lstm_cell_83_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_27_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_27_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_81_lstm_cell_81_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_81_lstm_cell_81_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_81_lstm_cell_81_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_82_lstm_cell_82_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_82_lstm_cell_82_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_82_lstm_cell_82_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_83_lstm_cell_83_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_83_lstm_cell_83_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_83_lstm_cell_83_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_27_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_27_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_81_lstm_cell_81_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_81_lstm_cell_81_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_81_lstm_cell_81_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_82_lstm_cell_82_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_82_lstm_cell_82_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_82_lstm_cell_82_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_83_lstm_cell_83_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_83_lstm_cell_83_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_83_lstm_cell_83_bias_vIdentity_39:output:0"/device:CPU:0*
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
�
�
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155552

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
while_body_1159781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_82_layer_call_fn_1158941
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1155826|
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
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1155826

inputs(
lstm_cell_190_1155744:	d�(
lstm_cell_190_1155746:	2�$
lstm_cell_190_1155748:	�
identity��%lstm_cell_190/StatefulPartitionedCall�while;
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
%lstm_cell_190/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_190_1155744lstm_cell_190_1155746lstm_cell_190_1155748*
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155698n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_190_1155744lstm_cell_190_1155746lstm_cell_190_1155748*
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
while_body_1155757*
condR
while_cond_1155756*K
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
NoOpNoOp&^lstm_cell_190/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_190/StatefulPartitionedCall%lstm_cell_190/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1156334

inputs?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1156250*
condR
while_cond_1156249*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_1159924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
while_body_1155566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_190_1155590_0:	d�0
while_lstm_cell_190_1155592_0:	2�,
while_lstm_cell_190_1155594_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_190_1155590:	d�.
while_lstm_cell_190_1155592:	2�*
while_lstm_cell_190_1155594:	���+while/lstm_cell_190/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_190/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_190_1155590_0while_lstm_cell_190_1155592_0while_lstm_cell_190_1155594_0*
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155552�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_190/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_190/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_190/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_190/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_190_1155590while_lstm_cell_190_1155590_0"<
while_lstm_cell_190_1155592while_lstm_cell_190_1155592_0"<
while_lstm_cell_190_1155594while_lstm_cell_190_1155594_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_190/StatefulPartitionedCall+while/lstm_cell_190/StatefulPartitionedCall: 
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159106
inputs_0?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1159022*
condR
while_cond_1159021*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
/__inference_lstm_cell_191_layer_call_fn_1160383

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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1155902o
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
�
�
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155698

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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156176

inputs'
lstm_cell_191_1156094:2('
lstm_cell_191_1156096:
(#
lstm_cell_191_1156098:(
identity��%lstm_cell_191/StatefulPartitionedCall�while;
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
%lstm_cell_191/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_191_1156094lstm_cell_191_1156096lstm_cell_191_1156098*
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1156048n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_191_1156094lstm_cell_191_1156096lstm_cell_191_1156098*
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
while_body_1156107*
condR
while_cond_1156106*K
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
NoOpNoOp&^lstm_cell_191/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_191/StatefulPartitionedCall%lstm_cell_191/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�8
�
while_body_1158549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1155985

inputs'
lstm_cell_191_1155903:2('
lstm_cell_191_1155905:
(#
lstm_cell_191_1155907:(
identity��%lstm_cell_191/StatefulPartitionedCall�while;
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
%lstm_cell_191/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_191_1155903lstm_cell_191_1155905lstm_cell_191_1155907*
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1155902n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_191_1155903lstm_cell_191_1155905lstm_cell_191_1155907*
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
while_body_1155916*
condR
while_cond_1155915*K
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
NoOpNoOp&^lstm_cell_191/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_191/StatefulPartitionedCall%lstm_cell_191/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�B
�

lstm_81_while_body_1157935,
(lstm_81_while_lstm_81_while_loop_counter2
.lstm_81_while_lstm_81_while_maximum_iterations
lstm_81_while_placeholder
lstm_81_while_placeholder_1
lstm_81_while_placeholder_2
lstm_81_while_placeholder_3+
'lstm_81_while_lstm_81_strided_slice_1_0g
clstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0:	�Q
>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�L
=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
lstm_81_while_identity
lstm_81_while_identity_1
lstm_81_while_identity_2
lstm_81_while_identity_3
lstm_81_while_identity_4
lstm_81_while_identity_5)
%lstm_81_while_lstm_81_strided_slice_1e
alstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensorM
:lstm_81_while_lstm_cell_189_matmul_readvariableop_resource:	�O
<lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource:	d�J
;lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource:	���2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp�1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp�3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp�
?lstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0lstm_81_while_placeholderHlstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_81/while/lstm_cell_189/MatMulMatMul8lstm_81/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_81/while/lstm_cell_189/MatMul_1MatMullstm_81_while_placeholder_2;lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_81/while/lstm_cell_189/addAddV2,lstm_81/while/lstm_cell_189/MatMul:product:0.lstm_81/while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_81/while/lstm_cell_189/BiasAddBiasAdd#lstm_81/while/lstm_cell_189/add:z:0:lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_81/while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_81/while/lstm_cell_189/splitSplit4lstm_81/while/lstm_cell_189/split/split_dim:output:0,lstm_81/while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_81/while/lstm_cell_189/SigmoidSigmoid*lstm_81/while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_81/while/lstm_cell_189/Sigmoid_1Sigmoid*lstm_81/while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_81/while/lstm_cell_189/mulMul)lstm_81/while/lstm_cell_189/Sigmoid_1:y:0lstm_81_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_81/while/lstm_cell_189/ReluRelu*lstm_81/while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/mul_1Mul'lstm_81/while/lstm_cell_189/Sigmoid:y:0.lstm_81/while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/add_1AddV2#lstm_81/while/lstm_cell_189/mul:z:0%lstm_81/while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_81/while/lstm_cell_189/Sigmoid_2Sigmoid*lstm_81/while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_81/while/lstm_cell_189/Relu_1Relu%lstm_81/while/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/mul_2Mul)lstm_81/while/lstm_cell_189/Sigmoid_2:y:00lstm_81/while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_81_while_placeholder_1lstm_81_while_placeholder%lstm_81/while/lstm_cell_189/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_81/while/addAddV2lstm_81_while_placeholderlstm_81/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_81/while/add_1AddV2(lstm_81_while_lstm_81_while_loop_counterlstm_81/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_81/while/IdentityIdentitylstm_81/while/add_1:z:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_1Identity.lstm_81_while_lstm_81_while_maximum_iterations^lstm_81/while/NoOp*
T0*
_output_shapes
: q
lstm_81/while/Identity_2Identitylstm_81/while/add:z:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_3IdentityBlstm_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_4Identity%lstm_81/while/lstm_cell_189/mul_2:z:0^lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_81/while/Identity_5Identity%lstm_81/while/lstm_cell_189/add_1:z:0^lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_81/while/NoOpNoOp3^lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2^lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp4^lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_81_while_identitylstm_81/while/Identity:output:0"=
lstm_81_while_identity_1!lstm_81/while/Identity_1:output:0"=
lstm_81_while_identity_2!lstm_81/while/Identity_2:output:0"=
lstm_81_while_identity_3!lstm_81/while/Identity_3:output:0"=
lstm_81_while_identity_4!lstm_81/while/Identity_4:output:0"=
lstm_81_while_identity_5!lstm_81/while/Identity_5:output:0"P
%lstm_81_while_lstm_81_strided_slice_1'lstm_81_while_lstm_81_strided_slice_1_0"|
;lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0"~
<lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0"z
:lstm_81_while_lstm_cell_189_matmul_readvariableop_resource<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0"�
alstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensorclstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2f
1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp2j
3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
�
�
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160268

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
�
�
while_cond_1155915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1155915___redundant_placeholder05
1while_while_cond_1155915___redundant_placeholder15
1while_while_cond_1155915___redundant_placeholder25
1while_while_cond_1155915___redundant_placeholder3
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
�
�
J__inference_sequential_27_layer_call_and_return_conditional_losses_1156659

inputs"
lstm_81_1156335:	�"
lstm_81_1156337:	d�
lstm_81_1156339:	�"
lstm_82_1156485:	d�"
lstm_82_1156487:	2�
lstm_82_1156489:	�!
lstm_83_1156635:2(!
lstm_83_1156637:
(
lstm_83_1156639:("
dense_27_1156653:

dense_27_1156655:
identity�� dense_27/StatefulPartitionedCall�lstm_81/StatefulPartitionedCall�lstm_82/StatefulPartitionedCall�lstm_83/StatefulPartitionedCall�
lstm_81/StatefulPartitionedCallStatefulPartitionedCallinputslstm_81_1156335lstm_81_1156337lstm_81_1156339*
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1156334�
lstm_82/StatefulPartitionedCallStatefulPartitionedCall(lstm_81/StatefulPartitionedCall:output:0lstm_82_1156485lstm_82_1156487lstm_82_1156489*
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1156484�
lstm_83/StatefulPartitionedCallStatefulPartitionedCall(lstm_82/StatefulPartitionedCall:output:0lstm_83_1156635lstm_83_1156637lstm_83_1156639*
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156634�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_83/StatefulPartitionedCall:output:0dense_27_1156653dense_27_1156655*
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_27/StatefulPartitionedCall ^lstm_81/StatefulPartitionedCall ^lstm_82/StatefulPartitionedCall ^lstm_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2B
lstm_81/StatefulPartitionedCalllstm_81/StatefulPartitionedCall2B
lstm_82/StatefulPartitionedCalllstm_82/StatefulPartitionedCall2B
lstm_83/StatefulPartitionedCalllstm_83/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1156484

inputs?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1156400*
condR
while_cond_1156399*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�B
�

lstm_81_while_body_1157508,
(lstm_81_while_lstm_81_while_loop_counter2
.lstm_81_while_lstm_81_while_maximum_iterations
lstm_81_while_placeholder
lstm_81_while_placeholder_1
lstm_81_while_placeholder_2
lstm_81_while_placeholder_3+
'lstm_81_while_lstm_81_strided_slice_1_0g
clstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0:	�Q
>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�L
=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
lstm_81_while_identity
lstm_81_while_identity_1
lstm_81_while_identity_2
lstm_81_while_identity_3
lstm_81_while_identity_4
lstm_81_while_identity_5)
%lstm_81_while_lstm_81_strided_slice_1e
alstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensorM
:lstm_81_while_lstm_cell_189_matmul_readvariableop_resource:	�O
<lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource:	d�J
;lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource:	���2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp�1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp�3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp�
?lstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0lstm_81_while_placeholderHlstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_81/while/lstm_cell_189/MatMulMatMul8lstm_81/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_81/while/lstm_cell_189/MatMul_1MatMullstm_81_while_placeholder_2;lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_81/while/lstm_cell_189/addAddV2,lstm_81/while/lstm_cell_189/MatMul:product:0.lstm_81/while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_81/while/lstm_cell_189/BiasAddBiasAdd#lstm_81/while/lstm_cell_189/add:z:0:lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_81/while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_81/while/lstm_cell_189/splitSplit4lstm_81/while/lstm_cell_189/split/split_dim:output:0,lstm_81/while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_81/while/lstm_cell_189/SigmoidSigmoid*lstm_81/while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_81/while/lstm_cell_189/Sigmoid_1Sigmoid*lstm_81/while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_81/while/lstm_cell_189/mulMul)lstm_81/while/lstm_cell_189/Sigmoid_1:y:0lstm_81_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_81/while/lstm_cell_189/ReluRelu*lstm_81/while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/mul_1Mul'lstm_81/while/lstm_cell_189/Sigmoid:y:0.lstm_81/while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/add_1AddV2#lstm_81/while/lstm_cell_189/mul:z:0%lstm_81/while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_81/while/lstm_cell_189/Sigmoid_2Sigmoid*lstm_81/while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_81/while/lstm_cell_189/Relu_1Relu%lstm_81/while/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_81/while/lstm_cell_189/mul_2Mul)lstm_81/while/lstm_cell_189/Sigmoid_2:y:00lstm_81/while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_81_while_placeholder_1lstm_81_while_placeholder%lstm_81/while/lstm_cell_189/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_81/while/addAddV2lstm_81_while_placeholderlstm_81/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_81/while/add_1AddV2(lstm_81_while_lstm_81_while_loop_counterlstm_81/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_81/while/IdentityIdentitylstm_81/while/add_1:z:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_1Identity.lstm_81_while_lstm_81_while_maximum_iterations^lstm_81/while/NoOp*
T0*
_output_shapes
: q
lstm_81/while/Identity_2Identitylstm_81/while/add:z:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_3IdentityBlstm_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_81/while/NoOp*
T0*
_output_shapes
: �
lstm_81/while/Identity_4Identity%lstm_81/while/lstm_cell_189/mul_2:z:0^lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_81/while/Identity_5Identity%lstm_81/while/lstm_cell_189/add_1:z:0^lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_81/while/NoOpNoOp3^lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2^lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp4^lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_81_while_identitylstm_81/while/Identity:output:0"=
lstm_81_while_identity_1!lstm_81/while/Identity_1:output:0"=
lstm_81_while_identity_2!lstm_81/while/Identity_2:output:0"=
lstm_81_while_identity_3!lstm_81/while/Identity_3:output:0"=
lstm_81_while_identity_4!lstm_81/while/Identity_4:output:0"=
lstm_81_while_identity_5!lstm_81/while/Identity_5:output:0"P
%lstm_81_while_lstm_81_strided_slice_1'lstm_81_while_lstm_81_strided_slice_1_0"|
;lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource=lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0"~
<lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource>lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0"z
:lstm_81_while_lstm_cell_189_matmul_readvariableop_resource<lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0"�
alstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensorclstm_81_while_tensorarrayv2read_tensorlistgetitem_lstm_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2f
1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp1lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp2j
3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp3lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_81_layer_call_fn_1158314
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1155285|
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
�
�
)__inference_lstm_83_layer_call_fn_1159546
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1155985o
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
�
�
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157360
lstm_81_input"
lstm_81_1157333:	�"
lstm_81_1157335:	d�
lstm_81_1157337:	�"
lstm_82_1157340:	d�"
lstm_82_1157342:	2�
lstm_82_1157344:	�!
lstm_83_1157347:2(!
lstm_83_1157349:
(
lstm_83_1157351:("
dense_27_1157354:

dense_27_1157356:
identity�� dense_27/StatefulPartitionedCall�lstm_81/StatefulPartitionedCall�lstm_82/StatefulPartitionedCall�lstm_83/StatefulPartitionedCall�
lstm_81/StatefulPartitionedCallStatefulPartitionedCalllstm_81_inputlstm_81_1157333lstm_81_1157335lstm_81_1157337*
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1157180�
lstm_82/StatefulPartitionedCallStatefulPartitionedCall(lstm_81/StatefulPartitionedCall:output:0lstm_82_1157340lstm_82_1157342lstm_82_1157344*
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1157015�
lstm_83/StatefulPartitionedCallStatefulPartitionedCall(lstm_82/StatefulPartitionedCall:output:0lstm_83_1157347lstm_83_1157349lstm_83_1157351*
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156850�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_83/StatefulPartitionedCall:output:0dense_27_1157354dense_27_1157356*
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_27/StatefulPartitionedCall ^lstm_81/StatefulPartitionedCall ^lstm_82/StatefulPartitionedCall ^lstm_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2B
lstm_81/StatefulPartitionedCalllstm_81/StatefulPartitionedCall2B
lstm_82/StatefulPartitionedCalllstm_82/StatefulPartitionedCall2B
lstm_83/StatefulPartitionedCalllstm_83/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_81_input
�
�
while_cond_1155406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1155406___redundant_placeholder05
1while_while_cond_1155406___redundant_placeholder15
1while_while_cond_1155406___redundant_placeholder25
1while_while_cond_1155406___redundant_placeholder3
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
while_cond_1159637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159637___redundant_placeholder05
1while_while_cond_1159637___redundant_placeholder15
1while_while_cond_1159637___redundant_placeholder25
1while_while_cond_1159637___redundant_placeholder3
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

�
/__inference_sequential_27_layer_call_fn_1157422

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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1156659o
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
�	
�
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652

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
�R
�
(sequential_27_lstm_83_while_body_1155045H
Dsequential_27_lstm_83_while_sequential_27_lstm_83_while_loop_counterN
Jsequential_27_lstm_83_while_sequential_27_lstm_83_while_maximum_iterations+
'sequential_27_lstm_83_while_placeholder-
)sequential_27_lstm_83_while_placeholder_1-
)sequential_27_lstm_83_while_placeholder_2-
)sequential_27_lstm_83_while_placeholder_3G
Csequential_27_lstm_83_while_sequential_27_lstm_83_strided_slice_1_0�
sequential_27_lstm_83_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_83_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_27_lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0:2(^
Lsequential_27_lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(Y
Ksequential_27_lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0:((
$sequential_27_lstm_83_while_identity*
&sequential_27_lstm_83_while_identity_1*
&sequential_27_lstm_83_while_identity_2*
&sequential_27_lstm_83_while_identity_3*
&sequential_27_lstm_83_while_identity_4*
&sequential_27_lstm_83_while_identity_5E
Asequential_27_lstm_83_while_sequential_27_lstm_83_strided_slice_1�
}sequential_27_lstm_83_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_83_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_27_lstm_83_while_lstm_cell_191_matmul_readvariableop_resource:2(\
Jsequential_27_lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource:
(W
Isequential_27_lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource:(��@sequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp�?sequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp�Asequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp�
Msequential_27/lstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_27/lstm_83/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_83_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_83_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_83_while_placeholderVsequential_27/lstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
?sequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOpJsequential_27_lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
0sequential_27/lstm_83/while/lstm_cell_191/MatMulMatMulFsequential_27/lstm_83/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Asequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOpLsequential_27_lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
2sequential_27/lstm_83/while/lstm_cell_191/MatMul_1MatMul)sequential_27_lstm_83_while_placeholder_2Isequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_27/lstm_83/while/lstm_cell_191/addAddV2:sequential_27/lstm_83/while/lstm_cell_191/MatMul:product:0<sequential_27/lstm_83/while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
@sequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOpKsequential_27_lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
1sequential_27/lstm_83/while/lstm_cell_191/BiasAddBiasAdd1sequential_27/lstm_83/while/lstm_cell_191/add:z:0Hsequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������({
9sequential_27/lstm_83/while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_27/lstm_83/while/lstm_cell_191/splitSplitBsequential_27/lstm_83/while/lstm_cell_191/split/split_dim:output:0:sequential_27/lstm_83/while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
1sequential_27/lstm_83/while/lstm_cell_191/SigmoidSigmoid8sequential_27/lstm_83/while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
3sequential_27/lstm_83/while/lstm_cell_191/Sigmoid_1Sigmoid8sequential_27/lstm_83/while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
-sequential_27/lstm_83/while/lstm_cell_191/mulMul7sequential_27/lstm_83/while/lstm_cell_191/Sigmoid_1:y:0)sequential_27_lstm_83_while_placeholder_3*
T0*'
_output_shapes
:���������
�
.sequential_27/lstm_83/while/lstm_cell_191/ReluRelu8sequential_27/lstm_83/while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
/sequential_27/lstm_83/while/lstm_cell_191/mul_1Mul5sequential_27/lstm_83/while/lstm_cell_191/Sigmoid:y:0<sequential_27/lstm_83/while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
/sequential_27/lstm_83/while/lstm_cell_191/add_1AddV21sequential_27/lstm_83/while/lstm_cell_191/mul:z:03sequential_27/lstm_83/while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
3sequential_27/lstm_83/while/lstm_cell_191/Sigmoid_2Sigmoid8sequential_27/lstm_83/while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
�
0sequential_27/lstm_83/while/lstm_cell_191/Relu_1Relu3sequential_27/lstm_83/while/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_27/lstm_83/while/lstm_cell_191/mul_2Mul7sequential_27/lstm_83/while/lstm_cell_191/Sigmoid_2:y:0>sequential_27/lstm_83/while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
@sequential_27/lstm_83/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_83_while_placeholder_1'sequential_27_lstm_83_while_placeholder3sequential_27/lstm_83/while/lstm_cell_191/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_27/lstm_83/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_27/lstm_83/while/addAddV2'sequential_27_lstm_83_while_placeholder*sequential_27/lstm_83/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_27/lstm_83/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_27/lstm_83/while/add_1AddV2Dsequential_27_lstm_83_while_sequential_27_lstm_83_while_loop_counter,sequential_27/lstm_83/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_27/lstm_83/while/IdentityIdentity%sequential_27/lstm_83/while/add_1:z:0!^sequential_27/lstm_83/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_83/while/Identity_1IdentityJsequential_27_lstm_83_while_sequential_27_lstm_83_while_maximum_iterations!^sequential_27/lstm_83/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_83/while/Identity_2Identity#sequential_27/lstm_83/while/add:z:0!^sequential_27/lstm_83/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_83/while/Identity_3IdentityPsequential_27/lstm_83/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_83/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_83/while/Identity_4Identity3sequential_27/lstm_83/while/lstm_cell_191/mul_2:z:0!^sequential_27/lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
&sequential_27/lstm_83/while/Identity_5Identity3sequential_27/lstm_83/while/lstm_cell_191/add_1:z:0!^sequential_27/lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
 sequential_27/lstm_83/while/NoOpNoOpA^sequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp@^sequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOpB^sequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_27_lstm_83_while_identity-sequential_27/lstm_83/while/Identity:output:0"Y
&sequential_27_lstm_83_while_identity_1/sequential_27/lstm_83/while/Identity_1:output:0"Y
&sequential_27_lstm_83_while_identity_2/sequential_27/lstm_83/while/Identity_2:output:0"Y
&sequential_27_lstm_83_while_identity_3/sequential_27/lstm_83/while/Identity_3:output:0"Y
&sequential_27_lstm_83_while_identity_4/sequential_27/lstm_83/while/Identity_4:output:0"Y
&sequential_27_lstm_83_while_identity_5/sequential_27/lstm_83/while/Identity_5:output:0"�
Isequential_27_lstm_83_while_lstm_cell_191_biasadd_readvariableop_resourceKsequential_27_lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0"�
Jsequential_27_lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resourceLsequential_27_lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0"�
Hsequential_27_lstm_83_while_lstm_cell_191_matmul_readvariableop_resourceJsequential_27_lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0"�
Asequential_27_lstm_83_while_sequential_27_lstm_83_strided_slice_1Csequential_27_lstm_83_while_sequential_27_lstm_83_strided_slice_1_0"�
}sequential_27_lstm_83_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_83_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_83_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_83_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
@sequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp@sequential_27/lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2�
?sequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp?sequential_27/lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp2�
Asequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOpAsequential_27/lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
�R
�
(sequential_27_lstm_82_while_body_1154906H
Dsequential_27_lstm_82_while_sequential_27_lstm_82_while_loop_counterN
Jsequential_27_lstm_82_while_sequential_27_lstm_82_while_maximum_iterations+
'sequential_27_lstm_82_while_placeholder-
)sequential_27_lstm_82_while_placeholder_1-
)sequential_27_lstm_82_while_placeholder_2-
)sequential_27_lstm_82_while_placeholder_3G
Csequential_27_lstm_82_while_sequential_27_lstm_82_strided_slice_1_0�
sequential_27_lstm_82_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_82_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_27_lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0:	d�_
Lsequential_27_lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�Z
Ksequential_27_lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0:	�(
$sequential_27_lstm_82_while_identity*
&sequential_27_lstm_82_while_identity_1*
&sequential_27_lstm_82_while_identity_2*
&sequential_27_lstm_82_while_identity_3*
&sequential_27_lstm_82_while_identity_4*
&sequential_27_lstm_82_while_identity_5E
Asequential_27_lstm_82_while_sequential_27_lstm_82_strided_slice_1�
}sequential_27_lstm_82_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_82_tensorarrayunstack_tensorlistfromtensor[
Hsequential_27_lstm_82_while_lstm_cell_190_matmul_readvariableop_resource:	d�]
Jsequential_27_lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource:	2�X
Isequential_27_lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource:	���@sequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp�?sequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp�Asequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp�
Msequential_27/lstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_27/lstm_82/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_82_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_82_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_82_while_placeholderVsequential_27/lstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
?sequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOpJsequential_27_lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
0sequential_27/lstm_82/while/lstm_cell_190/MatMulMatMulFsequential_27/lstm_82/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOpLsequential_27_lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
2sequential_27/lstm_82/while/lstm_cell_190/MatMul_1MatMul)sequential_27_lstm_82_while_placeholder_2Isequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_27/lstm_82/while/lstm_cell_190/addAddV2:sequential_27/lstm_82/while/lstm_cell_190/MatMul:product:0<sequential_27/lstm_82/while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOpKsequential_27_lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_27/lstm_82/while/lstm_cell_190/BiasAddBiasAdd1sequential_27/lstm_82/while/lstm_cell_190/add:z:0Hsequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_27/lstm_82/while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_27/lstm_82/while/lstm_cell_190/splitSplitBsequential_27/lstm_82/while/lstm_cell_190/split/split_dim:output:0:sequential_27/lstm_82/while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
1sequential_27/lstm_82/while/lstm_cell_190/SigmoidSigmoid8sequential_27/lstm_82/while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
3sequential_27/lstm_82/while/lstm_cell_190/Sigmoid_1Sigmoid8sequential_27/lstm_82/while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
-sequential_27/lstm_82/while/lstm_cell_190/mulMul7sequential_27/lstm_82/while/lstm_cell_190/Sigmoid_1:y:0)sequential_27_lstm_82_while_placeholder_3*
T0*'
_output_shapes
:���������2�
.sequential_27/lstm_82/while/lstm_cell_190/ReluRelu8sequential_27/lstm_82/while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
/sequential_27/lstm_82/while/lstm_cell_190/mul_1Mul5sequential_27/lstm_82/while/lstm_cell_190/Sigmoid:y:0<sequential_27/lstm_82/while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
/sequential_27/lstm_82/while/lstm_cell_190/add_1AddV21sequential_27/lstm_82/while/lstm_cell_190/mul:z:03sequential_27/lstm_82/while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
3sequential_27/lstm_82/while/lstm_cell_190/Sigmoid_2Sigmoid8sequential_27/lstm_82/while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2�
0sequential_27/lstm_82/while/lstm_cell_190/Relu_1Relu3sequential_27/lstm_82/while/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_27/lstm_82/while/lstm_cell_190/mul_2Mul7sequential_27/lstm_82/while/lstm_cell_190/Sigmoid_2:y:0>sequential_27/lstm_82/while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
@sequential_27/lstm_82/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_82_while_placeholder_1'sequential_27_lstm_82_while_placeholder3sequential_27/lstm_82/while/lstm_cell_190/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_27/lstm_82/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_27/lstm_82/while/addAddV2'sequential_27_lstm_82_while_placeholder*sequential_27/lstm_82/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_27/lstm_82/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_27/lstm_82/while/add_1AddV2Dsequential_27_lstm_82_while_sequential_27_lstm_82_while_loop_counter,sequential_27/lstm_82/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_27/lstm_82/while/IdentityIdentity%sequential_27/lstm_82/while/add_1:z:0!^sequential_27/lstm_82/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_82/while/Identity_1IdentityJsequential_27_lstm_82_while_sequential_27_lstm_82_while_maximum_iterations!^sequential_27/lstm_82/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_82/while/Identity_2Identity#sequential_27/lstm_82/while/add:z:0!^sequential_27/lstm_82/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_82/while/Identity_3IdentityPsequential_27/lstm_82/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_82/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_82/while/Identity_4Identity3sequential_27/lstm_82/while/lstm_cell_190/mul_2:z:0!^sequential_27/lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_27/lstm_82/while/Identity_5Identity3sequential_27/lstm_82/while/lstm_cell_190/add_1:z:0!^sequential_27/lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
 sequential_27/lstm_82/while/NoOpNoOpA^sequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp@^sequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOpB^sequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_27_lstm_82_while_identity-sequential_27/lstm_82/while/Identity:output:0"Y
&sequential_27_lstm_82_while_identity_1/sequential_27/lstm_82/while/Identity_1:output:0"Y
&sequential_27_lstm_82_while_identity_2/sequential_27/lstm_82/while/Identity_2:output:0"Y
&sequential_27_lstm_82_while_identity_3/sequential_27/lstm_82/while/Identity_3:output:0"Y
&sequential_27_lstm_82_while_identity_4/sequential_27/lstm_82/while/Identity_4:output:0"Y
&sequential_27_lstm_82_while_identity_5/sequential_27/lstm_82/while/Identity_5:output:0"�
Isequential_27_lstm_82_while_lstm_cell_190_biasadd_readvariableop_resourceKsequential_27_lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0"�
Jsequential_27_lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resourceLsequential_27_lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0"�
Hsequential_27_lstm_82_while_lstm_cell_190_matmul_readvariableop_resourceJsequential_27_lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0"�
Asequential_27_lstm_82_while_sequential_27_lstm_82_strided_slice_1Csequential_27_lstm_82_while_sequential_27_lstm_82_strided_slice_1_0"�
}sequential_27_lstm_82_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_82_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_82_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_82_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
@sequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp@sequential_27/lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2�
?sequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp?sequential_27/lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp2�
Asequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOpAsequential_27/lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
�A
�

lstm_83_while_body_1157786,
(lstm_83_while_lstm_83_while_loop_counter2
.lstm_83_while_lstm_83_while_maximum_iterations
lstm_83_while_placeholder
lstm_83_while_placeholder_1
lstm_83_while_placeholder_2
lstm_83_while_placeholder_3+
'lstm_83_while_lstm_83_strided_slice_1_0g
clstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0:2(P
>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(K
=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0:(
lstm_83_while_identity
lstm_83_while_identity_1
lstm_83_while_identity_2
lstm_83_while_identity_3
lstm_83_while_identity_4
lstm_83_while_identity_5)
%lstm_83_while_lstm_83_strided_slice_1e
alstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensorL
:lstm_83_while_lstm_cell_191_matmul_readvariableop_resource:2(N
<lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource:
(I
;lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource:(��2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp�1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp�3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp�
?lstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_83/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0lstm_83_while_placeholderHlstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_83/while/lstm_cell_191/MatMulMatMul8lstm_83/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_83/while/lstm_cell_191/MatMul_1MatMullstm_83_while_placeholder_2;lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_83/while/lstm_cell_191/addAddV2,lstm_83/while/lstm_cell_191/MatMul:product:0.lstm_83/while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_83/while/lstm_cell_191/BiasAddBiasAdd#lstm_83/while/lstm_cell_191/add:z:0:lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_83/while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_83/while/lstm_cell_191/splitSplit4lstm_83/while/lstm_cell_191/split/split_dim:output:0,lstm_83/while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_83/while/lstm_cell_191/SigmoidSigmoid*lstm_83/while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_83/while/lstm_cell_191/Sigmoid_1Sigmoid*lstm_83/while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_83/while/lstm_cell_191/mulMul)lstm_83/while/lstm_cell_191/Sigmoid_1:y:0lstm_83_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_83/while/lstm_cell_191/ReluRelu*lstm_83/while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/mul_1Mul'lstm_83/while/lstm_cell_191/Sigmoid:y:0.lstm_83/while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/add_1AddV2#lstm_83/while/lstm_cell_191/mul:z:0%lstm_83/while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_83/while/lstm_cell_191/Sigmoid_2Sigmoid*lstm_83/while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_83/while/lstm_cell_191/Relu_1Relu%lstm_83/while/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/mul_2Mul)lstm_83/while/lstm_cell_191/Sigmoid_2:y:00lstm_83/while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_83/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_83_while_placeholder_1lstm_83_while_placeholder%lstm_83/while/lstm_cell_191/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_83/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_83/while/addAddV2lstm_83_while_placeholderlstm_83/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_83/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_83/while/add_1AddV2(lstm_83_while_lstm_83_while_loop_counterlstm_83/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_83/while/IdentityIdentitylstm_83/while/add_1:z:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_1Identity.lstm_83_while_lstm_83_while_maximum_iterations^lstm_83/while/NoOp*
T0*
_output_shapes
: q
lstm_83/while/Identity_2Identitylstm_83/while/add:z:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_3IdentityBlstm_83/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_4Identity%lstm_83/while/lstm_cell_191/mul_2:z:0^lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_83/while/Identity_5Identity%lstm_83/while/lstm_cell_191/add_1:z:0^lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_83/while/NoOpNoOp3^lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2^lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp4^lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_83_while_identitylstm_83/while/Identity:output:0"=
lstm_83_while_identity_1!lstm_83/while/Identity_1:output:0"=
lstm_83_while_identity_2!lstm_83/while/Identity_2:output:0"=
lstm_83_while_identity_3!lstm_83/while/Identity_3:output:0"=
lstm_83_while_identity_4!lstm_83/while/Identity_4:output:0"=
lstm_83_while_identity_5!lstm_83/while/Identity_5:output:0"P
%lstm_83_while_lstm_83_strided_slice_1'lstm_83_while_lstm_83_strided_slice_1_0"|
;lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0"~
<lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0"z
:lstm_83_while_lstm_cell_191_matmul_readvariableop_resource<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0"�
alstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensorclstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2f
1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp2j
3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
while_body_1156550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
�J
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1157180

inputs?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1157096*
condR
while_cond_1157095*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160432

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
�J
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158776

inputs?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1158692*
condR
while_cond_1158691*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_27_layer_call_fn_1157300
lstm_81_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157248o
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
_user_specified_namelstm_81_input
�A
�

lstm_83_while_body_1158213,
(lstm_83_while_lstm_83_while_loop_counter2
.lstm_83_while_lstm_83_while_maximum_iterations
lstm_83_while_placeholder
lstm_83_while_placeholder_1
lstm_83_while_placeholder_2
lstm_83_while_placeholder_3+
'lstm_83_while_lstm_83_strided_slice_1_0g
clstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0:2(P
>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(K
=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0:(
lstm_83_while_identity
lstm_83_while_identity_1
lstm_83_while_identity_2
lstm_83_while_identity_3
lstm_83_while_identity_4
lstm_83_while_identity_5)
%lstm_83_while_lstm_83_strided_slice_1e
alstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensorL
:lstm_83_while_lstm_cell_191_matmul_readvariableop_resource:2(N
<lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource:
(I
;lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource:(��2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp�1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp�3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp�
?lstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_83/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0lstm_83_while_placeholderHlstm_83/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_83/while/lstm_cell_191/MatMulMatMul8lstm_83/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_83/while/lstm_cell_191/MatMul_1MatMullstm_83_while_placeholder_2;lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_83/while/lstm_cell_191/addAddV2,lstm_83/while/lstm_cell_191/MatMul:product:0.lstm_83/while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_83/while/lstm_cell_191/BiasAddBiasAdd#lstm_83/while/lstm_cell_191/add:z:0:lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_83/while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_83/while/lstm_cell_191/splitSplit4lstm_83/while/lstm_cell_191/split/split_dim:output:0,lstm_83/while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_83/while/lstm_cell_191/SigmoidSigmoid*lstm_83/while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_83/while/lstm_cell_191/Sigmoid_1Sigmoid*lstm_83/while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_83/while/lstm_cell_191/mulMul)lstm_83/while/lstm_cell_191/Sigmoid_1:y:0lstm_83_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_83/while/lstm_cell_191/ReluRelu*lstm_83/while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/mul_1Mul'lstm_83/while/lstm_cell_191/Sigmoid:y:0.lstm_83/while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/add_1AddV2#lstm_83/while/lstm_cell_191/mul:z:0%lstm_83/while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_83/while/lstm_cell_191/Sigmoid_2Sigmoid*lstm_83/while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_83/while/lstm_cell_191/Relu_1Relu%lstm_83/while/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_83/while/lstm_cell_191/mul_2Mul)lstm_83/while/lstm_cell_191/Sigmoid_2:y:00lstm_83/while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_83/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_83_while_placeholder_1lstm_83_while_placeholder%lstm_83/while/lstm_cell_191/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_83/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_83/while/addAddV2lstm_83_while_placeholderlstm_83/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_83/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_83/while/add_1AddV2(lstm_83_while_lstm_83_while_loop_counterlstm_83/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_83/while/IdentityIdentitylstm_83/while/add_1:z:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_1Identity.lstm_83_while_lstm_83_while_maximum_iterations^lstm_83/while/NoOp*
T0*
_output_shapes
: q
lstm_83/while/Identity_2Identitylstm_83/while/add:z:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_3IdentityBlstm_83/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_83/while/NoOp*
T0*
_output_shapes
: �
lstm_83/while/Identity_4Identity%lstm_83/while/lstm_cell_191/mul_2:z:0^lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_83/while/Identity_5Identity%lstm_83/while/lstm_cell_191/add_1:z:0^lstm_83/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_83/while/NoOpNoOp3^lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2^lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp4^lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_83_while_identitylstm_83/while/Identity:output:0"=
lstm_83_while_identity_1!lstm_83/while/Identity_1:output:0"=
lstm_83_while_identity_2!lstm_83/while/Identity_2:output:0"=
lstm_83_while_identity_3!lstm_83/while/Identity_3:output:0"=
lstm_83_while_identity_4!lstm_83/while/Identity_4:output:0"=
lstm_83_while_identity_5!lstm_83/while/Identity_5:output:0"P
%lstm_83_while_lstm_83_strided_slice_1'lstm_83_while_lstm_83_strided_slice_1_0"|
;lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource=lstm_83_while_lstm_cell_191_biasadd_readvariableop_resource_0"~
<lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource>lstm_83_while_lstm_cell_191_matmul_1_readvariableop_resource_0"z
:lstm_83_while_lstm_cell_191_matmul_readvariableop_resource<lstm_83_while_lstm_cell_191_matmul_readvariableop_resource_0"�
alstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensorclstm_83_while_tensorarrayv2read_tensorlistgetitem_lstm_83_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2lstm_83/while/lstm_cell_191/BiasAdd/ReadVariableOp2f
1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp1lstm_83/while/lstm_cell_191/MatMul/ReadVariableOp2j
3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp3lstm_83/while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
while_body_1159451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
while_body_1155216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_189_1155240_0:	�0
while_lstm_cell_189_1155242_0:	d�,
while_lstm_cell_189_1155244_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_189_1155240:	�.
while_lstm_cell_189_1155242:	d�*
while_lstm_cell_189_1155244:	���+while/lstm_cell_189/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_189/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_189_1155240_0while_lstm_cell_189_1155242_0while_lstm_cell_189_1155244_0*
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155202�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_189/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_189/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_189/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_189/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_189_1155240while_lstm_cell_189_1155240_0"<
while_lstm_cell_189_1155242while_lstm_cell_189_1155242_0"<
while_lstm_cell_189_1155244while_lstm_cell_189_1155244_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_189/StatefulPartitionedCall+while/lstm_cell_189/StatefulPartitionedCall: 
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
(sequential_27_lstm_81_while_body_1154767H
Dsequential_27_lstm_81_while_sequential_27_lstm_81_while_loop_counterN
Jsequential_27_lstm_81_while_sequential_27_lstm_81_while_maximum_iterations+
'sequential_27_lstm_81_while_placeholder-
)sequential_27_lstm_81_while_placeholder_1-
)sequential_27_lstm_81_while_placeholder_2-
)sequential_27_lstm_81_while_placeholder_3G
Csequential_27_lstm_81_while_sequential_27_lstm_81_strided_slice_1_0�
sequential_27_lstm_81_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_81_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_27_lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0:	�_
Lsequential_27_lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�Z
Ksequential_27_lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0:	�(
$sequential_27_lstm_81_while_identity*
&sequential_27_lstm_81_while_identity_1*
&sequential_27_lstm_81_while_identity_2*
&sequential_27_lstm_81_while_identity_3*
&sequential_27_lstm_81_while_identity_4*
&sequential_27_lstm_81_while_identity_5E
Asequential_27_lstm_81_while_sequential_27_lstm_81_strided_slice_1�
}sequential_27_lstm_81_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_81_tensorarrayunstack_tensorlistfromtensor[
Hsequential_27_lstm_81_while_lstm_cell_189_matmul_readvariableop_resource:	�]
Jsequential_27_lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource:	d�X
Isequential_27_lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource:	���@sequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp�?sequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp�Asequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp�
Msequential_27/lstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_27/lstm_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_81_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_81_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_81_while_placeholderVsequential_27/lstm_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
?sequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOpJsequential_27_lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
0sequential_27/lstm_81/while/lstm_cell_189/MatMulMatMulFsequential_27/lstm_81/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOpLsequential_27_lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_27/lstm_81/while/lstm_cell_189/MatMul_1MatMul)sequential_27_lstm_81_while_placeholder_2Isequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_27/lstm_81/while/lstm_cell_189/addAddV2:sequential_27/lstm_81/while/lstm_cell_189/MatMul:product:0<sequential_27/lstm_81/while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOpKsequential_27_lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_27/lstm_81/while/lstm_cell_189/BiasAddBiasAdd1sequential_27/lstm_81/while/lstm_cell_189/add:z:0Hsequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_27/lstm_81/while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_27/lstm_81/while/lstm_cell_189/splitSplitBsequential_27/lstm_81/while/lstm_cell_189/split/split_dim:output:0:sequential_27/lstm_81/while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
1sequential_27/lstm_81/while/lstm_cell_189/SigmoidSigmoid8sequential_27/lstm_81/while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
3sequential_27/lstm_81/while/lstm_cell_189/Sigmoid_1Sigmoid8sequential_27/lstm_81/while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
-sequential_27/lstm_81/while/lstm_cell_189/mulMul7sequential_27/lstm_81/while/lstm_cell_189/Sigmoid_1:y:0)sequential_27_lstm_81_while_placeholder_3*
T0*'
_output_shapes
:���������d�
.sequential_27/lstm_81/while/lstm_cell_189/ReluRelu8sequential_27/lstm_81/while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
/sequential_27/lstm_81/while/lstm_cell_189/mul_1Mul5sequential_27/lstm_81/while/lstm_cell_189/Sigmoid:y:0<sequential_27/lstm_81/while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
/sequential_27/lstm_81/while/lstm_cell_189/add_1AddV21sequential_27/lstm_81/while/lstm_cell_189/mul:z:03sequential_27/lstm_81/while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
3sequential_27/lstm_81/while/lstm_cell_189/Sigmoid_2Sigmoid8sequential_27/lstm_81/while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������d�
0sequential_27/lstm_81/while/lstm_cell_189/Relu_1Relu3sequential_27/lstm_81/while/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_27/lstm_81/while/lstm_cell_189/mul_2Mul7sequential_27/lstm_81/while/lstm_cell_189/Sigmoid_2:y:0>sequential_27/lstm_81/while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
@sequential_27/lstm_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_81_while_placeholder_1'sequential_27_lstm_81_while_placeholder3sequential_27/lstm_81/while/lstm_cell_189/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_27/lstm_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_27/lstm_81/while/addAddV2'sequential_27_lstm_81_while_placeholder*sequential_27/lstm_81/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_27/lstm_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_27/lstm_81/while/add_1AddV2Dsequential_27_lstm_81_while_sequential_27_lstm_81_while_loop_counter,sequential_27/lstm_81/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_27/lstm_81/while/IdentityIdentity%sequential_27/lstm_81/while/add_1:z:0!^sequential_27/lstm_81/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_81/while/Identity_1IdentityJsequential_27_lstm_81_while_sequential_27_lstm_81_while_maximum_iterations!^sequential_27/lstm_81/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_81/while/Identity_2Identity#sequential_27/lstm_81/while/add:z:0!^sequential_27/lstm_81/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_81/while/Identity_3IdentityPsequential_27/lstm_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_81/while/NoOp*
T0*
_output_shapes
: �
&sequential_27/lstm_81/while/Identity_4Identity3sequential_27/lstm_81/while/lstm_cell_189/mul_2:z:0!^sequential_27/lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
&sequential_27/lstm_81/while/Identity_5Identity3sequential_27/lstm_81/while/lstm_cell_189/add_1:z:0!^sequential_27/lstm_81/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential_27/lstm_81/while/NoOpNoOpA^sequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp@^sequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOpB^sequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_27_lstm_81_while_identity-sequential_27/lstm_81/while/Identity:output:0"Y
&sequential_27_lstm_81_while_identity_1/sequential_27/lstm_81/while/Identity_1:output:0"Y
&sequential_27_lstm_81_while_identity_2/sequential_27/lstm_81/while/Identity_2:output:0"Y
&sequential_27_lstm_81_while_identity_3/sequential_27/lstm_81/while/Identity_3:output:0"Y
&sequential_27_lstm_81_while_identity_4/sequential_27/lstm_81/while/Identity_4:output:0"Y
&sequential_27_lstm_81_while_identity_5/sequential_27/lstm_81/while/Identity_5:output:0"�
Isequential_27_lstm_81_while_lstm_cell_189_biasadd_readvariableop_resourceKsequential_27_lstm_81_while_lstm_cell_189_biasadd_readvariableop_resource_0"�
Jsequential_27_lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resourceLsequential_27_lstm_81_while_lstm_cell_189_matmul_1_readvariableop_resource_0"�
Hsequential_27_lstm_81_while_lstm_cell_189_matmul_readvariableop_resourceJsequential_27_lstm_81_while_lstm_cell_189_matmul_readvariableop_resource_0"�
Asequential_27_lstm_81_while_sequential_27_lstm_81_strided_slice_1Csequential_27_lstm_81_while_sequential_27_lstm_81_strided_slice_1_0"�
}sequential_27_lstm_81_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_81_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_81_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
@sequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp@sequential_27/lstm_81/while/lstm_cell_189/BiasAdd/ReadVariableOp2�
?sequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp?sequential_27/lstm_81/while/lstm_cell_189/MatMul/ReadVariableOp2�
Asequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOpAsequential_27/lstm_81/while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
�
�
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157330
lstm_81_input"
lstm_81_1157303:	�"
lstm_81_1157305:	d�
lstm_81_1157307:	�"
lstm_82_1157310:	d�"
lstm_82_1157312:	2�
lstm_82_1157314:	�!
lstm_83_1157317:2(!
lstm_83_1157319:
(
lstm_83_1157321:("
dense_27_1157324:

dense_27_1157326:
identity�� dense_27/StatefulPartitionedCall�lstm_81/StatefulPartitionedCall�lstm_82/StatefulPartitionedCall�lstm_83/StatefulPartitionedCall�
lstm_81/StatefulPartitionedCallStatefulPartitionedCalllstm_81_inputlstm_81_1157303lstm_81_1157305lstm_81_1157307*
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1156334�
lstm_82/StatefulPartitionedCallStatefulPartitionedCall(lstm_81/StatefulPartitionedCall:output:0lstm_82_1157310lstm_82_1157312lstm_82_1157314*
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1156484�
lstm_83/StatefulPartitionedCallStatefulPartitionedCall(lstm_82/StatefulPartitionedCall:output:0lstm_83_1157317lstm_83_1157319lstm_83_1157321*
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156634�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_83/StatefulPartitionedCall:output:0dense_27_1157324dense_27_1157326*
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_27/StatefulPartitionedCall ^lstm_81/StatefulPartitionedCall ^lstm_82/StatefulPartitionedCall ^lstm_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2B
lstm_81/StatefulPartitionedCalllstm_81/StatefulPartitionedCall2B
lstm_82/StatefulPartitionedCalllstm_82/StatefulPartitionedCall2B
lstm_83/StatefulPartitionedCalllstm_83/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_81_input
�
�
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1155902

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
�
�
while_cond_1159164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159164___redundant_placeholder05
1while_while_cond_1159164___redundant_placeholder15
1while_while_cond_1159164___redundant_placeholder25
1while_while_cond_1159164___redundant_placeholder3
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
)__inference_lstm_81_layer_call_fn_1158325
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1155476|
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
�
�
)__inference_lstm_83_layer_call_fn_1159579

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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156850o
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
�8
�
while_body_1157096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
�
�
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155348

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
�8
�
while_body_1156250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
while_cond_1158834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1158834___redundant_placeholder05
1while_while_cond_1158834___redundant_placeholder15
1while_while_cond_1158834___redundant_placeholder25
1while_while_cond_1158834___redundant_placeholder3
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
while_cond_1155756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1155756___redundant_placeholder05
1while_while_cond_1155756___redundant_placeholder15
1while_while_cond_1155756___redundant_placeholder25
1while_while_cond_1155756___redundant_placeholder3
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
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1155635

inputs(
lstm_cell_190_1155553:	d�(
lstm_cell_190_1155555:	2�$
lstm_cell_190_1155557:	�
identity��%lstm_cell_190/StatefulPartitionedCall�while;
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
%lstm_cell_190/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_190_1155553lstm_cell_190_1155555lstm_cell_190_1155557*
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155552n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_190_1155553lstm_cell_190_1155555lstm_cell_190_1155557*
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
while_body_1155566*
condR
while_cond_1155565*K
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
NoOpNoOp&^lstm_cell_190/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_190/StatefulPartitionedCall%lstm_cell_190/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156634

inputs>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1156550*
condR
while_cond_1156549*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�B
�

lstm_82_while_body_1158074,
(lstm_82_while_lstm_82_while_loop_counter2
.lstm_82_while_lstm_82_while_maximum_iterations
lstm_82_while_placeholder
lstm_82_while_placeholder_1
lstm_82_while_placeholder_2
lstm_82_while_placeholder_3+
'lstm_82_while_lstm_82_strided_slice_1_0g
clstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0:	d�Q
>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�L
=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
lstm_82_while_identity
lstm_82_while_identity_1
lstm_82_while_identity_2
lstm_82_while_identity_3
lstm_82_while_identity_4
lstm_82_while_identity_5)
%lstm_82_while_lstm_82_strided_slice_1e
alstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensorM
:lstm_82_while_lstm_cell_190_matmul_readvariableop_resource:	d�O
<lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource:	2�J
;lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource:	���2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp�1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp�3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp�
?lstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_82/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0lstm_82_while_placeholderHlstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_82/while/lstm_cell_190/MatMulMatMul8lstm_82/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_82/while/lstm_cell_190/MatMul_1MatMullstm_82_while_placeholder_2;lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_82/while/lstm_cell_190/addAddV2,lstm_82/while/lstm_cell_190/MatMul:product:0.lstm_82/while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_82/while/lstm_cell_190/BiasAddBiasAdd#lstm_82/while/lstm_cell_190/add:z:0:lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_82/while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_82/while/lstm_cell_190/splitSplit4lstm_82/while/lstm_cell_190/split/split_dim:output:0,lstm_82/while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_82/while/lstm_cell_190/SigmoidSigmoid*lstm_82/while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_82/while/lstm_cell_190/Sigmoid_1Sigmoid*lstm_82/while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_82/while/lstm_cell_190/mulMul)lstm_82/while/lstm_cell_190/Sigmoid_1:y:0lstm_82_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_82/while/lstm_cell_190/ReluRelu*lstm_82/while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/mul_1Mul'lstm_82/while/lstm_cell_190/Sigmoid:y:0.lstm_82/while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/add_1AddV2#lstm_82/while/lstm_cell_190/mul:z:0%lstm_82/while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_82/while/lstm_cell_190/Sigmoid_2Sigmoid*lstm_82/while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_82/while/lstm_cell_190/Relu_1Relu%lstm_82/while/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/mul_2Mul)lstm_82/while/lstm_cell_190/Sigmoid_2:y:00lstm_82/while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_82/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_82_while_placeholder_1lstm_82_while_placeholder%lstm_82/while/lstm_cell_190/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_82/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_82/while/addAddV2lstm_82_while_placeholderlstm_82/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_82/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_82/while/add_1AddV2(lstm_82_while_lstm_82_while_loop_counterlstm_82/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_82/while/IdentityIdentitylstm_82/while/add_1:z:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_1Identity.lstm_82_while_lstm_82_while_maximum_iterations^lstm_82/while/NoOp*
T0*
_output_shapes
: q
lstm_82/while/Identity_2Identitylstm_82/while/add:z:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_3IdentityBlstm_82/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_4Identity%lstm_82/while/lstm_cell_190/mul_2:z:0^lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_82/while/Identity_5Identity%lstm_82/while/lstm_cell_190/add_1:z:0^lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_82/while/NoOpNoOp3^lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2^lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp4^lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_82_while_identitylstm_82/while/Identity:output:0"=
lstm_82_while_identity_1!lstm_82/while/Identity_1:output:0"=
lstm_82_while_identity_2!lstm_82/while/Identity_2:output:0"=
lstm_82_while_identity_3!lstm_82/while/Identity_3:output:0"=
lstm_82_while_identity_4!lstm_82/while/Identity_4:output:0"=
lstm_82_while_identity_5!lstm_82/while/Identity_5:output:0"P
%lstm_82_while_lstm_82_strided_slice_1'lstm_82_while_lstm_82_strided_slice_1_0"|
;lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0"~
<lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0"z
:lstm_82_while_lstm_cell_190_matmul_readvariableop_resource<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0"�
alstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensorclstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2f
1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp2j
3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
while_body_1155407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_189_1155431_0:	�0
while_lstm_cell_189_1155433_0:	d�,
while_lstm_cell_189_1155435_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_189_1155431:	�.
while_lstm_cell_189_1155433:	d�*
while_lstm_cell_189_1155435:	���+while/lstm_cell_189/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_189/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_189_1155431_0while_lstm_cell_189_1155433_0while_lstm_cell_189_1155435_0*
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155348�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_189/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_189/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_189/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_189/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_189_1155431while_lstm_cell_189_1155431_0"<
while_lstm_cell_189_1155433while_lstm_cell_189_1155433_0"<
while_lstm_cell_189_1155435while_lstm_cell_189_1155435_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_189/StatefulPartitionedCall+while/lstm_cell_189/StatefulPartitionedCall: 
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
while_body_1159165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
�
�
*__inference_dense_27_layer_call_fn_1160160

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
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652o
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
�

�
lstm_83_while_cond_1157785,
(lstm_83_while_lstm_83_while_loop_counter2
.lstm_83_while_lstm_83_while_maximum_iterations
lstm_83_while_placeholder
lstm_83_while_placeholder_1
lstm_83_while_placeholder_2
lstm_83_while_placeholder_3.
*lstm_83_while_less_lstm_83_strided_slice_1E
Alstm_83_while_lstm_83_while_cond_1157785___redundant_placeholder0E
Alstm_83_while_lstm_83_while_cond_1157785___redundant_placeholder1E
Alstm_83_while_lstm_83_while_cond_1157785___redundant_placeholder2E
Alstm_83_while_lstm_83_while_cond_1157785___redundant_placeholder3
lstm_83_while_identity
�
lstm_83/while/LessLesslstm_83_while_placeholder*lstm_83_while_less_lstm_83_strided_slice_1*
T0*
_output_shapes
: [
lstm_83/while/IdentityIdentitylstm_83/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_83_while_identitylstm_83/while/Identity:output:0*(
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
(sequential_27_lstm_83_while_cond_1155044H
Dsequential_27_lstm_83_while_sequential_27_lstm_83_while_loop_counterN
Jsequential_27_lstm_83_while_sequential_27_lstm_83_while_maximum_iterations+
'sequential_27_lstm_83_while_placeholder-
)sequential_27_lstm_83_while_placeholder_1-
)sequential_27_lstm_83_while_placeholder_2-
)sequential_27_lstm_83_while_placeholder_3J
Fsequential_27_lstm_83_while_less_sequential_27_lstm_83_strided_slice_1a
]sequential_27_lstm_83_while_sequential_27_lstm_83_while_cond_1155044___redundant_placeholder0a
]sequential_27_lstm_83_while_sequential_27_lstm_83_while_cond_1155044___redundant_placeholder1a
]sequential_27_lstm_83_while_sequential_27_lstm_83_while_cond_1155044___redundant_placeholder2a
]sequential_27_lstm_83_while_sequential_27_lstm_83_while_cond_1155044___redundant_placeholder3(
$sequential_27_lstm_83_while_identity
�
 sequential_27/lstm_83/while/LessLess'sequential_27_lstm_83_while_placeholderFsequential_27_lstm_83_while_less_sequential_27_lstm_83_strided_slice_1*
T0*
_output_shapes
: w
$sequential_27/lstm_83/while/IdentityIdentity$sequential_27/lstm_83/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_27_lstm_83_while_identity-sequential_27/lstm_83/while/Identity:output:0*(
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
�
�
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1156048

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
while_body_1158692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
ݳ
�
"__inference__wrapped_model_1155135
lstm_81_inputU
Bsequential_27_lstm_81_lstm_cell_189_matmul_readvariableop_resource:	�W
Dsequential_27_lstm_81_lstm_cell_189_matmul_1_readvariableop_resource:	d�R
Csequential_27_lstm_81_lstm_cell_189_biasadd_readvariableop_resource:	�U
Bsequential_27_lstm_82_lstm_cell_190_matmul_readvariableop_resource:	d�W
Dsequential_27_lstm_82_lstm_cell_190_matmul_1_readvariableop_resource:	2�R
Csequential_27_lstm_82_lstm_cell_190_biasadd_readvariableop_resource:	�T
Bsequential_27_lstm_83_lstm_cell_191_matmul_readvariableop_resource:2(V
Dsequential_27_lstm_83_lstm_cell_191_matmul_1_readvariableop_resource:
(Q
Csequential_27_lstm_83_lstm_cell_191_biasadd_readvariableop_resource:(G
5sequential_27_dense_27_matmul_readvariableop_resource:
D
6sequential_27_dense_27_biasadd_readvariableop_resource:
identity��-sequential_27/dense_27/BiasAdd/ReadVariableOp�,sequential_27/dense_27/MatMul/ReadVariableOp�:sequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp�9sequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOp�;sequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp�sequential_27/lstm_81/while�:sequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp�9sequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOp�;sequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp�sequential_27/lstm_82/while�:sequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp�9sequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOp�;sequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp�sequential_27/lstm_83/whileX
sequential_27/lstm_81/ShapeShapelstm_81_input*
T0*
_output_shapes
:s
)sequential_27/lstm_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_27/lstm_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_27/lstm_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_27/lstm_81/strided_sliceStridedSlice$sequential_27/lstm_81/Shape:output:02sequential_27/lstm_81/strided_slice/stack:output:04sequential_27/lstm_81/strided_slice/stack_1:output:04sequential_27/lstm_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_27/lstm_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
"sequential_27/lstm_81/zeros/packedPack,sequential_27/lstm_81/strided_slice:output:0-sequential_27/lstm_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_27/lstm_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_81/zerosFill+sequential_27/lstm_81/zeros/packed:output:0*sequential_27/lstm_81/zeros/Const:output:0*
T0*'
_output_shapes
:���������dh
&sequential_27/lstm_81/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_27/lstm_81/zeros_1/packedPack,sequential_27/lstm_81/strided_slice:output:0/sequential_27/lstm_81/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_27/lstm_81/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_81/zeros_1Fill-sequential_27/lstm_81/zeros_1/packed:output:0,sequential_27/lstm_81/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dy
$sequential_27/lstm_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_27/lstm_81/transpose	Transposelstm_81_input-sequential_27/lstm_81/transpose/perm:output:0*
T0*+
_output_shapes
:���������p
sequential_27/lstm_81/Shape_1Shape#sequential_27/lstm_81/transpose:y:0*
T0*
_output_shapes
:u
+sequential_27/lstm_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_81/strided_slice_1StridedSlice&sequential_27/lstm_81/Shape_1:output:04sequential_27/lstm_81/strided_slice_1/stack:output:06sequential_27/lstm_81/strided_slice_1/stack_1:output:06sequential_27/lstm_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_27/lstm_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_27/lstm_81/TensorArrayV2TensorListReserve:sequential_27/lstm_81/TensorArrayV2/element_shape:output:0.sequential_27/lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_27/lstm_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_27/lstm_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_81/transpose:y:0Tsequential_27/lstm_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_27/lstm_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_81/strided_slice_2StridedSlice#sequential_27/lstm_81/transpose:y:04sequential_27/lstm_81/strided_slice_2/stack:output:06sequential_27/lstm_81/strided_slice_2/stack_1:output:06sequential_27/lstm_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
9sequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOpReadVariableOpBsequential_27_lstm_81_lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*sequential_27/lstm_81/lstm_cell_189/MatMulMatMul.sequential_27/lstm_81/strided_slice_2:output:0Asequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOpDsequential_27_lstm_81_lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_27/lstm_81/lstm_cell_189/MatMul_1MatMul$sequential_27/lstm_81/zeros:output:0Csequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_27/lstm_81/lstm_cell_189/addAddV24sequential_27/lstm_81/lstm_cell_189/MatMul:product:06sequential_27/lstm_81/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOpCsequential_27_lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_27/lstm_81/lstm_cell_189/BiasAddBiasAdd+sequential_27/lstm_81/lstm_cell_189/add:z:0Bsequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_27/lstm_81/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_27/lstm_81/lstm_cell_189/splitSplit<sequential_27/lstm_81/lstm_cell_189/split/split_dim:output:04sequential_27/lstm_81/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
+sequential_27/lstm_81/lstm_cell_189/SigmoidSigmoid2sequential_27/lstm_81/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
-sequential_27/lstm_81/lstm_cell_189/Sigmoid_1Sigmoid2sequential_27/lstm_81/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
'sequential_27/lstm_81/lstm_cell_189/mulMul1sequential_27/lstm_81/lstm_cell_189/Sigmoid_1:y:0&sequential_27/lstm_81/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
(sequential_27/lstm_81/lstm_cell_189/ReluRelu2sequential_27/lstm_81/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
)sequential_27/lstm_81/lstm_cell_189/mul_1Mul/sequential_27/lstm_81/lstm_cell_189/Sigmoid:y:06sequential_27/lstm_81/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential_27/lstm_81/lstm_cell_189/add_1AddV2+sequential_27/lstm_81/lstm_cell_189/mul:z:0-sequential_27/lstm_81/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
-sequential_27/lstm_81/lstm_cell_189/Sigmoid_2Sigmoid2sequential_27/lstm_81/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������d�
*sequential_27/lstm_81/lstm_cell_189/Relu_1Relu-sequential_27/lstm_81/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_27/lstm_81/lstm_cell_189/mul_2Mul1sequential_27/lstm_81/lstm_cell_189/Sigmoid_2:y:08sequential_27/lstm_81/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3sequential_27/lstm_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
%sequential_27/lstm_81/TensorArrayV2_1TensorListReserve<sequential_27/lstm_81/TensorArrayV2_1/element_shape:output:0.sequential_27/lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_27/lstm_81/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_27/lstm_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_27/lstm_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_27/lstm_81/whileWhile1sequential_27/lstm_81/while/loop_counter:output:07sequential_27/lstm_81/while/maximum_iterations:output:0#sequential_27/lstm_81/time:output:0.sequential_27/lstm_81/TensorArrayV2_1:handle:0$sequential_27/lstm_81/zeros:output:0&sequential_27/lstm_81/zeros_1:output:0.sequential_27/lstm_81/strided_slice_1:output:0Msequential_27/lstm_81/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_27_lstm_81_lstm_cell_189_matmul_readvariableop_resourceDsequential_27_lstm_81_lstm_cell_189_matmul_1_readvariableop_resourceCsequential_27_lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
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
(sequential_27_lstm_81_while_body_1154767*4
cond,R*
(sequential_27_lstm_81_while_cond_1154766*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Fsequential_27/lstm_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
8sequential_27/lstm_81/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_81/while:output:3Osequential_27/lstm_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0~
+sequential_27/lstm_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_27/lstm_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_81/strided_slice_3StridedSliceAsequential_27/lstm_81/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_81/strided_slice_3/stack:output:06sequential_27/lstm_81/strided_slice_3/stack_1:output:06sequential_27/lstm_81/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask{
&sequential_27/lstm_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_27/lstm_81/transpose_1	TransposeAsequential_27/lstm_81/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_81/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dq
sequential_27/lstm_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_27/lstm_82/ShapeShape%sequential_27/lstm_81/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_27/lstm_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_27/lstm_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_27/lstm_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_27/lstm_82/strided_sliceStridedSlice$sequential_27/lstm_82/Shape:output:02sequential_27/lstm_82/strided_slice/stack:output:04sequential_27/lstm_82/strided_slice/stack_1:output:04sequential_27/lstm_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_27/lstm_82/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_27/lstm_82/zeros/packedPack,sequential_27/lstm_82/strided_slice:output:0-sequential_27/lstm_82/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_27/lstm_82/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_82/zerosFill+sequential_27/lstm_82/zeros/packed:output:0*sequential_27/lstm_82/zeros/Const:output:0*
T0*'
_output_shapes
:���������2h
&sequential_27/lstm_82/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_27/lstm_82/zeros_1/packedPack,sequential_27/lstm_82/strided_slice:output:0/sequential_27/lstm_82/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_27/lstm_82/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_82/zeros_1Fill-sequential_27/lstm_82/zeros_1/packed:output:0,sequential_27/lstm_82/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2y
$sequential_27/lstm_82/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_27/lstm_82/transpose	Transpose%sequential_27/lstm_81/transpose_1:y:0-sequential_27/lstm_82/transpose/perm:output:0*
T0*+
_output_shapes
:���������dp
sequential_27/lstm_82/Shape_1Shape#sequential_27/lstm_82/transpose:y:0*
T0*
_output_shapes
:u
+sequential_27/lstm_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_82/strided_slice_1StridedSlice&sequential_27/lstm_82/Shape_1:output:04sequential_27/lstm_82/strided_slice_1/stack:output:06sequential_27/lstm_82/strided_slice_1/stack_1:output:06sequential_27/lstm_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_27/lstm_82/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_27/lstm_82/TensorArrayV2TensorListReserve:sequential_27/lstm_82/TensorArrayV2/element_shape:output:0.sequential_27/lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_27/lstm_82/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
=sequential_27/lstm_82/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_82/transpose:y:0Tsequential_27/lstm_82/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_27/lstm_82/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_82/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_82/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_82/strided_slice_2StridedSlice#sequential_27/lstm_82/transpose:y:04sequential_27/lstm_82/strided_slice_2/stack:output:06sequential_27/lstm_82/strided_slice_2/stack_1:output:06sequential_27/lstm_82/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
9sequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOpReadVariableOpBsequential_27_lstm_82_lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
*sequential_27/lstm_82/lstm_cell_190/MatMulMatMul.sequential_27/lstm_82/strided_slice_2:output:0Asequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOpDsequential_27_lstm_82_lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
,sequential_27/lstm_82/lstm_cell_190/MatMul_1MatMul$sequential_27/lstm_82/zeros:output:0Csequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_27/lstm_82/lstm_cell_190/addAddV24sequential_27/lstm_82/lstm_cell_190/MatMul:product:06sequential_27/lstm_82/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOpCsequential_27_lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_27/lstm_82/lstm_cell_190/BiasAddBiasAdd+sequential_27/lstm_82/lstm_cell_190/add:z:0Bsequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_27/lstm_82/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_27/lstm_82/lstm_cell_190/splitSplit<sequential_27/lstm_82/lstm_cell_190/split/split_dim:output:04sequential_27/lstm_82/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
+sequential_27/lstm_82/lstm_cell_190/SigmoidSigmoid2sequential_27/lstm_82/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
-sequential_27/lstm_82/lstm_cell_190/Sigmoid_1Sigmoid2sequential_27/lstm_82/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
'sequential_27/lstm_82/lstm_cell_190/mulMul1sequential_27/lstm_82/lstm_cell_190/Sigmoid_1:y:0&sequential_27/lstm_82/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
(sequential_27/lstm_82/lstm_cell_190/ReluRelu2sequential_27/lstm_82/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
)sequential_27/lstm_82/lstm_cell_190/mul_1Mul/sequential_27/lstm_82/lstm_cell_190/Sigmoid:y:06sequential_27/lstm_82/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
)sequential_27/lstm_82/lstm_cell_190/add_1AddV2+sequential_27/lstm_82/lstm_cell_190/mul:z:0-sequential_27/lstm_82/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_27/lstm_82/lstm_cell_190/Sigmoid_2Sigmoid2sequential_27/lstm_82/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2�
*sequential_27/lstm_82/lstm_cell_190/Relu_1Relu-sequential_27/lstm_82/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
)sequential_27/lstm_82/lstm_cell_190/mul_2Mul1sequential_27/lstm_82/lstm_cell_190/Sigmoid_2:y:08sequential_27/lstm_82/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3sequential_27/lstm_82/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
%sequential_27/lstm_82/TensorArrayV2_1TensorListReserve<sequential_27/lstm_82/TensorArrayV2_1/element_shape:output:0.sequential_27/lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_27/lstm_82/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_27/lstm_82/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_27/lstm_82/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_27/lstm_82/whileWhile1sequential_27/lstm_82/while/loop_counter:output:07sequential_27/lstm_82/while/maximum_iterations:output:0#sequential_27/lstm_82/time:output:0.sequential_27/lstm_82/TensorArrayV2_1:handle:0$sequential_27/lstm_82/zeros:output:0&sequential_27/lstm_82/zeros_1:output:0.sequential_27/lstm_82/strided_slice_1:output:0Msequential_27/lstm_82/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_27_lstm_82_lstm_cell_190_matmul_readvariableop_resourceDsequential_27_lstm_82_lstm_cell_190_matmul_1_readvariableop_resourceCsequential_27_lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
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
(sequential_27_lstm_82_while_body_1154906*4
cond,R*
(sequential_27_lstm_82_while_cond_1154905*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Fsequential_27/lstm_82/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
8sequential_27/lstm_82/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_82/while:output:3Osequential_27/lstm_82/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0~
+sequential_27/lstm_82/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_27/lstm_82/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_82/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_82/strided_slice_3StridedSliceAsequential_27/lstm_82/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_82/strided_slice_3/stack:output:06sequential_27/lstm_82/strided_slice_3/stack_1:output:06sequential_27/lstm_82/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask{
&sequential_27/lstm_82/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_27/lstm_82/transpose_1	TransposeAsequential_27/lstm_82/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_82/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_27/lstm_82/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_27/lstm_83/ShapeShape%sequential_27/lstm_82/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_27/lstm_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_27/lstm_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_27/lstm_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_27/lstm_83/strided_sliceStridedSlice$sequential_27/lstm_83/Shape:output:02sequential_27/lstm_83/strided_slice/stack:output:04sequential_27/lstm_83/strided_slice/stack_1:output:04sequential_27/lstm_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_27/lstm_83/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"sequential_27/lstm_83/zeros/packedPack,sequential_27/lstm_83/strided_slice:output:0-sequential_27/lstm_83/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_27/lstm_83/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_83/zerosFill+sequential_27/lstm_83/zeros/packed:output:0*sequential_27/lstm_83/zeros/Const:output:0*
T0*'
_output_shapes
:���������
h
&sequential_27/lstm_83/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_27/lstm_83/zeros_1/packedPack,sequential_27/lstm_83/strided_slice:output:0/sequential_27/lstm_83/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_27/lstm_83/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_27/lstm_83/zeros_1Fill-sequential_27/lstm_83/zeros_1/packed:output:0,sequential_27/lstm_83/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
y
$sequential_27/lstm_83/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_27/lstm_83/transpose	Transpose%sequential_27/lstm_82/transpose_1:y:0-sequential_27/lstm_83/transpose/perm:output:0*
T0*+
_output_shapes
:���������2p
sequential_27/lstm_83/Shape_1Shape#sequential_27/lstm_83/transpose:y:0*
T0*
_output_shapes
:u
+sequential_27/lstm_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_83/strided_slice_1StridedSlice&sequential_27/lstm_83/Shape_1:output:04sequential_27/lstm_83/strided_slice_1/stack:output:06sequential_27/lstm_83/strided_slice_1/stack_1:output:06sequential_27/lstm_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_27/lstm_83/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_27/lstm_83/TensorArrayV2TensorListReserve:sequential_27/lstm_83/TensorArrayV2/element_shape:output:0.sequential_27/lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_27/lstm_83/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
=sequential_27/lstm_83/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_83/transpose:y:0Tsequential_27/lstm_83/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_27/lstm_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_83/strided_slice_2StridedSlice#sequential_27/lstm_83/transpose:y:04sequential_27/lstm_83/strided_slice_2/stack:output:06sequential_27/lstm_83/strided_slice_2/stack_1:output:06sequential_27/lstm_83/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
9sequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOpReadVariableOpBsequential_27_lstm_83_lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
*sequential_27/lstm_83/lstm_cell_191/MatMulMatMul.sequential_27/lstm_83/strided_slice_2:output:0Asequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;sequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOpDsequential_27_lstm_83_lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
,sequential_27/lstm_83/lstm_cell_191/MatMul_1MatMul$sequential_27/lstm_83/zeros:output:0Csequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
'sequential_27/lstm_83/lstm_cell_191/addAddV24sequential_27/lstm_83/lstm_cell_191/MatMul:product:06sequential_27/lstm_83/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
:sequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOpCsequential_27_lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
+sequential_27/lstm_83/lstm_cell_191/BiasAddBiasAdd+sequential_27/lstm_83/lstm_cell_191/add:z:0Bsequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(u
3sequential_27/lstm_83/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_27/lstm_83/lstm_cell_191/splitSplit<sequential_27/lstm_83/lstm_cell_191/split/split_dim:output:04sequential_27/lstm_83/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
+sequential_27/lstm_83/lstm_cell_191/SigmoidSigmoid2sequential_27/lstm_83/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
-sequential_27/lstm_83/lstm_cell_191/Sigmoid_1Sigmoid2sequential_27/lstm_83/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
'sequential_27/lstm_83/lstm_cell_191/mulMul1sequential_27/lstm_83/lstm_cell_191/Sigmoid_1:y:0&sequential_27/lstm_83/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
(sequential_27/lstm_83/lstm_cell_191/ReluRelu2sequential_27/lstm_83/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
)sequential_27/lstm_83/lstm_cell_191/mul_1Mul/sequential_27/lstm_83/lstm_cell_191/Sigmoid:y:06sequential_27/lstm_83/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
)sequential_27/lstm_83/lstm_cell_191/add_1AddV2+sequential_27/lstm_83/lstm_cell_191/mul:z:0-sequential_27/lstm_83/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_27/lstm_83/lstm_cell_191/Sigmoid_2Sigmoid2sequential_27/lstm_83/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
�
*sequential_27/lstm_83/lstm_cell_191/Relu_1Relu-sequential_27/lstm_83/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
)sequential_27/lstm_83/lstm_cell_191/mul_2Mul1sequential_27/lstm_83/lstm_cell_191/Sigmoid_2:y:08sequential_27/lstm_83/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3sequential_27/lstm_83/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
%sequential_27/lstm_83/TensorArrayV2_1TensorListReserve<sequential_27/lstm_83/TensorArrayV2_1/element_shape:output:0.sequential_27/lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_27/lstm_83/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_27/lstm_83/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_27/lstm_83/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_27/lstm_83/whileWhile1sequential_27/lstm_83/while/loop_counter:output:07sequential_27/lstm_83/while/maximum_iterations:output:0#sequential_27/lstm_83/time:output:0.sequential_27/lstm_83/TensorArrayV2_1:handle:0$sequential_27/lstm_83/zeros:output:0&sequential_27/lstm_83/zeros_1:output:0.sequential_27/lstm_83/strided_slice_1:output:0Msequential_27/lstm_83/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_27_lstm_83_lstm_cell_191_matmul_readvariableop_resourceDsequential_27_lstm_83_lstm_cell_191_matmul_1_readvariableop_resourceCsequential_27_lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
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
(sequential_27_lstm_83_while_body_1155045*4
cond,R*
(sequential_27_lstm_83_while_cond_1155044*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Fsequential_27/lstm_83/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
8sequential_27/lstm_83/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_83/while:output:3Osequential_27/lstm_83/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0~
+sequential_27/lstm_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_27/lstm_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_27/lstm_83/strided_slice_3StridedSliceAsequential_27/lstm_83/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_83/strided_slice_3/stack:output:06sequential_27/lstm_83/strided_slice_3/stack_1:output:06sequential_27/lstm_83/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask{
&sequential_27/lstm_83/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_27/lstm_83/transpose_1	TransposeAsequential_27/lstm_83/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_83/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
q
sequential_27/lstm_83/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_27/dense_27/MatMulMatMul.sequential_27/lstm_83/strided_slice_3:output:04sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_27/dense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp;^sequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp:^sequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOp<^sequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp^sequential_27/lstm_81/while;^sequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp:^sequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOp<^sequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp^sequential_27/lstm_82/while;^sequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp:^sequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOp<^sequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp^sequential_27/lstm_83/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp2x
:sequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp:sequential_27/lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp2v
9sequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOp9sequential_27/lstm_81/lstm_cell_189/MatMul/ReadVariableOp2z
;sequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp;sequential_27/lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp2:
sequential_27/lstm_81/whilesequential_27/lstm_81/while2x
:sequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp:sequential_27/lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp2v
9sequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOp9sequential_27/lstm_82/lstm_cell_190/MatMul/ReadVariableOp2z
;sequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp;sequential_27/lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp2:
sequential_27/lstm_82/whilesequential_27/lstm_82/while2x
:sequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp:sequential_27/lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp2v
9sequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOp9sequential_27/lstm_83/lstm_cell_191/MatMul/ReadVariableOp2z
;sequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp;sequential_27/lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp2:
sequential_27/lstm_83/whilesequential_27/lstm_83/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_81_input
�J
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159392

inputs?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1159308*
condR
while_cond_1159307*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�#
�
while_body_1156107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_191_1156131_0:2(/
while_lstm_cell_191_1156133_0:
(+
while_lstm_cell_191_1156135_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_191_1156131:2(-
while_lstm_cell_191_1156133:
()
while_lstm_cell_191_1156135:(��+while/lstm_cell_191/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_191/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_191_1156131_0while_lstm_cell_191_1156133_0while_lstm_cell_191_1156135_0*
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1156048�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_191/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_191/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_191/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_191_1156131while_lstm_cell_191_1156131_0"<
while_lstm_cell_191_1156133while_lstm_cell_191_1156133_0"<
while_lstm_cell_191_1156135while_lstm_cell_191_1156135_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_191/StatefulPartitionedCall+while/lstm_cell_191/StatefulPartitionedCall: 
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
�J
�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159535

inputs?
,lstm_cell_190_matmul_readvariableop_resource:	d�A
.lstm_cell_190_matmul_1_readvariableop_resource:	2�<
-lstm_cell_190_biasadd_readvariableop_resource:	�
identity��$lstm_cell_190/BiasAdd/ReadVariableOp�#lstm_cell_190/MatMul/ReadVariableOp�%lstm_cell_190/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_190/MatMul/ReadVariableOpReadVariableOp,lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_190/MatMulMatMulstrided_slice_2:output:0+lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_190/MatMul_1MatMulzeros:output:0-lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_190/addAddV2lstm_cell_190/MatMul:product:0 lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_190/BiasAddBiasAddlstm_cell_190/add:z:0,lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_190/splitSplit&lstm_cell_190/split/split_dim:output:0lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_190/SigmoidSigmoidlstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_1Sigmoidlstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_190/mulMullstm_cell_190/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_190/ReluRelulstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_1Mullstm_cell_190/Sigmoid:y:0 lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_190/add_1AddV2lstm_cell_190/mul:z:0lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_190/Sigmoid_2Sigmoidlstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_190/Relu_1Relulstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_190/mul_2Mullstm_cell_190/Sigmoid_2:y:0"lstm_cell_190/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_190_matmul_readvariableop_resource.lstm_cell_190_matmul_1_readvariableop_resource-lstm_cell_190_biasadd_readvariableop_resource*
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
while_body_1159451*
condR
while_cond_1159450*K
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
NoOpNoOp%^lstm_cell_190/BiasAdd/ReadVariableOp$^lstm_cell_190/MatMul/ReadVariableOp&^lstm_cell_190/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_190/BiasAdd/ReadVariableOp$lstm_cell_190/BiasAdd/ReadVariableOp2J
#lstm_cell_190/MatMul/ReadVariableOp#lstm_cell_190/MatMul/ReadVariableOp2N
%lstm_cell_190/MatMul_1/ReadVariableOp%lstm_cell_190/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_1156400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155202

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
�V
�
 __inference__traced_save_1160607
file_prefix.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_81_lstm_cell_81_kernel_read_readvariableopD
@savev2_lstm_81_lstm_cell_81_recurrent_kernel_read_readvariableop8
4savev2_lstm_81_lstm_cell_81_bias_read_readvariableop:
6savev2_lstm_82_lstm_cell_82_kernel_read_readvariableopD
@savev2_lstm_82_lstm_cell_82_recurrent_kernel_read_readvariableop8
4savev2_lstm_82_lstm_cell_82_bias_read_readvariableop:
6savev2_lstm_83_lstm_cell_83_kernel_read_readvariableopD
@savev2_lstm_83_lstm_cell_83_recurrent_kernel_read_readvariableop8
4savev2_lstm_83_lstm_cell_83_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableopA
=savev2_adam_lstm_81_lstm_cell_81_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_81_lstm_cell_81_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_81_lstm_cell_81_bias_m_read_readvariableopA
=savev2_adam_lstm_82_lstm_cell_82_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_82_lstm_cell_82_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_82_lstm_cell_82_bias_m_read_readvariableopA
=savev2_adam_lstm_83_lstm_cell_83_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_83_lstm_cell_83_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_83_lstm_cell_83_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableopA
=savev2_adam_lstm_81_lstm_cell_81_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_81_lstm_cell_81_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_81_lstm_cell_81_bias_v_read_readvariableopA
=savev2_adam_lstm_82_lstm_cell_82_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_82_lstm_cell_82_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_82_lstm_cell_82_bias_v_read_readvariableopA
=savev2_adam_lstm_83_lstm_cell_83_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_83_lstm_cell_83_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_83_lstm_cell_83_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_81_lstm_cell_81_kernel_read_readvariableop@savev2_lstm_81_lstm_cell_81_recurrent_kernel_read_readvariableop4savev2_lstm_81_lstm_cell_81_bias_read_readvariableop6savev2_lstm_82_lstm_cell_82_kernel_read_readvariableop@savev2_lstm_82_lstm_cell_82_recurrent_kernel_read_readvariableop4savev2_lstm_82_lstm_cell_82_bias_read_readvariableop6savev2_lstm_83_lstm_cell_83_kernel_read_readvariableop@savev2_lstm_83_lstm_cell_83_recurrent_kernel_read_readvariableop4savev2_lstm_83_lstm_cell_83_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop=savev2_adam_lstm_81_lstm_cell_81_kernel_m_read_readvariableopGsavev2_adam_lstm_81_lstm_cell_81_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_81_lstm_cell_81_bias_m_read_readvariableop=savev2_adam_lstm_82_lstm_cell_82_kernel_m_read_readvariableopGsavev2_adam_lstm_82_lstm_cell_82_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_82_lstm_cell_82_bias_m_read_readvariableop=savev2_adam_lstm_83_lstm_cell_83_kernel_m_read_readvariableopGsavev2_adam_lstm_83_lstm_cell_83_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_83_lstm_cell_83_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop=savev2_adam_lstm_81_lstm_cell_81_kernel_v_read_readvariableopGsavev2_adam_lstm_81_lstm_cell_81_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_81_lstm_cell_81_bias_v_read_readvariableop=savev2_adam_lstm_82_lstm_cell_82_kernel_v_read_readvariableopGsavev2_adam_lstm_82_lstm_cell_82_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_82_lstm_cell_82_bias_v_read_readvariableop=savev2_adam_lstm_83_lstm_cell_83_kernel_v_read_readvariableopGsavev2_adam_lstm_83_lstm_cell_83_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_83_lstm_cell_83_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
while_cond_1155565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1155565___redundant_placeholder05
1while_while_cond_1155565___redundant_placeholder15
1while_while_cond_1155565___redundant_placeholder25
1while_while_cond_1155565___redundant_placeholder3
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160366

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
�#
�
while_body_1155916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_191_1155940_0:2(/
while_lstm_cell_191_1155942_0:
(+
while_lstm_cell_191_1155944_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_191_1155940:2(-
while_lstm_cell_191_1155942:
()
while_lstm_cell_191_1155944:(��+while/lstm_cell_191/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_191/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_191_1155940_0while_lstm_cell_191_1155942_0while_lstm_cell_191_1155944_0*
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1155902�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_191/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_191/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_191/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_191_1155940while_lstm_cell_191_1155940_0"<
while_lstm_cell_191_1155942while_lstm_cell_191_1155942_0"<
while_lstm_cell_191_1155944while_lstm_cell_191_1155944_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_191/StatefulPartitionedCall+while/lstm_cell_191/StatefulPartitionedCall: 
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

�
/__inference_sequential_27_layer_call_fn_1157449

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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157248o
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
�

�
lstm_83_while_cond_1158212,
(lstm_83_while_lstm_83_while_loop_counter2
.lstm_83_while_lstm_83_while_maximum_iterations
lstm_83_while_placeholder
lstm_83_while_placeholder_1
lstm_83_while_placeholder_2
lstm_83_while_placeholder_3.
*lstm_83_while_less_lstm_83_strided_slice_1E
Alstm_83_while_lstm_83_while_cond_1158212___redundant_placeholder0E
Alstm_83_while_lstm_83_while_cond_1158212___redundant_placeholder1E
Alstm_83_while_lstm_83_while_cond_1158212___redundant_placeholder2E
Alstm_83_while_lstm_83_while_cond_1158212___redundant_placeholder3
lstm_83_while_identity
�
lstm_83/while/LessLesslstm_83_while_placeholder*lstm_83_while_less_lstm_83_strided_slice_1*
T0*
_output_shapes
: [
lstm_83/while/IdentityIdentitylstm_83/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_83_while_identitylstm_83/while/Identity:output:0*(
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
while_cond_1157095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1157095___redundant_placeholder05
1while_while_cond_1157095___redundant_placeholder15
1while_while_cond_1157095___redundant_placeholder25
1while_while_cond_1157095___redundant_placeholder3
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
while_cond_1156106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156106___redundant_placeholder05
1while_while_cond_1156106___redundant_placeholder15
1while_while_cond_1156106___redundant_placeholder25
1while_while_cond_1156106___redundant_placeholder3
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159722
inputs_0>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1159638*
condR
while_cond_1159637*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160236

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
�
�
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157248

inputs"
lstm_81_1157221:	�"
lstm_81_1157223:	d�
lstm_81_1157225:	�"
lstm_82_1157228:	d�"
lstm_82_1157230:	2�
lstm_82_1157232:	�!
lstm_83_1157235:2(!
lstm_83_1157237:
(
lstm_83_1157239:("
dense_27_1157242:

dense_27_1157244:
identity�� dense_27/StatefulPartitionedCall�lstm_81/StatefulPartitionedCall�lstm_82/StatefulPartitionedCall�lstm_83/StatefulPartitionedCall�
lstm_81/StatefulPartitionedCallStatefulPartitionedCallinputslstm_81_1157221lstm_81_1157223lstm_81_1157225*
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1157180�
lstm_82/StatefulPartitionedCallStatefulPartitionedCall(lstm_81/StatefulPartitionedCall:output:0lstm_82_1157228lstm_82_1157230lstm_82_1157232*
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1157015�
lstm_83/StatefulPartitionedCallStatefulPartitionedCall(lstm_82/StatefulPartitionedCall:output:0lstm_83_1157235lstm_83_1157237lstm_83_1157239*
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156850�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_83/StatefulPartitionedCall:output:0dense_27_1157242dense_27_1157244*
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1156652x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_27/StatefulPartitionedCall ^lstm_81/StatefulPartitionedCall ^lstm_82/StatefulPartitionedCall ^lstm_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2B
lstm_81/StatefulPartitionedCalllstm_81/StatefulPartitionedCall2B
lstm_82/StatefulPartitionedCalllstm_82/StatefulPartitionedCall2B
lstm_83/StatefulPartitionedCalllstm_83/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160008

inputs>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1159924*
condR
while_cond_1159923*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
/__inference_sequential_27_layer_call_fn_1156684
lstm_81_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1156659o
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
_user_specified_namelstm_81_input
�K
�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159865
inputs_0>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1159781*
condR
while_cond_1159780*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_1156549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156549___redundant_placeholder05
1while_while_cond_1156549___redundant_placeholder15
1while_while_cond_1156549___redundant_placeholder25
1while_while_cond_1156549___redundant_placeholder3
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
while_cond_1156399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1156399___redundant_placeholder05
1while_while_cond_1156399___redundant_placeholder15
1while_while_cond_1156399___redundant_placeholder25
1while_while_cond_1156399___redundant_placeholder3
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
�
while_cond_1155215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1155215___redundant_placeholder05
1while_while_cond_1155215___redundant_placeholder15
1while_while_cond_1155215___redundant_placeholder25
1while_while_cond_1155215___redundant_placeholder3
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
�
�
/__inference_lstm_cell_190_layer_call_fn_1160302

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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155698o
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
��
�
J__inference_sequential_27_layer_call_and_return_conditional_losses_1158303

inputsG
4lstm_81_lstm_cell_189_matmul_readvariableop_resource:	�I
6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource:	d�D
5lstm_81_lstm_cell_189_biasadd_readvariableop_resource:	�G
4lstm_82_lstm_cell_190_matmul_readvariableop_resource:	d�I
6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource:	2�D
5lstm_82_lstm_cell_190_biasadd_readvariableop_resource:	�F
4lstm_83_lstm_cell_191_matmul_readvariableop_resource:2(H
6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource:
(C
5lstm_83_lstm_cell_191_biasadd_readvariableop_resource:(9
'dense_27_matmul_readvariableop_resource:
6
(dense_27_biasadd_readvariableop_resource:
identity��dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp�+lstm_81/lstm_cell_189/MatMul/ReadVariableOp�-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp�lstm_81/while�,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp�+lstm_82/lstm_cell_190/MatMul/ReadVariableOp�-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp�lstm_82/while�,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp�+lstm_83/lstm_cell_191/MatMul/ReadVariableOp�-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp�lstm_83/whileC
lstm_81/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_sliceStridedSlicelstm_81/Shape:output:0$lstm_81/strided_slice/stack:output:0&lstm_81/strided_slice/stack_1:output:0&lstm_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_81/zeros/packedPacklstm_81/strided_slice:output:0lstm_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_81/zerosFilllstm_81/zeros/packed:output:0lstm_81/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_81/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_81/zeros_1/packedPacklstm_81/strided_slice:output:0!lstm_81/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_81/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_81/zeros_1Filllstm_81/zeros_1/packed:output:0lstm_81/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_81/transpose	Transposeinputslstm_81/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_81/Shape_1Shapelstm_81/transpose:y:0*
T0*
_output_shapes
:g
lstm_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_1StridedSlicelstm_81/Shape_1:output:0&lstm_81/strided_slice_1/stack:output:0(lstm_81/strided_slice_1/stack_1:output:0(lstm_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_81/TensorArrayV2TensorListReserve,lstm_81/TensorArrayV2/element_shape:output:0 lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_81/transpose:y:0Flstm_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_2StridedSlicelstm_81/transpose:y:0&lstm_81/strided_slice_2/stack:output:0(lstm_81/strided_slice_2/stack_1:output:0(lstm_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_81/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4lstm_81_lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_81/lstm_cell_189/MatMulMatMul lstm_81/strided_slice_2:output:03lstm_81/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_81/lstm_cell_189/MatMul_1MatMullstm_81/zeros:output:05lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_81/lstm_cell_189/addAddV2&lstm_81/lstm_cell_189/MatMul:product:0(lstm_81/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_81/lstm_cell_189/BiasAddBiasAddlstm_81/lstm_cell_189/add:z:04lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_81/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_81/lstm_cell_189/splitSplit.lstm_81/lstm_cell_189/split/split_dim:output:0&lstm_81/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_81/lstm_cell_189/SigmoidSigmoid$lstm_81/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/Sigmoid_1Sigmoid$lstm_81/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mulMul#lstm_81/lstm_cell_189/Sigmoid_1:y:0lstm_81/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_81/lstm_cell_189/ReluRelu$lstm_81/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mul_1Mul!lstm_81/lstm_cell_189/Sigmoid:y:0(lstm_81/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/add_1AddV2lstm_81/lstm_cell_189/mul:z:0lstm_81/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/Sigmoid_2Sigmoid$lstm_81/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_81/lstm_cell_189/Relu_1Relulstm_81/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_81/lstm_cell_189/mul_2Mul#lstm_81/lstm_cell_189/Sigmoid_2:y:0*lstm_81/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_81/TensorArrayV2_1TensorListReserve.lstm_81/TensorArrayV2_1/element_shape:output:0 lstm_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_81/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_81/whileWhile#lstm_81/while/loop_counter:output:0)lstm_81/while/maximum_iterations:output:0lstm_81/time:output:0 lstm_81/TensorArrayV2_1:handle:0lstm_81/zeros:output:0lstm_81/zeros_1:output:0 lstm_81/strided_slice_1:output:0?lstm_81/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_81_lstm_cell_189_matmul_readvariableop_resource6lstm_81_lstm_cell_189_matmul_1_readvariableop_resource5lstm_81_lstm_cell_189_biasadd_readvariableop_resource*
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
lstm_81_while_body_1157935*&
condR
lstm_81_while_cond_1157934*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_81/TensorArrayV2Stack/TensorListStackTensorListStacklstm_81/while:output:3Alstm_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_81/strided_slice_3StridedSlice3lstm_81/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_81/strided_slice_3/stack:output:0(lstm_81/strided_slice_3/stack_1:output:0(lstm_81/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_81/transpose_1	Transpose3lstm_81/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_81/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_82/ShapeShapelstm_81/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_sliceStridedSlicelstm_82/Shape:output:0$lstm_82/strided_slice/stack:output:0&lstm_82/strided_slice/stack_1:output:0&lstm_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_82/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_82/zeros/packedPacklstm_82/strided_slice:output:0lstm_82/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_82/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_82/zerosFilllstm_82/zeros/packed:output:0lstm_82/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_82/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_82/zeros_1/packedPacklstm_82/strided_slice:output:0!lstm_82/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_82/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_82/zeros_1Filllstm_82/zeros_1/packed:output:0lstm_82/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_82/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_82/transpose	Transposelstm_81/transpose_1:y:0lstm_82/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_82/Shape_1Shapelstm_82/transpose:y:0*
T0*
_output_shapes
:g
lstm_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_1StridedSlicelstm_82/Shape_1:output:0&lstm_82/strided_slice_1/stack:output:0(lstm_82/strided_slice_1/stack_1:output:0(lstm_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_82/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_82/TensorArrayV2TensorListReserve,lstm_82/TensorArrayV2/element_shape:output:0 lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_82/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_82/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_82/transpose:y:0Flstm_82/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_82/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_82/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_2StridedSlicelstm_82/transpose:y:0&lstm_82/strided_slice_2/stack:output:0(lstm_82/strided_slice_2/stack_1:output:0(lstm_82/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_82/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4lstm_82_lstm_cell_190_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_82/lstm_cell_190/MatMulMatMul lstm_82/strided_slice_2:output:03lstm_82/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_82/lstm_cell_190/MatMul_1MatMullstm_82/zeros:output:05lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_82/lstm_cell_190/addAddV2&lstm_82/lstm_cell_190/MatMul:product:0(lstm_82/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_82/lstm_cell_190/BiasAddBiasAddlstm_82/lstm_cell_190/add:z:04lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_82/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_82/lstm_cell_190/splitSplit.lstm_82/lstm_cell_190/split/split_dim:output:0&lstm_82/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_82/lstm_cell_190/SigmoidSigmoid$lstm_82/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/Sigmoid_1Sigmoid$lstm_82/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mulMul#lstm_82/lstm_cell_190/Sigmoid_1:y:0lstm_82/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_82/lstm_cell_190/ReluRelu$lstm_82/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mul_1Mul!lstm_82/lstm_cell_190/Sigmoid:y:0(lstm_82/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/add_1AddV2lstm_82/lstm_cell_190/mul:z:0lstm_82/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/Sigmoid_2Sigmoid$lstm_82/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_82/lstm_cell_190/Relu_1Relulstm_82/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_82/lstm_cell_190/mul_2Mul#lstm_82/lstm_cell_190/Sigmoid_2:y:0*lstm_82/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_82/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_82/TensorArrayV2_1TensorListReserve.lstm_82/TensorArrayV2_1/element_shape:output:0 lstm_82/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_82/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_82/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_82/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_82/whileWhile#lstm_82/while/loop_counter:output:0)lstm_82/while/maximum_iterations:output:0lstm_82/time:output:0 lstm_82/TensorArrayV2_1:handle:0lstm_82/zeros:output:0lstm_82/zeros_1:output:0 lstm_82/strided_slice_1:output:0?lstm_82/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_82_lstm_cell_190_matmul_readvariableop_resource6lstm_82_lstm_cell_190_matmul_1_readvariableop_resource5lstm_82_lstm_cell_190_biasadd_readvariableop_resource*
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
lstm_82_while_body_1158074*&
condR
lstm_82_while_cond_1158073*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_82/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_82/TensorArrayV2Stack/TensorListStackTensorListStacklstm_82/while:output:3Alstm_82/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_82/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_82/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_82/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_82/strided_slice_3StridedSlice3lstm_82/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_82/strided_slice_3/stack:output:0(lstm_82/strided_slice_3/stack_1:output:0(lstm_82/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_82/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_82/transpose_1	Transpose3lstm_82/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_82/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_82/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_83/ShapeShapelstm_82/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_sliceStridedSlicelstm_83/Shape:output:0$lstm_83/strided_slice/stack:output:0&lstm_83/strided_slice/stack_1:output:0&lstm_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_83/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_83/zeros/packedPacklstm_83/strided_slice:output:0lstm_83/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_83/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_83/zerosFilllstm_83/zeros/packed:output:0lstm_83/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_83/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_83/zeros_1/packedPacklstm_83/strided_slice:output:0!lstm_83/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_83/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_83/zeros_1Filllstm_83/zeros_1/packed:output:0lstm_83/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_83/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_83/transpose	Transposelstm_82/transpose_1:y:0lstm_83/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_83/Shape_1Shapelstm_83/transpose:y:0*
T0*
_output_shapes
:g
lstm_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_1StridedSlicelstm_83/Shape_1:output:0&lstm_83/strided_slice_1/stack:output:0(lstm_83/strided_slice_1/stack_1:output:0(lstm_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_83/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_83/TensorArrayV2TensorListReserve,lstm_83/TensorArrayV2/element_shape:output:0 lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_83/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_83/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_83/transpose:y:0Flstm_83/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_2StridedSlicelstm_83/transpose:y:0&lstm_83/strided_slice_2/stack:output:0(lstm_83/strided_slice_2/stack_1:output:0(lstm_83/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_83/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4lstm_83_lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_83/lstm_cell_191/MatMulMatMul lstm_83/strided_slice_2:output:03lstm_83/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_83/lstm_cell_191/MatMul_1MatMullstm_83/zeros:output:05lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_83/lstm_cell_191/addAddV2&lstm_83/lstm_cell_191/MatMul:product:0(lstm_83/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_83/lstm_cell_191/BiasAddBiasAddlstm_83/lstm_cell_191/add:z:04lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_83/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_83/lstm_cell_191/splitSplit.lstm_83/lstm_cell_191/split/split_dim:output:0&lstm_83/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_83/lstm_cell_191/SigmoidSigmoid$lstm_83/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/Sigmoid_1Sigmoid$lstm_83/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mulMul#lstm_83/lstm_cell_191/Sigmoid_1:y:0lstm_83/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_83/lstm_cell_191/ReluRelu$lstm_83/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mul_1Mul!lstm_83/lstm_cell_191/Sigmoid:y:0(lstm_83/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/add_1AddV2lstm_83/lstm_cell_191/mul:z:0lstm_83/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/Sigmoid_2Sigmoid$lstm_83/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_83/lstm_cell_191/Relu_1Relulstm_83/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_83/lstm_cell_191/mul_2Mul#lstm_83/lstm_cell_191/Sigmoid_2:y:0*lstm_83/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_83/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_83/TensorArrayV2_1TensorListReserve.lstm_83/TensorArrayV2_1/element_shape:output:0 lstm_83/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_83/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_83/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_83/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_83/whileWhile#lstm_83/while/loop_counter:output:0)lstm_83/while/maximum_iterations:output:0lstm_83/time:output:0 lstm_83/TensorArrayV2_1:handle:0lstm_83/zeros:output:0lstm_83/zeros_1:output:0 lstm_83/strided_slice_1:output:0?lstm_83/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_83_lstm_cell_191_matmul_readvariableop_resource6lstm_83_lstm_cell_191_matmul_1_readvariableop_resource5lstm_83_lstm_cell_191_biasadd_readvariableop_resource*
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
lstm_83_while_body_1158213*&
condR
lstm_83_while_cond_1158212*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_83/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_83/TensorArrayV2Stack/TensorListStackTensorListStacklstm_83/while:output:3Alstm_83/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_83/strided_slice_3StridedSlice3lstm_83/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_83/strided_slice_3/stack:output:0(lstm_83/strided_slice_3/stack_1:output:0(lstm_83/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_83/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_83/transpose_1	Transpose3lstm_83/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_83/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_83/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_27/MatMulMatMul lstm_83/strided_slice_3:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp-^lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp,^lstm_81/lstm_cell_189/MatMul/ReadVariableOp.^lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp^lstm_81/while-^lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp,^lstm_82/lstm_cell_190/MatMul/ReadVariableOp.^lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp^lstm_82/while-^lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp,^lstm_83/lstm_cell_191/MatMul/ReadVariableOp.^lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp^lstm_83/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2\
,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp,lstm_81/lstm_cell_189/BiasAdd/ReadVariableOp2Z
+lstm_81/lstm_cell_189/MatMul/ReadVariableOp+lstm_81/lstm_cell_189/MatMul/ReadVariableOp2^
-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp-lstm_81/lstm_cell_189/MatMul_1/ReadVariableOp2
lstm_81/whilelstm_81/while2\
,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp,lstm_82/lstm_cell_190/BiasAdd/ReadVariableOp2Z
+lstm_82/lstm_cell_190/MatMul/ReadVariableOp+lstm_82/lstm_cell_190/MatMul/ReadVariableOp2^
-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp-lstm_82/lstm_cell_190/MatMul_1/ReadVariableOp2
lstm_82/whilelstm_82/while2\
,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp,lstm_83/lstm_cell_191/BiasAdd/ReadVariableOp2Z
+lstm_83/lstm_cell_191/MatMul/ReadVariableOp+lstm_83/lstm_cell_191/MatMul/ReadVariableOp2^
-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp-lstm_83/lstm_cell_191/MatMul_1/ReadVariableOp2
lstm_83/whilelstm_83/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1158548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1158548___redundant_placeholder05
1while_while_cond_1158548___redundant_placeholder15
1while_while_cond_1158548___redundant_placeholder25
1while_while_cond_1158548___redundant_placeholder3
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
�
�
/__inference_lstm_cell_190_layer_call_fn_1160285

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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1155552o
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
�
�
while_cond_1159307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159307___redundant_placeholder05
1while_while_cond_1159307___redundant_placeholder15
1while_while_cond_1159307___redundant_placeholder25
1while_while_cond_1159307___redundant_placeholder3
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
�K
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158633
inputs_0?
,lstm_cell_189_matmul_readvariableop_resource:	�A
.lstm_cell_189_matmul_1_readvariableop_resource:	d�<
-lstm_cell_189_biasadd_readvariableop_resource:	�
identity��$lstm_cell_189/BiasAdd/ReadVariableOp�#lstm_cell_189/MatMul/ReadVariableOp�%lstm_cell_189/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_189/MatMul/ReadVariableOpReadVariableOp,lstm_cell_189_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_189/MatMulMatMulstrided_slice_2:output:0+lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_189_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_189/MatMul_1MatMulzeros:output:0-lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_189/addAddV2lstm_cell_189/MatMul:product:0 lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_189_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_189/BiasAddBiasAddlstm_cell_189/add:z:0,lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_189/splitSplit&lstm_cell_189/split/split_dim:output:0lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_189/SigmoidSigmoidlstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_1Sigmoidlstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_189/mulMullstm_cell_189/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_189/ReluRelulstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_1Mullstm_cell_189/Sigmoid:y:0 lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_189/add_1AddV2lstm_cell_189/mul:z:0lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_189/Sigmoid_2Sigmoidlstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_189/Relu_1Relulstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_189/mul_2Mullstm_cell_189/Sigmoid_2:y:0"lstm_cell_189/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_189_matmul_readvariableop_resource.lstm_cell_189_matmul_1_readvariableop_resource-lstm_cell_189_biasadd_readvariableop_resource*
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
while_body_1158549*
condR
while_cond_1158548*K
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
NoOpNoOp%^lstm_cell_189/BiasAdd/ReadVariableOp$^lstm_cell_189/MatMul/ReadVariableOp&^lstm_cell_189/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_189/BiasAdd/ReadVariableOp$lstm_cell_189/BiasAdd/ReadVariableOp2J
#lstm_cell_189/MatMul/ReadVariableOp#lstm_cell_189/MatMul/ReadVariableOp2N
%lstm_cell_189/MatMul_1/ReadVariableOp%lstm_cell_189/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160334

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
while_cond_1160066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1160066___redundant_placeholder05
1while_while_cond_1160066___redundant_placeholder15
1while_while_cond_1160066___redundant_placeholder25
1while_while_cond_1160066___redundant_placeholder3
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
�B
�

lstm_82_while_body_1157647,
(lstm_82_while_lstm_82_while_loop_counter2
.lstm_82_while_lstm_82_while_maximum_iterations
lstm_82_while_placeholder
lstm_82_while_placeholder_1
lstm_82_while_placeholder_2
lstm_82_while_placeholder_3+
'lstm_82_while_lstm_82_strided_slice_1_0g
clstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0:	d�Q
>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�L
=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
lstm_82_while_identity
lstm_82_while_identity_1
lstm_82_while_identity_2
lstm_82_while_identity_3
lstm_82_while_identity_4
lstm_82_while_identity_5)
%lstm_82_while_lstm_82_strided_slice_1e
alstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensorM
:lstm_82_while_lstm_cell_190_matmul_readvariableop_resource:	d�O
<lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource:	2�J
;lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource:	���2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp�1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp�3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp�
?lstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_82/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0lstm_82_while_placeholderHlstm_82/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_82/while/lstm_cell_190/MatMulMatMul8lstm_82/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_82/while/lstm_cell_190/MatMul_1MatMullstm_82_while_placeholder_2;lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_82/while/lstm_cell_190/addAddV2,lstm_82/while/lstm_cell_190/MatMul:product:0.lstm_82/while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_82/while/lstm_cell_190/BiasAddBiasAdd#lstm_82/while/lstm_cell_190/add:z:0:lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_82/while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_82/while/lstm_cell_190/splitSplit4lstm_82/while/lstm_cell_190/split/split_dim:output:0,lstm_82/while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_82/while/lstm_cell_190/SigmoidSigmoid*lstm_82/while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_82/while/lstm_cell_190/Sigmoid_1Sigmoid*lstm_82/while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_82/while/lstm_cell_190/mulMul)lstm_82/while/lstm_cell_190/Sigmoid_1:y:0lstm_82_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_82/while/lstm_cell_190/ReluRelu*lstm_82/while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/mul_1Mul'lstm_82/while/lstm_cell_190/Sigmoid:y:0.lstm_82/while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/add_1AddV2#lstm_82/while/lstm_cell_190/mul:z:0%lstm_82/while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_82/while/lstm_cell_190/Sigmoid_2Sigmoid*lstm_82/while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_82/while/lstm_cell_190/Relu_1Relu%lstm_82/while/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_82/while/lstm_cell_190/mul_2Mul)lstm_82/while/lstm_cell_190/Sigmoid_2:y:00lstm_82/while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_82/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_82_while_placeholder_1lstm_82_while_placeholder%lstm_82/while/lstm_cell_190/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_82/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_82/while/addAddV2lstm_82_while_placeholderlstm_82/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_82/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_82/while/add_1AddV2(lstm_82_while_lstm_82_while_loop_counterlstm_82/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_82/while/IdentityIdentitylstm_82/while/add_1:z:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_1Identity.lstm_82_while_lstm_82_while_maximum_iterations^lstm_82/while/NoOp*
T0*
_output_shapes
: q
lstm_82/while/Identity_2Identitylstm_82/while/add:z:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_3IdentityBlstm_82/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_82/while/NoOp*
T0*
_output_shapes
: �
lstm_82/while/Identity_4Identity%lstm_82/while/lstm_cell_190/mul_2:z:0^lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_82/while/Identity_5Identity%lstm_82/while/lstm_cell_190/add_1:z:0^lstm_82/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_82/while/NoOpNoOp3^lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2^lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp4^lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_82_while_identitylstm_82/while/Identity:output:0"=
lstm_82_while_identity_1!lstm_82/while/Identity_1:output:0"=
lstm_82_while_identity_2!lstm_82/while/Identity_2:output:0"=
lstm_82_while_identity_3!lstm_82/while/Identity_3:output:0"=
lstm_82_while_identity_4!lstm_82/while/Identity_4:output:0"=
lstm_82_while_identity_5!lstm_82/while/Identity_5:output:0"P
%lstm_82_while_lstm_82_strided_slice_1'lstm_82_while_lstm_82_strided_slice_1_0"|
;lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource=lstm_82_while_lstm_cell_190_biasadd_readvariableop_resource_0"~
<lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource>lstm_82_while_lstm_cell_190_matmul_1_readvariableop_resource_0"z
:lstm_82_while_lstm_cell_190_matmul_readvariableop_resource<lstm_82_while_lstm_cell_190_matmul_readvariableop_resource_0"�
alstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensorclstm_82_while_tensorarrayv2read_tensorlistgetitem_lstm_82_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2lstm_82/while/lstm_cell_190/BiasAdd/ReadVariableOp2f
1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp1lstm_82/while/lstm_cell_190/MatMul/ReadVariableOp2j
3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp3lstm_82/while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1160170

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
�8
�
while_body_1159638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_191_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_191_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_191_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_191_matmul_readvariableop_resource:2(F
4while_lstm_cell_191_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_191_biasadd_readvariableop_resource:(��*while/lstm_cell_191/BiasAdd/ReadVariableOp�)while/lstm_cell_191/MatMul/ReadVariableOp�+while/lstm_cell_191/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_191/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_191_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_191/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_191_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_191/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_191/addAddV2$while/lstm_cell_191/MatMul:product:0&while/lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_191_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_191/BiasAddBiasAddwhile/lstm_cell_191/add:z:02while/lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_191/splitSplit,while/lstm_cell_191/split/split_dim:output:0$while/lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_191/SigmoidSigmoid"while/lstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_1Sigmoid"while/lstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mulMul!while/lstm_cell_191/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_191/ReluRelu"while/lstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_1Mulwhile/lstm_cell_191/Sigmoid:y:0&while/lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/add_1AddV2while/lstm_cell_191/mul:z:0while/lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_191/Sigmoid_2Sigmoid"while/lstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_191/Relu_1Reluwhile/lstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_191/mul_2Mul!while/lstm_cell_191/Sigmoid_2:y:0(while/lstm_cell_191/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_191/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_191/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_191/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_191/BiasAdd/ReadVariableOp*^while/lstm_cell_191/MatMul/ReadVariableOp,^while/lstm_cell_191/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_191_biasadd_readvariableop_resource5while_lstm_cell_191_biasadd_readvariableop_resource_0"n
4while_lstm_cell_191_matmul_1_readvariableop_resource6while_lstm_cell_191_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_191_matmul_readvariableop_resource4while_lstm_cell_191_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_191/BiasAdd/ReadVariableOp*while/lstm_cell_191/BiasAdd/ReadVariableOp2V
)while/lstm_cell_191/MatMul/ReadVariableOp)while/lstm_cell_191/MatMul/ReadVariableOp2Z
+while/lstm_cell_191/MatMul_1/ReadVariableOp+while/lstm_cell_191/MatMul_1/ReadVariableOp: 
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
lstm_82_while_cond_1158073,
(lstm_82_while_lstm_82_while_loop_counter2
.lstm_82_while_lstm_82_while_maximum_iterations
lstm_82_while_placeholder
lstm_82_while_placeholder_1
lstm_82_while_placeholder_2
lstm_82_while_placeholder_3.
*lstm_82_while_less_lstm_82_strided_slice_1E
Alstm_82_while_lstm_82_while_cond_1158073___redundant_placeholder0E
Alstm_82_while_lstm_82_while_cond_1158073___redundant_placeholder1E
Alstm_82_while_lstm_82_while_cond_1158073___redundant_placeholder2E
Alstm_82_while_lstm_82_while_cond_1158073___redundant_placeholder3
lstm_82_while_identity
�
lstm_82/while/LessLesslstm_82_while_placeholder*lstm_82_while_less_lstm_82_strided_slice_1*
T0*
_output_shapes
: [
lstm_82/while/IdentityIdentitylstm_82/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_82_while_identitylstm_82/while/Identity:output:0*(
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
lstm_82_while_cond_1157646,
(lstm_82_while_lstm_82_while_loop_counter2
.lstm_82_while_lstm_82_while_maximum_iterations
lstm_82_while_placeholder
lstm_82_while_placeholder_1
lstm_82_while_placeholder_2
lstm_82_while_placeholder_3.
*lstm_82_while_less_lstm_82_strided_slice_1E
Alstm_82_while_lstm_82_while_cond_1157646___redundant_placeholder0E
Alstm_82_while_lstm_82_while_cond_1157646___redundant_placeholder1E
Alstm_82_while_lstm_82_while_cond_1157646___redundant_placeholder2E
Alstm_82_while_lstm_82_while_cond_1157646___redundant_placeholder3
lstm_82_while_identity
�
lstm_82/while/LessLesslstm_82_while_placeholder*lstm_82_while_less_lstm_82_strided_slice_1*
T0*
_output_shapes
: [
lstm_82/while/IdentityIdentitylstm_82/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_82_while_identitylstm_82/while/Identity:output:0*(
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
while_body_1159022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
�8
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1155476

inputs(
lstm_cell_189_1155394:	�(
lstm_cell_189_1155396:	d�$
lstm_cell_189_1155398:	�
identity��%lstm_cell_189/StatefulPartitionedCall�while;
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
%lstm_cell_189/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_189_1155394lstm_cell_189_1155396lstm_cell_189_1155398*
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155348n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_189_1155394lstm_cell_189_1155396lstm_cell_189_1155398*
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
while_body_1155407*
condR
while_cond_1155406*K
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
NoOpNoOp&^lstm_cell_189/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_189/StatefulPartitionedCall%lstm_cell_189/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_1159308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_190_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_190_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_190_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_190_matmul_readvariableop_resource:	d�G
4while_lstm_cell_190_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_190_biasadd_readvariableop_resource:	���*while/lstm_cell_190/BiasAdd/ReadVariableOp�)while/lstm_cell_190/MatMul/ReadVariableOp�+while/lstm_cell_190/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_190/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_190_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_190/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_190/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_190/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_190_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_190/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_190/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_190/addAddV2$while/lstm_cell_190/MatMul:product:0&while/lstm_cell_190/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_190/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_190_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_190/BiasAddBiasAddwhile/lstm_cell_190/add:z:02while/lstm_cell_190/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_190/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_190/splitSplit,while/lstm_cell_190/split/split_dim:output:0$while/lstm_cell_190/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_190/SigmoidSigmoid"while/lstm_cell_190/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_1Sigmoid"while/lstm_cell_190/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mulMul!while/lstm_cell_190/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_190/ReluRelu"while/lstm_cell_190/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_1Mulwhile/lstm_cell_190/Sigmoid:y:0&while/lstm_cell_190/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/add_1AddV2while/lstm_cell_190/mul:z:0while/lstm_cell_190/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_190/Sigmoid_2Sigmoid"while/lstm_cell_190/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_190/Relu_1Reluwhile/lstm_cell_190/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_190/mul_2Mul!while/lstm_cell_190/Sigmoid_2:y:0(while/lstm_cell_190/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_190/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_190/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_190/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_190/BiasAdd/ReadVariableOp*^while/lstm_cell_190/MatMul/ReadVariableOp,^while/lstm_cell_190/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_190_biasadd_readvariableop_resource5while_lstm_cell_190_biasadd_readvariableop_resource_0"n
4while_lstm_cell_190_matmul_1_readvariableop_resource6while_lstm_cell_190_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_190_matmul_readvariableop_resource4while_lstm_cell_190_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_190/BiasAdd/ReadVariableOp*while/lstm_cell_190/BiasAdd/ReadVariableOp2V
)while/lstm_cell_190/MatMul/ReadVariableOp)while/lstm_cell_190/MatMul/ReadVariableOp2Z
+while/lstm_cell_190/MatMul_1/ReadVariableOp+while/lstm_cell_190/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_191_layer_call_fn_1160400

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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1156048o
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
�
D__inference_lstm_81_layer_call_and_return_conditional_losses_1155285

inputs(
lstm_cell_189_1155203:	�(
lstm_cell_189_1155205:	d�$
lstm_cell_189_1155207:	�
identity��%lstm_cell_189/StatefulPartitionedCall�while;
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
%lstm_cell_189/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_189_1155203lstm_cell_189_1155205lstm_cell_189_1155207*
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1155202n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_189_1155203lstm_cell_189_1155205lstm_cell_189_1155207*
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
while_body_1155216*
condR
while_cond_1155215*K
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
NoOpNoOp&^lstm_cell_189/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_189/StatefulPartitionedCall%lstm_cell_189/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_1158835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
while_cond_1158405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1158405___redundant_placeholder05
1while_while_cond_1158405___redundant_placeholder15
1while_while_cond_1158405___redundant_placeholder25
1while_while_cond_1158405___redundant_placeholder3
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
)__inference_lstm_82_layer_call_fn_1158952

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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1156484s
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
while_body_1158406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_189_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_189_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_189_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_189_matmul_readvariableop_resource:	�G
4while_lstm_cell_189_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_189_biasadd_readvariableop_resource:	���*while/lstm_cell_189/BiasAdd/ReadVariableOp�)while/lstm_cell_189/MatMul/ReadVariableOp�+while/lstm_cell_189/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_189/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_189_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_189/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_189/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_189/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_189_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_189/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_189/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_189/addAddV2$while/lstm_cell_189/MatMul:product:0&while/lstm_cell_189/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_189/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_189_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_189/BiasAddBiasAddwhile/lstm_cell_189/add:z:02while/lstm_cell_189/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_189/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_189/splitSplit,while/lstm_cell_189/split/split_dim:output:0$while/lstm_cell_189/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_189/SigmoidSigmoid"while/lstm_cell_189/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_1Sigmoid"while/lstm_cell_189/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mulMul!while/lstm_cell_189/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_189/ReluRelu"while/lstm_cell_189/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_1Mulwhile/lstm_cell_189/Sigmoid:y:0&while/lstm_cell_189/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/add_1AddV2while/lstm_cell_189/mul:z:0while/lstm_cell_189/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_189/Sigmoid_2Sigmoid"while/lstm_cell_189/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_189/Relu_1Reluwhile/lstm_cell_189/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_189/mul_2Mul!while/lstm_cell_189/Sigmoid_2:y:0(while/lstm_cell_189/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_189/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_189/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_189/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_189/BiasAdd/ReadVariableOp*^while/lstm_cell_189/MatMul/ReadVariableOp,^while/lstm_cell_189/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_189_biasadd_readvariableop_resource5while_lstm_cell_189_biasadd_readvariableop_resource_0"n
4while_lstm_cell_189_matmul_1_readvariableop_resource6while_lstm_cell_189_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_189_matmul_readvariableop_resource4while_lstm_cell_189_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_189/BiasAdd/ReadVariableOp*while/lstm_cell_189/BiasAdd/ReadVariableOp2V
)while/lstm_cell_189/MatMul/ReadVariableOp)while/lstm_cell_189/MatMul/ReadVariableOp2Z
+while/lstm_cell_189/MatMul_1/ReadVariableOp+while/lstm_cell_189/MatMul_1/ReadVariableOp: 
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
while_cond_1159450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1159450___redundant_placeholder05
1while_while_cond_1159450___redundant_placeholder15
1while_while_cond_1159450___redundant_placeholder25
1while_while_cond_1159450___redundant_placeholder3
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1156850

inputs>
,lstm_cell_191_matmul_readvariableop_resource:2(@
.lstm_cell_191_matmul_1_readvariableop_resource:
(;
-lstm_cell_191_biasadd_readvariableop_resource:(
identity��$lstm_cell_191/BiasAdd/ReadVariableOp�#lstm_cell_191/MatMul/ReadVariableOp�%lstm_cell_191/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_191/MatMul/ReadVariableOpReadVariableOp,lstm_cell_191_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_191/MatMulMatMulstrided_slice_2:output:0+lstm_cell_191/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_191/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_191_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_191/MatMul_1MatMulzeros:output:0-lstm_cell_191/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_191/addAddV2lstm_cell_191/MatMul:product:0 lstm_cell_191/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_191/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_191_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_191/BiasAddBiasAddlstm_cell_191/add:z:0,lstm_cell_191/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_191/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_191/splitSplit&lstm_cell_191/split/split_dim:output:0lstm_cell_191/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_191/SigmoidSigmoidlstm_cell_191/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_1Sigmoidlstm_cell_191/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_191/mulMullstm_cell_191/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_191/ReluRelulstm_cell_191/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_1Mullstm_cell_191/Sigmoid:y:0 lstm_cell_191/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_191/add_1AddV2lstm_cell_191/mul:z:0lstm_cell_191/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_191/Sigmoid_2Sigmoidlstm_cell_191/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_191/Relu_1Relulstm_cell_191/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_191/mul_2Mullstm_cell_191/Sigmoid_2:y:0"lstm_cell_191/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_191_matmul_readvariableop_resource.lstm_cell_191_matmul_1_readvariableop_resource-lstm_cell_191_biasadd_readvariableop_resource*
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
while_body_1156766*
condR
while_cond_1156765*K
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
NoOpNoOp%^lstm_cell_191/BiasAdd/ReadVariableOp$^lstm_cell_191/MatMul/ReadVariableOp&^lstm_cell_191/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_191/BiasAdd/ReadVariableOp$lstm_cell_191/BiasAdd/ReadVariableOp2J
#lstm_cell_191/MatMul/ReadVariableOp#lstm_cell_191/MatMul/ReadVariableOp2N
%lstm_cell_191/MatMul_1/ReadVariableOp%lstm_cell_191/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_81_input:
serving_default_lstm_81_input:0���������<
dense_270
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
2dense_27/kernel
:2dense_27/bias
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
.:,	�2lstm_81/lstm_cell_81/kernel
8:6	d�2%lstm_81/lstm_cell_81/recurrent_kernel
(:&�2lstm_81/lstm_cell_81/bias
.:,	d�2lstm_82/lstm_cell_82/kernel
8:6	2�2%lstm_82/lstm_cell_82/recurrent_kernel
(:&�2lstm_82/lstm_cell_82/bias
-:+2(2lstm_83/lstm_cell_83/kernel
7:5
(2%lstm_83/lstm_cell_83/recurrent_kernel
':%(2lstm_83/lstm_cell_83/bias
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
2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
3:1	�2"Adam/lstm_81/lstm_cell_81/kernel/m
=:;	d�2,Adam/lstm_81/lstm_cell_81/recurrent_kernel/m
-:+�2 Adam/lstm_81/lstm_cell_81/bias/m
3:1	d�2"Adam/lstm_82/lstm_cell_82/kernel/m
=:;	2�2,Adam/lstm_82/lstm_cell_82/recurrent_kernel/m
-:+�2 Adam/lstm_82/lstm_cell_82/bias/m
2:02(2"Adam/lstm_83/lstm_cell_83/kernel/m
<::
(2,Adam/lstm_83/lstm_cell_83/recurrent_kernel/m
,:*(2 Adam/lstm_83/lstm_cell_83/bias/m
&:$
2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
3:1	�2"Adam/lstm_81/lstm_cell_81/kernel/v
=:;	d�2,Adam/lstm_81/lstm_cell_81/recurrent_kernel/v
-:+�2 Adam/lstm_81/lstm_cell_81/bias/v
3:1	d�2"Adam/lstm_82/lstm_cell_82/kernel/v
=:;	2�2,Adam/lstm_82/lstm_cell_82/recurrent_kernel/v
-:+�2 Adam/lstm_82/lstm_cell_82/bias/v
2:02(2"Adam/lstm_83/lstm_cell_83/kernel/v
<::
(2,Adam/lstm_83/lstm_cell_83/recurrent_kernel/v
,:*(2 Adam/lstm_83/lstm_cell_83/bias/v
�2�
/__inference_sequential_27_layer_call_fn_1156684
/__inference_sequential_27_layer_call_fn_1157422
/__inference_sequential_27_layer_call_fn_1157449
/__inference_sequential_27_layer_call_fn_1157300�
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157876
J__inference_sequential_27_layer_call_and_return_conditional_losses_1158303
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157330
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157360�
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
"__inference__wrapped_model_1155135lstm_81_input"�
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
)__inference_lstm_81_layer_call_fn_1158314
)__inference_lstm_81_layer_call_fn_1158325
)__inference_lstm_81_layer_call_fn_1158336
)__inference_lstm_81_layer_call_fn_1158347�
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158490
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158633
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158776
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158919�
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
)__inference_lstm_82_layer_call_fn_1158930
)__inference_lstm_82_layer_call_fn_1158941
)__inference_lstm_82_layer_call_fn_1158952
)__inference_lstm_82_layer_call_fn_1158963�
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159106
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159249
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159392
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159535�
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
)__inference_lstm_83_layer_call_fn_1159546
)__inference_lstm_83_layer_call_fn_1159557
)__inference_lstm_83_layer_call_fn_1159568
)__inference_lstm_83_layer_call_fn_1159579�
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159722
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159865
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160008
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160151�
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
*__inference_dense_27_layer_call_fn_1160160�
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
E__inference_dense_27_layer_call_and_return_conditional_losses_1160170�
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
%__inference_signature_wrapper_1157395lstm_81_input"�
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
/__inference_lstm_cell_189_layer_call_fn_1160187
/__inference_lstm_cell_189_layer_call_fn_1160204�
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160236
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160268�
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
/__inference_lstm_cell_190_layer_call_fn_1160285
/__inference_lstm_cell_190_layer_call_fn_1160302�
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160334
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160366�
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
/__inference_lstm_cell_191_layer_call_fn_1160383
/__inference_lstm_cell_191_layer_call_fn_1160400�
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160432
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160464�
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
"__inference__wrapped_model_1155135~-./012345!":�7
0�-
+�(
lstm_81_input���������
� "3�0
.
dense_27"�
dense_27����������
E__inference_dense_27_layer_call_and_return_conditional_losses_1160170\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_27_layer_call_fn_1160160O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158490�-./O�L
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158633�-./O�L
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158776q-./?�<
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
D__inference_lstm_81_layer_call_and_return_conditional_losses_1158919q-./?�<
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
)__inference_lstm_81_layer_call_fn_1158314}-./O�L
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
)__inference_lstm_81_layer_call_fn_1158325}-./O�L
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
)__inference_lstm_81_layer_call_fn_1158336d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_81_layer_call_fn_1158347d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159106�012O�L
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159249�012O�L
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159392q012?�<
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
D__inference_lstm_82_layer_call_and_return_conditional_losses_1159535q012?�<
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
)__inference_lstm_82_layer_call_fn_1158930}012O�L
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
)__inference_lstm_82_layer_call_fn_1158941}012O�L
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
)__inference_lstm_82_layer_call_fn_1158952d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_82_layer_call_fn_1158963d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159722}345O�L
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1159865}345O�L
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160008m345?�<
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
D__inference_lstm_83_layer_call_and_return_conditional_losses_1160151m345?�<
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
)__inference_lstm_83_layer_call_fn_1159546p345O�L
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
)__inference_lstm_83_layer_call_fn_1159557p345O�L
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
)__inference_lstm_83_layer_call_fn_1159568`345?�<
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
)__inference_lstm_83_layer_call_fn_1159579`345?�<
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160236�-./��}
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
J__inference_lstm_cell_189_layer_call_and_return_conditional_losses_1160268�-./��}
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
/__inference_lstm_cell_189_layer_call_fn_1160187�-./��}
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
/__inference_lstm_cell_189_layer_call_fn_1160204�-./��}
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160334�012��}
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
J__inference_lstm_cell_190_layer_call_and_return_conditional_losses_1160366�012��}
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
/__inference_lstm_cell_190_layer_call_fn_1160285�012��}
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
/__inference_lstm_cell_190_layer_call_fn_1160302�012��}
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160432�345��}
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
J__inference_lstm_cell_191_layer_call_and_return_conditional_losses_1160464�345��}
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
/__inference_lstm_cell_191_layer_call_fn_1160383�345��}
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
/__inference_lstm_cell_191_layer_call_fn_1160400�345��}
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157330x-./012345!"B�?
8�5
+�(
lstm_81_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157360x-./012345!"B�?
8�5
+�(
lstm_81_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_27_layer_call_and_return_conditional_losses_1157876q-./012345!";�8
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_1158303q-./012345!";�8
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
/__inference_sequential_27_layer_call_fn_1156684k-./012345!"B�?
8�5
+�(
lstm_81_input���������
p 

 
� "�����������
/__inference_sequential_27_layer_call_fn_1157300k-./012345!"B�?
8�5
+�(
lstm_81_input���������
p

 
� "�����������
/__inference_sequential_27_layer_call_fn_1157422d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_27_layer_call_fn_1157449d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_1157395�-./012345!"K�H
� 
A�>
<
lstm_81_input+�(
lstm_81_input���������"3�0
.
dense_27"�
dense_27���������