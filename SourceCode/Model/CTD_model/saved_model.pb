��.
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��,
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:
*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
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
lstm_30/lstm_cell_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_30/lstm_cell_30/kernel
�
/lstm_30/lstm_cell_30/kernel/Read/ReadVariableOpReadVariableOplstm_30/lstm_cell_30/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_30/lstm_cell_30/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*6
shared_name'%lstm_30/lstm_cell_30/recurrent_kernel
�
9lstm_30/lstm_cell_30/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_30/lstm_cell_30/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_30/lstm_cell_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_30/lstm_cell_30/bias
�
-lstm_30/lstm_cell_30/bias/Read/ReadVariableOpReadVariableOplstm_30/lstm_cell_30/bias*
_output_shapes	
:�*
dtype0
�
lstm_31/lstm_cell_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*,
shared_namelstm_31/lstm_cell_31/kernel
�
/lstm_31/lstm_cell_31/kernel/Read/ReadVariableOpReadVariableOplstm_31/lstm_cell_31/kernel*
_output_shapes
:	d�*
dtype0
�
%lstm_31/lstm_cell_31/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%lstm_31/lstm_cell_31/recurrent_kernel
�
9lstm_31/lstm_cell_31/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_31/lstm_cell_31/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_31/lstm_cell_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_31/lstm_cell_31/bias
�
-lstm_31/lstm_cell_31/bias/Read/ReadVariableOpReadVariableOplstm_31/lstm_cell_31/bias*
_output_shapes	
:�*
dtype0
�
lstm_32/lstm_cell_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_32/lstm_cell_32/kernel
�
/lstm_32/lstm_cell_32/kernel/Read/ReadVariableOpReadVariableOplstm_32/lstm_cell_32/kernel*
_output_shapes

:2(*
dtype0
�
%lstm_32/lstm_cell_32/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_32/lstm_cell_32/recurrent_kernel
�
9lstm_32/lstm_cell_32/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_32/lstm_cell_32/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_32/lstm_cell_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_32/lstm_cell_32/bias
�
-lstm_32/lstm_cell_32/bias/Read/ReadVariableOpReadVariableOplstm_32/lstm_cell_32/bias*
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
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_10/kernel/m
�
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_30/lstm_cell_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_30/lstm_cell_30/kernel/m
�
6Adam/lstm_30/lstm_cell_30/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_30/lstm_cell_30/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_30/lstm_cell_30/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m
�
@Adam/lstm_30/lstm_cell_30/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_30/lstm_cell_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_30/lstm_cell_30/bias/m
�
4Adam/lstm_30/lstm_cell_30/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_30/lstm_cell_30/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_31/lstm_cell_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_31/lstm_cell_31/kernel/m
�
6Adam/lstm_31/lstm_cell_31/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_31/lstm_cell_31/kernel/m*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_31/lstm_cell_31/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m
�
@Adam/lstm_31/lstm_cell_31/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_31/lstm_cell_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_31/lstm_cell_31/bias/m
�
4Adam/lstm_31/lstm_cell_31/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_31/lstm_cell_31/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_32/lstm_cell_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_32/lstm_cell_32/kernel/m
�
6Adam/lstm_32/lstm_cell_32/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_32/lstm_cell_32/kernel/m*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_32/lstm_cell_32/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_32/lstm_cell_32/recurrent_kernel/m
�
@Adam/lstm_32/lstm_cell_32/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_32/lstm_cell_32/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_32/lstm_cell_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_32/lstm_cell_32/bias/m
�
4Adam/lstm_32/lstm_cell_32/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_32/lstm_cell_32/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_10/kernel/v
�
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_30/lstm_cell_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_30/lstm_cell_30/kernel/v
�
6Adam/lstm_30/lstm_cell_30/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_30/lstm_cell_30/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_30/lstm_cell_30/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v
�
@Adam/lstm_30/lstm_cell_30/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_30/lstm_cell_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_30/lstm_cell_30/bias/v
�
4Adam/lstm_30/lstm_cell_30/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_30/lstm_cell_30/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_31/lstm_cell_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_31/lstm_cell_31/kernel/v
�
6Adam/lstm_31/lstm_cell_31/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_31/lstm_cell_31/kernel/v*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_31/lstm_cell_31/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v
�
@Adam/lstm_31/lstm_cell_31/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_31/lstm_cell_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_31/lstm_cell_31/bias/v
�
4Adam/lstm_31/lstm_cell_31/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_31/lstm_cell_31/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_32/lstm_cell_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_32/lstm_cell_32/kernel/v
�
6Adam/lstm_32/lstm_cell_32/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_32/lstm_cell_32/kernel/v*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_32/lstm_cell_32/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_32/lstm_cell_32/recurrent_kernel/v
�
@Adam/lstm_32/lstm_cell_32/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_32/lstm_cell_32/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_32/lstm_cell_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_32/lstm_cell_32/bias/v
�
4Adam/lstm_32/lstm_cell_32/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_32/lstm_cell_32/bias/v*
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
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_30/lstm_cell_30/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_30/lstm_cell_30/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_30/lstm_cell_30/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_31/lstm_cell_31/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_31/lstm_cell_31/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_31/lstm_cell_31/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_32/lstm_cell_32/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_32/lstm_cell_32/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_32/lstm_cell_32/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_30/lstm_cell_30/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_30/lstm_cell_30/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_30/lstm_cell_30/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_31/lstm_cell_31/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_31/lstm_cell_31/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_31/lstm_cell_31/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_32/lstm_cell_32/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_32/lstm_cell_32/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_32/lstm_cell_32/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_30/lstm_cell_30/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_30/lstm_cell_30/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_30/lstm_cell_30/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_31/lstm_cell_31/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_31/lstm_cell_31/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_31/lstm_cell_31/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_32/lstm_cell_32/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_32/lstm_cell_32/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_32/lstm_cell_32/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_30_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_30_inputlstm_30/lstm_cell_30/kernel%lstm_30/lstm_cell_30/recurrent_kernellstm_30/lstm_cell_30/biaslstm_31/lstm_cell_31/kernel%lstm_31/lstm_cell_31/recurrent_kernellstm_31/lstm_cell_31/biaslstm_32/lstm_cell_32/kernel%lstm_32/lstm_cell_32/recurrent_kernellstm_32/lstm_cell_32/biasdense_10/kerneldense_10/bias*
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
GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_88035
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_30/lstm_cell_30/kernel/Read/ReadVariableOp9lstm_30/lstm_cell_30/recurrent_kernel/Read/ReadVariableOp-lstm_30/lstm_cell_30/bias/Read/ReadVariableOp/lstm_31/lstm_cell_31/kernel/Read/ReadVariableOp9lstm_31/lstm_cell_31/recurrent_kernel/Read/ReadVariableOp-lstm_31/lstm_cell_31/bias/Read/ReadVariableOp/lstm_32/lstm_cell_32/kernel/Read/ReadVariableOp9lstm_32/lstm_cell_32/recurrent_kernel/Read/ReadVariableOp-lstm_32/lstm_cell_32/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp6Adam/lstm_30/lstm_cell_30/kernel/m/Read/ReadVariableOp@Adam/lstm_30/lstm_cell_30/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_30/lstm_cell_30/bias/m/Read/ReadVariableOp6Adam/lstm_31/lstm_cell_31/kernel/m/Read/ReadVariableOp@Adam/lstm_31/lstm_cell_31/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_31/lstm_cell_31/bias/m/Read/ReadVariableOp6Adam/lstm_32/lstm_cell_32/kernel/m/Read/ReadVariableOp@Adam/lstm_32/lstm_cell_32/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_32/lstm_cell_32/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp6Adam/lstm_30/lstm_cell_30/kernel/v/Read/ReadVariableOp@Adam/lstm_30/lstm_cell_30/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_30/lstm_cell_30/bias/v/Read/ReadVariableOp6Adam/lstm_31/lstm_cell_31/kernel/v/Read/ReadVariableOp@Adam/lstm_31/lstm_cell_31/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_31/lstm_cell_31/bias/v/Read/ReadVariableOp6Adam/lstm_32/lstm_cell_32/kernel/v/Read/ReadVariableOp@Adam/lstm_32/lstm_cell_32/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_32/lstm_cell_32/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8� *'
f"R 
__inference__traced_save_91247
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_30/lstm_cell_30/kernel%lstm_30/lstm_cell_30/recurrent_kernellstm_30/lstm_cell_30/biaslstm_31/lstm_cell_31/kernel%lstm_31/lstm_cell_31/recurrent_kernellstm_31/lstm_cell_31/biaslstm_32/lstm_cell_32/kernel%lstm_32/lstm_cell_32/recurrent_kernellstm_32/lstm_cell_32/biastotalcountAdam/dense_10/kernel/mAdam/dense_10/bias/m"Adam/lstm_30/lstm_cell_30/kernel/m,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m Adam/lstm_30/lstm_cell_30/bias/m"Adam/lstm_31/lstm_cell_31/kernel/m,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m Adam/lstm_31/lstm_cell_31/bias/m"Adam/lstm_32/lstm_cell_32/kernel/m,Adam/lstm_32/lstm_cell_32/recurrent_kernel/m Adam/lstm_32/lstm_cell_32/bias/mAdam/dense_10/kernel/vAdam/dense_10/bias/v"Adam/lstm_30/lstm_cell_30/kernel/v,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v Adam/lstm_30/lstm_cell_30/bias/v"Adam/lstm_31/lstm_cell_31/kernel/v,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v Adam/lstm_31/lstm_cell_31/bias/v"Adam/lstm_32/lstm_cell_32/kernel/v,Adam/lstm_32/lstm_cell_32/recurrent_kernel/v Adam/lstm_32/lstm_cell_32/bias/v*4
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_91377��+
�

�
lstm_32_while_cond_88852,
(lstm_32_while_lstm_32_while_loop_counter2
.lstm_32_while_lstm_32_while_maximum_iterations
lstm_32_while_placeholder
lstm_32_while_placeholder_1
lstm_32_while_placeholder_2
lstm_32_while_placeholder_3.
*lstm_32_while_less_lstm_32_strided_slice_1C
?lstm_32_while_lstm_32_while_cond_88852___redundant_placeholder0C
?lstm_32_while_lstm_32_while_cond_88852___redundant_placeholder1C
?lstm_32_while_lstm_32_while_cond_88852___redundant_placeholder2C
?lstm_32_while_lstm_32_while_cond_88852___redundant_placeholder3
lstm_32_while_identity
�
lstm_32/while/LessLesslstm_32_while_placeholder*lstm_32_while_less_lstm_32_strided_slice_1*
T0*
_output_shapes
: [
lstm_32/while/IdentityIdentitylstm_32/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_32_while_identitylstm_32/while/Identity:output:0*(
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
'__inference_lstm_30_layer_call_fn_88965
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_86116|
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
�7
�
while_body_87190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
#__inference_signature_wrapper_88035
lstm_30_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *)
f$R"
 __inference__wrapped_model_85775o
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
_user_specified_namelstm_30_input
�H
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_89416

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_89332*
condR
while_cond_89331*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�@
�

lstm_32_while_body_88426,
(lstm_32_while_lstm_32_while_loop_counter2
.lstm_32_while_lstm_32_while_maximum_iterations
lstm_32_while_placeholder
lstm_32_while_placeholder_1
lstm_32_while_placeholder_2
lstm_32_while_placeholder_3+
'lstm_32_while_lstm_32_strided_slice_1_0g
clstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0:2(N
<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(I
;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0:(
lstm_32_while_identity
lstm_32_while_identity_1
lstm_32_while_identity_2
lstm_32_while_identity_3
lstm_32_while_identity_4
lstm_32_while_identity_5)
%lstm_32_while_lstm_32_strided_slice_1e
alstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensorJ
8lstm_32_while_lstm_cell_2_matmul_readvariableop_resource:2(L
:lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource:
(G
9lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource:(��0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp�/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp�1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp�
?lstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_32/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0lstm_32_while_placeholderHlstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
 lstm_32/while/lstm_cell_2/MatMulMatMul8lstm_32/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
"lstm_32/while/lstm_cell_2/MatMul_1MatMullstm_32_while_placeholder_29lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_32/while/lstm_cell_2/addAddV2*lstm_32/while/lstm_cell_2/MatMul:product:0,lstm_32/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
!lstm_32/while/lstm_cell_2/BiasAddBiasAdd!lstm_32/while/lstm_cell_2/add:z:08lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(k
)lstm_32/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/while/lstm_cell_2/splitSplit2lstm_32/while/lstm_cell_2/split/split_dim:output:0*lstm_32/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
!lstm_32/while/lstm_cell_2/SigmoidSigmoid(lstm_32/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
�
#lstm_32/while/lstm_cell_2/Sigmoid_1Sigmoid(lstm_32/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mulMul'lstm_32/while/lstm_cell_2/Sigmoid_1:y:0lstm_32_while_placeholder_3*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/ReluRelu(lstm_32/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mul_1Mul%lstm_32/while/lstm_cell_2/Sigmoid:y:0,lstm_32/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/add_1AddV2!lstm_32/while/lstm_cell_2/mul:z:0#lstm_32/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
�
#lstm_32/while/lstm_cell_2/Sigmoid_2Sigmoid(lstm_32/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������

 lstm_32/while/lstm_cell_2/Relu_1Relu#lstm_32/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mul_2Mul'lstm_32/while/lstm_cell_2/Sigmoid_2:y:0.lstm_32/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_32/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_32_while_placeholder_1lstm_32_while_placeholder#lstm_32/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_32/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_32/while/addAddV2lstm_32_while_placeholderlstm_32/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_32/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/while/add_1AddV2(lstm_32_while_lstm_32_while_loop_counterlstm_32/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_32/while/IdentityIdentitylstm_32/while/add_1:z:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_1Identity.lstm_32_while_lstm_32_while_maximum_iterations^lstm_32/while/NoOp*
T0*
_output_shapes
: q
lstm_32/while/Identity_2Identitylstm_32/while/add:z:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_3IdentityBlstm_32/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_4Identity#lstm_32/while/lstm_cell_2/mul_2:z:0^lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_32/while/Identity_5Identity#lstm_32/while/lstm_cell_2/add_1:z:0^lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_32/while/NoOpNoOp1^lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp0^lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp2^lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_32_while_identitylstm_32/while/Identity:output:0"=
lstm_32_while_identity_1!lstm_32/while/Identity_1:output:0"=
lstm_32_while_identity_2!lstm_32/while/Identity_2:output:0"=
lstm_32_while_identity_3!lstm_32/while/Identity_3:output:0"=
lstm_32_while_identity_4!lstm_32/while/Identity_4:output:0"=
lstm_32_while_identity_5!lstm_32/while/Identity_5:output:0"P
%lstm_32_while_lstm_32_strided_slice_1'lstm_32_while_lstm_32_strided_slice_1_0"x
9lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0"z
:lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0"v
8lstm_32_while_lstm_cell_2_matmul_readvariableop_resource:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0"�
alstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensorclstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2d
0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp2b
/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp2f
1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
�@
�

lstm_32_while_body_88853,
(lstm_32_while_lstm_32_while_loop_counter2
.lstm_32_while_lstm_32_while_maximum_iterations
lstm_32_while_placeholder
lstm_32_while_placeholder_1
lstm_32_while_placeholder_2
lstm_32_while_placeholder_3+
'lstm_32_while_lstm_32_strided_slice_1_0g
clstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0:2(N
<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(I
;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0:(
lstm_32_while_identity
lstm_32_while_identity_1
lstm_32_while_identity_2
lstm_32_while_identity_3
lstm_32_while_identity_4
lstm_32_while_identity_5)
%lstm_32_while_lstm_32_strided_slice_1e
alstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensorJ
8lstm_32_while_lstm_cell_2_matmul_readvariableop_resource:2(L
:lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource:
(G
9lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource:(��0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp�/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp�1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp�
?lstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_32/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0lstm_32_while_placeholderHlstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
 lstm_32/while/lstm_cell_2/MatMulMatMul8lstm_32/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
"lstm_32/while/lstm_cell_2/MatMul_1MatMullstm_32_while_placeholder_29lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_32/while/lstm_cell_2/addAddV2*lstm_32/while/lstm_cell_2/MatMul:product:0,lstm_32/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
!lstm_32/while/lstm_cell_2/BiasAddBiasAdd!lstm_32/while/lstm_cell_2/add:z:08lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(k
)lstm_32/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/while/lstm_cell_2/splitSplit2lstm_32/while/lstm_cell_2/split/split_dim:output:0*lstm_32/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
!lstm_32/while/lstm_cell_2/SigmoidSigmoid(lstm_32/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
�
#lstm_32/while/lstm_cell_2/Sigmoid_1Sigmoid(lstm_32/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mulMul'lstm_32/while/lstm_cell_2/Sigmoid_1:y:0lstm_32_while_placeholder_3*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/ReluRelu(lstm_32/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mul_1Mul%lstm_32/while/lstm_cell_2/Sigmoid:y:0,lstm_32/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/add_1AddV2!lstm_32/while/lstm_cell_2/mul:z:0#lstm_32/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
�
#lstm_32/while/lstm_cell_2/Sigmoid_2Sigmoid(lstm_32/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������

 lstm_32/while/lstm_cell_2/Relu_1Relu#lstm_32/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_32/while/lstm_cell_2/mul_2Mul'lstm_32/while/lstm_cell_2/Sigmoid_2:y:0.lstm_32/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_32/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_32_while_placeholder_1lstm_32_while_placeholder#lstm_32/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_32/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_32/while/addAddV2lstm_32_while_placeholderlstm_32/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_32/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/while/add_1AddV2(lstm_32_while_lstm_32_while_loop_counterlstm_32/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_32/while/IdentityIdentitylstm_32/while/add_1:z:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_1Identity.lstm_32_while_lstm_32_while_maximum_iterations^lstm_32/while/NoOp*
T0*
_output_shapes
: q
lstm_32/while/Identity_2Identitylstm_32/while/add:z:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_3IdentityBlstm_32/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_32/while/NoOp*
T0*
_output_shapes
: �
lstm_32/while/Identity_4Identity#lstm_32/while/lstm_cell_2/mul_2:z:0^lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_32/while/Identity_5Identity#lstm_32/while/lstm_cell_2/add_1:z:0^lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_32/while/NoOpNoOp1^lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp0^lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp2^lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_32_while_identitylstm_32/while/Identity:output:0"=
lstm_32_while_identity_1!lstm_32/while/Identity_1:output:0"=
lstm_32_while_identity_2!lstm_32/while/Identity_2:output:0"=
lstm_32_while_identity_3!lstm_32/while/Identity_3:output:0"=
lstm_32_while_identity_4!lstm_32/while/Identity_4:output:0"=
lstm_32_while_identity_5!lstm_32/while/Identity_5:output:0"P
%lstm_32_while_lstm_32_strided_slice_1'lstm_32_while_lstm_32_strided_slice_1_0"x
9lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource;lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0"z
:lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource<lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0"v
8lstm_32_while_lstm_cell_2_matmul_readvariableop_resource:lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0"�
alstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensorclstm_32_while_tensorarrayv2read_tensorlistgetitem_lstm_32_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2d
0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp0lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp2b
/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp2f
1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp1lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_31_layer_call_fn_89581
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_86466|
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
�7
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_86116

inputs"
lstm_cell_86034:	�"
lstm_cell_86036:	d�
lstm_cell_86038:	�
identity��!lstm_cell/StatefulPartitionedCall�while;
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
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_86034lstm_cell_86036lstm_cell_86038*
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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85988n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_86034lstm_cell_86036lstm_cell_86038*
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
bodyR
while_body_86047*
condR
while_cond_86046*K
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
 :������������������dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�?
�

lstm_30_while_body_88148,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3+
'lstm_30_while_lstm_30_strided_slice_1_0g
clstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0:	�M
:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0:	d�H
9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0:	�
lstm_30_while_identity
lstm_30_while_identity_1
lstm_30_while_identity_2
lstm_30_while_identity_3
lstm_30_while_identity_4
lstm_30_while_identity_5)
%lstm_30_while_lstm_30_strided_slice_1e
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorI
6lstm_30_while_lstm_cell_matmul_readvariableop_resource:	�K
8lstm_30_while_lstm_cell_matmul_1_readvariableop_resource:	d�F
7lstm_30_while_lstm_cell_biasadd_readvariableop_resource:	���.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp�-lstm_30/while/lstm_cell/MatMul/ReadVariableOp�/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp�
?lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0lstm_30_while_placeholderHlstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-lstm_30/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
lstm_30/while/lstm_cell/MatMulMatMul8lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:05lstm_30/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
 lstm_30/while/lstm_cell/MatMul_1MatMullstm_30_while_placeholder_27lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_30/while/lstm_cell/addAddV2(lstm_30/while/lstm_cell/MatMul:product:0*lstm_30/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
lstm_30/while/lstm_cell/BiasAddBiasAddlstm_30/while/lstm_cell/add:z:06lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
'lstm_30/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/while/lstm_cell/splitSplit0lstm_30/while/lstm_cell/split/split_dim:output:0(lstm_30/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_30/while/lstm_cell/SigmoidSigmoid&lstm_30/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
!lstm_30/while/lstm_cell/Sigmoid_1Sigmoid&lstm_30/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mulMul%lstm_30/while/lstm_cell/Sigmoid_1:y:0lstm_30_while_placeholder_3*
T0*'
_output_shapes
:���������d~
lstm_30/while/lstm_cell/ReluRelu&lstm_30/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mul_1Mul#lstm_30/while/lstm_cell/Sigmoid:y:0*lstm_30/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/add_1AddV2lstm_30/while/lstm_cell/mul:z:0!lstm_30/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_30/while/lstm_cell/Sigmoid_2Sigmoid&lstm_30/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d{
lstm_30/while/lstm_cell/Relu_1Relu!lstm_30/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mul_2Mul%lstm_30/while/lstm_cell/Sigmoid_2:y:0,lstm_30/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_30_while_placeholder_1lstm_30_while_placeholder!lstm_30/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_30/while/addAddV2lstm_30_while_placeholderlstm_30/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/while/add_1AddV2(lstm_30_while_lstm_30_while_loop_counterlstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_30/while/IdentityIdentitylstm_30/while/add_1:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_1Identity.lstm_30_while_lstm_30_while_maximum_iterations^lstm_30/while/NoOp*
T0*
_output_shapes
: q
lstm_30/while/Identity_2Identitylstm_30/while/add:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_3IdentityBlstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_4Identity!lstm_30/while/lstm_cell/mul_2:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_30/while/Identity_5Identity!lstm_30/while/lstm_cell/add_1:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_30/while/NoOpNoOp/^lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp.^lstm_30/while/lstm_cell/MatMul/ReadVariableOp0^lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_30_while_identitylstm_30/while/Identity:output:0"=
lstm_30_while_identity_1!lstm_30/while/Identity_1:output:0"=
lstm_30_while_identity_2!lstm_30/while/Identity_2:output:0"=
lstm_30_while_identity_3!lstm_30/while/Identity_3:output:0"=
lstm_30_while_identity_4!lstm_30/while/Identity_4:output:0"=
lstm_30_while_identity_5!lstm_30/while/Identity_5:output:0"P
%lstm_30_while_lstm_30_strided_slice_1'lstm_30_while_lstm_30_strided_slice_1_0"t
7lstm_30_while_lstm_cell_biasadd_readvariableop_resource9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0"v
8lstm_30_while_lstm_cell_matmul_1_readvariableop_resource:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0"r
6lstm_30_while_lstm_cell_matmul_readvariableop_resource8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0"�
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2`
.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp2^
-lstm_30/while/lstm_cell/MatMul/ReadVariableOp-lstm_30/while/lstm_cell/MatMul/ReadVariableOp2b
/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_31_layer_call_fn_89592

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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87124s
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
�
�
'__inference_lstm_32_layer_call_fn_90208

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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87274o
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
�
�
+__inference_lstm_cell_1_layer_call_fn_90925

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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86192o
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
�
)__inference_lstm_cell_layer_call_fn_90827

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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85842o
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
while_cond_89045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89045___redundant_placeholder03
/while_while_cond_89045___redundant_placeholder13
/while_while_cond_89045___redundant_placeholder23
/while_while_cond_89045___redundant_placeholder3
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
�
�
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91104

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
�"
�
while_body_86047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_86071_0:	�*
while_lstm_cell_86073_0:	d�&
while_lstm_cell_86075_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_86071:	�(
while_lstm_cell_86073:	d�$
while_lstm_cell_86075:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_86071_0while_lstm_cell_86073_0while_lstm_cell_86075_0*
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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85988�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_86071while_lstm_cell_86071_0"0
while_lstm_cell_86073while_lstm_cell_86073_0"0
while_lstm_cell_86075while_lstm_cell_86075_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
�7
�
while_body_89662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
while_cond_90090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_90090___redundant_placeholder03
/while_while_cond_90090___redundant_placeholder13
/while_while_cond_90090___redundant_placeholder23
/while_while_cond_90090___redundant_placeholder3
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
��
�
 __inference__wrapped_model_85775
lstm_30_inputQ
>sequential_10_lstm_30_lstm_cell_matmul_readvariableop_resource:	�S
@sequential_10_lstm_30_lstm_cell_matmul_1_readvariableop_resource:	d�N
?sequential_10_lstm_30_lstm_cell_biasadd_readvariableop_resource:	�S
@sequential_10_lstm_31_lstm_cell_1_matmul_readvariableop_resource:	d�U
Bsequential_10_lstm_31_lstm_cell_1_matmul_1_readvariableop_resource:	2�P
Asequential_10_lstm_31_lstm_cell_1_biasadd_readvariableop_resource:	�R
@sequential_10_lstm_32_lstm_cell_2_matmul_readvariableop_resource:2(T
Bsequential_10_lstm_32_lstm_cell_2_matmul_1_readvariableop_resource:
(O
Asequential_10_lstm_32_lstm_cell_2_biasadd_readvariableop_resource:(G
5sequential_10_dense_10_matmul_readvariableop_resource:
D
6sequential_10_dense_10_biasadd_readvariableop_resource:
identity��-sequential_10/dense_10/BiasAdd/ReadVariableOp�,sequential_10/dense_10/MatMul/ReadVariableOp�6sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOp�5sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOp�7sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOp�sequential_10/lstm_30/while�8sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp�7sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOp�9sequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp�sequential_10/lstm_31/while�8sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp�7sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOp�9sequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp�sequential_10/lstm_32/whileX
sequential_10/lstm_30/ShapeShapelstm_30_input*
T0*
_output_shapes
:s
)sequential_10/lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_10/lstm_30/strided_sliceStridedSlice$sequential_10/lstm_30/Shape:output:02sequential_10/lstm_30/strided_slice/stack:output:04sequential_10/lstm_30/strided_slice/stack_1:output:04sequential_10/lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_10/lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
"sequential_10/lstm_30/zeros/packedPack,sequential_10/lstm_30/strided_slice:output:0-sequential_10/lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_30/zerosFill+sequential_10/lstm_30/zeros/packed:output:0*sequential_10/lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:���������dh
&sequential_10/lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_10/lstm_30/zeros_1/packedPack,sequential_10/lstm_30/strided_slice:output:0/sequential_10/lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_30/zeros_1Fill-sequential_10/lstm_30/zeros_1/packed:output:0,sequential_10/lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dy
$sequential_10/lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_10/lstm_30/transpose	Transposelstm_30_input-sequential_10/lstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:���������p
sequential_10/lstm_30/Shape_1Shape#sequential_10/lstm_30/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_30/strided_slice_1StridedSlice&sequential_10/lstm_30/Shape_1:output:04sequential_10/lstm_30/strided_slice_1/stack:output:06sequential_10/lstm_30/strided_slice_1/stack_1:output:06sequential_10/lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_10/lstm_30/TensorArrayV2TensorListReserve:sequential_10/lstm_30/TensorArrayV2/element_shape:output:0.sequential_10/lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_10/lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_10/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_30/transpose:y:0Tsequential_10/lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_10/lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_30/strided_slice_2StridedSlice#sequential_10/lstm_30/transpose:y:04sequential_10/lstm_30/strided_slice_2/stack:output:06sequential_10/lstm_30/strided_slice_2/stack_1:output:06sequential_10/lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
5sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOpReadVariableOp>sequential_10_lstm_30_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&sequential_10/lstm_30/lstm_cell/MatMulMatMul.sequential_10/lstm_30/strided_slice_2:output:0=sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_10_lstm_30_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
(sequential_10/lstm_30/lstm_cell/MatMul_1MatMul$sequential_10/lstm_30/zeros:output:0?sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#sequential_10/lstm_30/lstm_cell/addAddV20sequential_10/lstm_30/lstm_cell/MatMul:product:02sequential_10/lstm_30/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?sequential_10_lstm_30_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_10/lstm_30/lstm_cell/BiasAddBiasAdd'sequential_10/lstm_30/lstm_cell/add:z:0>sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/sequential_10/lstm_30/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_10/lstm_30/lstm_cell/splitSplit8sequential_10/lstm_30/lstm_cell/split/split_dim:output:00sequential_10/lstm_30/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
'sequential_10/lstm_30/lstm_cell/SigmoidSigmoid.sequential_10/lstm_30/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
)sequential_10/lstm_30/lstm_cell/Sigmoid_1Sigmoid.sequential_10/lstm_30/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
#sequential_10/lstm_30/lstm_cell/mulMul-sequential_10/lstm_30/lstm_cell/Sigmoid_1:y:0&sequential_10/lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
$sequential_10/lstm_30/lstm_cell/ReluRelu.sequential_10/lstm_30/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
%sequential_10/lstm_30/lstm_cell/mul_1Mul+sequential_10/lstm_30/lstm_cell/Sigmoid:y:02sequential_10/lstm_30/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
%sequential_10/lstm_30/lstm_cell/add_1AddV2'sequential_10/lstm_30/lstm_cell/mul:z:0)sequential_10/lstm_30/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_10/lstm_30/lstm_cell/Sigmoid_2Sigmoid.sequential_10/lstm_30/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d�
&sequential_10/lstm_30/lstm_cell/Relu_1Relu)sequential_10/lstm_30/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
%sequential_10/lstm_30/lstm_cell/mul_2Mul-sequential_10/lstm_30/lstm_cell/Sigmoid_2:y:04sequential_10/lstm_30/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3sequential_10/lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
%sequential_10/lstm_30/TensorArrayV2_1TensorListReserve<sequential_10/lstm_30/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_10/lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_10/lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_10/lstm_30/whileWhile1sequential_10/lstm_30/while/loop_counter:output:07sequential_10/lstm_30/while/maximum_iterations:output:0#sequential_10/lstm_30/time:output:0.sequential_10/lstm_30/TensorArrayV2_1:handle:0$sequential_10/lstm_30/zeros:output:0&sequential_10/lstm_30/zeros_1:output:0.sequential_10/lstm_30/strided_slice_1:output:0Msequential_10/lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_10_lstm_30_lstm_cell_matmul_readvariableop_resource@sequential_10_lstm_30_lstm_cell_matmul_1_readvariableop_resource?sequential_10_lstm_30_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_10_lstm_30_while_body_85407*2
cond*R(
&sequential_10_lstm_30_while_cond_85406*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Fsequential_10/lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
8sequential_10/lstm_30/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_30/while:output:3Osequential_10/lstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0~
+sequential_10/lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_10/lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_30/strided_slice_3StridedSliceAsequential_10/lstm_30/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_30/strided_slice_3/stack:output:06sequential_10/lstm_30/strided_slice_3/stack_1:output:06sequential_10/lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask{
&sequential_10/lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_10/lstm_30/transpose_1	TransposeAsequential_10/lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dq
sequential_10/lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_10/lstm_31/ShapeShape%sequential_10/lstm_30/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_10/lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_10/lstm_31/strided_sliceStridedSlice$sequential_10/lstm_31/Shape:output:02sequential_10/lstm_31/strided_slice/stack:output:04sequential_10/lstm_31/strided_slice/stack_1:output:04sequential_10/lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_10/lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_10/lstm_31/zeros/packedPack,sequential_10/lstm_31/strided_slice:output:0-sequential_10/lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_31/zerosFill+sequential_10/lstm_31/zeros/packed:output:0*sequential_10/lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:���������2h
&sequential_10/lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_10/lstm_31/zeros_1/packedPack,sequential_10/lstm_31/strided_slice:output:0/sequential_10/lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_31/zeros_1Fill-sequential_10/lstm_31/zeros_1/packed:output:0,sequential_10/lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2y
$sequential_10/lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_10/lstm_31/transpose	Transpose%sequential_10/lstm_30/transpose_1:y:0-sequential_10/lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:���������dp
sequential_10/lstm_31/Shape_1Shape#sequential_10/lstm_31/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_31/strided_slice_1StridedSlice&sequential_10/lstm_31/Shape_1:output:04sequential_10/lstm_31/strided_slice_1/stack:output:06sequential_10/lstm_31/strided_slice_1/stack_1:output:06sequential_10/lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_10/lstm_31/TensorArrayV2TensorListReserve:sequential_10/lstm_31/TensorArrayV2/element_shape:output:0.sequential_10/lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_10/lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
=sequential_10/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_31/transpose:y:0Tsequential_10/lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_10/lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_31/strided_slice_2StridedSlice#sequential_10/lstm_31/transpose:y:04sequential_10/lstm_31/strided_slice_2/stack:output:06sequential_10/lstm_31/strided_slice_2/stack_1:output:06sequential_10/lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
7sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp@sequential_10_lstm_31_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
(sequential_10/lstm_31/lstm_cell_1/MatMulMatMul.sequential_10/lstm_31/strided_slice_2:output:0?sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9sequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpBsequential_10_lstm_31_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
*sequential_10/lstm_31/lstm_cell_1/MatMul_1MatMul$sequential_10/lstm_31/zeros:output:0Asequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%sequential_10/lstm_31/lstm_cell_1/addAddV22sequential_10/lstm_31/lstm_cell_1/MatMul:product:04sequential_10/lstm_31/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
8sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)sequential_10/lstm_31/lstm_cell_1/BiasAddBiasAdd)sequential_10/lstm_31/lstm_cell_1/add:z:0@sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
1sequential_10/lstm_31/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_10/lstm_31/lstm_cell_1/splitSplit:sequential_10/lstm_31/lstm_cell_1/split/split_dim:output:02sequential_10/lstm_31/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
)sequential_10/lstm_31/lstm_cell_1/SigmoidSigmoid0sequential_10/lstm_31/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2�
+sequential_10/lstm_31/lstm_cell_1/Sigmoid_1Sigmoid0sequential_10/lstm_31/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
%sequential_10/lstm_31/lstm_cell_1/mulMul/sequential_10/lstm_31/lstm_cell_1/Sigmoid_1:y:0&sequential_10/lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
&sequential_10/lstm_31/lstm_cell_1/ReluRelu0sequential_10/lstm_31/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
'sequential_10/lstm_31/lstm_cell_1/mul_1Mul-sequential_10/lstm_31/lstm_cell_1/Sigmoid:y:04sequential_10/lstm_31/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
'sequential_10/lstm_31/lstm_cell_1/add_1AddV2)sequential_10/lstm_31/lstm_cell_1/mul:z:0+sequential_10/lstm_31/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_10/lstm_31/lstm_cell_1/Sigmoid_2Sigmoid0sequential_10/lstm_31/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2�
(sequential_10/lstm_31/lstm_cell_1/Relu_1Relu+sequential_10/lstm_31/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
'sequential_10/lstm_31/lstm_cell_1/mul_2Mul/sequential_10/lstm_31/lstm_cell_1/Sigmoid_2:y:06sequential_10/lstm_31/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3sequential_10/lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
%sequential_10/lstm_31/TensorArrayV2_1TensorListReserve<sequential_10/lstm_31/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_10/lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_10/lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_10/lstm_31/whileWhile1sequential_10/lstm_31/while/loop_counter:output:07sequential_10/lstm_31/while/maximum_iterations:output:0#sequential_10/lstm_31/time:output:0.sequential_10/lstm_31/TensorArrayV2_1:handle:0$sequential_10/lstm_31/zeros:output:0&sequential_10/lstm_31/zeros_1:output:0.sequential_10/lstm_31/strided_slice_1:output:0Msequential_10/lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_10_lstm_31_lstm_cell_1_matmul_readvariableop_resourceBsequential_10_lstm_31_lstm_cell_1_matmul_1_readvariableop_resourceAsequential_10_lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_10_lstm_31_while_body_85546*2
cond*R(
&sequential_10_lstm_31_while_cond_85545*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Fsequential_10/lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
8sequential_10/lstm_31/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_31/while:output:3Osequential_10/lstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0~
+sequential_10/lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_10/lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_31/strided_slice_3StridedSliceAsequential_10/lstm_31/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_31/strided_slice_3/stack:output:06sequential_10/lstm_31/strided_slice_3/stack_1:output:06sequential_10/lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask{
&sequential_10/lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_10/lstm_31/transpose_1	TransposeAsequential_10/lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_10/lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_10/lstm_32/ShapeShape%sequential_10/lstm_31/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_10/lstm_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_10/lstm_32/strided_sliceStridedSlice$sequential_10/lstm_32/Shape:output:02sequential_10/lstm_32/strided_slice/stack:output:04sequential_10/lstm_32/strided_slice/stack_1:output:04sequential_10/lstm_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_10/lstm_32/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"sequential_10/lstm_32/zeros/packedPack,sequential_10/lstm_32/strided_slice:output:0-sequential_10/lstm_32/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_32/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_32/zerosFill+sequential_10/lstm_32/zeros/packed:output:0*sequential_10/lstm_32/zeros/Const:output:0*
T0*'
_output_shapes
:���������
h
&sequential_10/lstm_32/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_10/lstm_32/zeros_1/packedPack,sequential_10/lstm_32/strided_slice:output:0/sequential_10/lstm_32/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_32/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_10/lstm_32/zeros_1Fill-sequential_10/lstm_32/zeros_1/packed:output:0,sequential_10/lstm_32/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
y
$sequential_10/lstm_32/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_10/lstm_32/transpose	Transpose%sequential_10/lstm_31/transpose_1:y:0-sequential_10/lstm_32/transpose/perm:output:0*
T0*+
_output_shapes
:���������2p
sequential_10/lstm_32/Shape_1Shape#sequential_10/lstm_32/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_32/strided_slice_1StridedSlice&sequential_10/lstm_32/Shape_1:output:04sequential_10/lstm_32/strided_slice_1/stack:output:06sequential_10/lstm_32/strided_slice_1/stack_1:output:06sequential_10/lstm_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_32/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_10/lstm_32/TensorArrayV2TensorListReserve:sequential_10/lstm_32/TensorArrayV2/element_shape:output:0.sequential_10/lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_10/lstm_32/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
=sequential_10/lstm_32/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_32/transpose:y:0Tsequential_10/lstm_32/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_10/lstm_32/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_32/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_32/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_32/strided_slice_2StridedSlice#sequential_10/lstm_32/transpose:y:04sequential_10/lstm_32/strided_slice_2/stack:output:06sequential_10/lstm_32/strided_slice_2/stack_1:output:06sequential_10/lstm_32/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
7sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@sequential_10_lstm_32_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
(sequential_10/lstm_32/lstm_cell_2/MatMulMatMul.sequential_10/lstm_32/strided_slice_2:output:0?sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
9sequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBsequential_10_lstm_32_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
*sequential_10/lstm_32/lstm_cell_2/MatMul_1MatMul$sequential_10/lstm_32/zeros:output:0Asequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%sequential_10/lstm_32/lstm_cell_2/addAddV22sequential_10/lstm_32/lstm_cell_2/MatMul:product:04sequential_10/lstm_32/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
8sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
)sequential_10/lstm_32/lstm_cell_2/BiasAddBiasAdd)sequential_10/lstm_32/lstm_cell_2/add:z:0@sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(s
1sequential_10/lstm_32/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_10/lstm_32/lstm_cell_2/splitSplit:sequential_10/lstm_32/lstm_cell_2/split/split_dim:output:02sequential_10/lstm_32/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
)sequential_10/lstm_32/lstm_cell_2/SigmoidSigmoid0sequential_10/lstm_32/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
�
+sequential_10/lstm_32/lstm_cell_2/Sigmoid_1Sigmoid0sequential_10/lstm_32/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
%sequential_10/lstm_32/lstm_cell_2/mulMul/sequential_10/lstm_32/lstm_cell_2/Sigmoid_1:y:0&sequential_10/lstm_32/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
&sequential_10/lstm_32/lstm_cell_2/ReluRelu0sequential_10/lstm_32/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
'sequential_10/lstm_32/lstm_cell_2/mul_1Mul-sequential_10/lstm_32/lstm_cell_2/Sigmoid:y:04sequential_10/lstm_32/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
'sequential_10/lstm_32/lstm_cell_2/add_1AddV2)sequential_10/lstm_32/lstm_cell_2/mul:z:0+sequential_10/lstm_32/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_10/lstm_32/lstm_cell_2/Sigmoid_2Sigmoid0sequential_10/lstm_32/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
�
(sequential_10/lstm_32/lstm_cell_2/Relu_1Relu+sequential_10/lstm_32/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
'sequential_10/lstm_32/lstm_cell_2/mul_2Mul/sequential_10/lstm_32/lstm_cell_2/Sigmoid_2:y:06sequential_10/lstm_32/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3sequential_10/lstm_32/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
%sequential_10/lstm_32/TensorArrayV2_1TensorListReserve<sequential_10/lstm_32/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_10/lstm_32/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_32/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_10/lstm_32/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_10/lstm_32/whileWhile1sequential_10/lstm_32/while/loop_counter:output:07sequential_10/lstm_32/while/maximum_iterations:output:0#sequential_10/lstm_32/time:output:0.sequential_10/lstm_32/TensorArrayV2_1:handle:0$sequential_10/lstm_32/zeros:output:0&sequential_10/lstm_32/zeros_1:output:0.sequential_10/lstm_32/strided_slice_1:output:0Msequential_10/lstm_32/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_10_lstm_32_lstm_cell_2_matmul_readvariableop_resourceBsequential_10_lstm_32_lstm_cell_2_matmul_1_readvariableop_resourceAsequential_10_lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
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
_stateful_parallelism( *2
body*R(
&sequential_10_lstm_32_while_body_85685*2
cond*R(
&sequential_10_lstm_32_while_cond_85684*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Fsequential_10/lstm_32/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
8sequential_10/lstm_32/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_32/while:output:3Osequential_10/lstm_32/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0~
+sequential_10/lstm_32/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_10/lstm_32/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_32/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_10/lstm_32/strided_slice_3StridedSliceAsequential_10/lstm_32/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_32/strided_slice_3/stack:output:06sequential_10/lstm_32/strided_slice_3/stack_1:output:06sequential_10/lstm_32/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask{
&sequential_10/lstm_32/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_10/lstm_32/transpose_1	TransposeAsequential_10/lstm_32/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_32/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
q
sequential_10/lstm_32/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_10/dense_10/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_10/dense_10/MatMulMatMul.sequential_10/lstm_32/strided_slice_3:output:04sequential_10/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_10/dense_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10/dense_10/BiasAddBiasAdd'sequential_10/dense_10/MatMul:product:05sequential_10/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_10/dense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_10/dense_10/BiasAdd/ReadVariableOp-^sequential_10/dense_10/MatMul/ReadVariableOp7^sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOp6^sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOp8^sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOp^sequential_10/lstm_30/while9^sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp8^sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOp:^sequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp^sequential_10/lstm_31/while9^sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp8^sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOp:^sequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp^sequential_10/lstm_32/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_10/dense_10/BiasAdd/ReadVariableOp-sequential_10/dense_10/BiasAdd/ReadVariableOp2\
,sequential_10/dense_10/MatMul/ReadVariableOp,sequential_10/dense_10/MatMul/ReadVariableOp2p
6sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOp6sequential_10/lstm_30/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOp5sequential_10/lstm_30/lstm_cell/MatMul/ReadVariableOp2r
7sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOp7sequential_10/lstm_30/lstm_cell/MatMul_1/ReadVariableOp2:
sequential_10/lstm_30/whilesequential_10/lstm_30/while2t
8sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp8sequential_10/lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp2r
7sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOp7sequential_10/lstm_31/lstm_cell_1/MatMul/ReadVariableOp2v
9sequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp9sequential_10/lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp2:
sequential_10/lstm_31/whilesequential_10/lstm_31/while2t
8sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp8sequential_10/lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp2r
7sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOp7sequential_10/lstm_32/lstm_cell_2/MatMul/ReadVariableOp2v
9sequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp9sequential_10/lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp2:
sequential_10/lstm_32/whilesequential_10/lstm_32/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_30_input
�

�
lstm_31_while_cond_88713,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3.
*lstm_31_while_less_lstm_31_strided_slice_1C
?lstm_31_while_lstm_31_while_cond_88713___redundant_placeholder0C
?lstm_31_while_lstm_31_while_cond_88713___redundant_placeholder1C
?lstm_31_while_lstm_31_while_cond_88713___redundant_placeholder2C
?lstm_31_while_lstm_31_while_cond_88713___redundant_placeholder3
lstm_31_while_identity
�
lstm_31/while/LessLesslstm_31_while_placeholder*lstm_31_while_less_lstm_31_strided_slice_1*
T0*
_output_shapes
: [
lstm_31/while/IdentityIdentitylstm_31/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_31_while_identitylstm_31/while/Identity:output:0*(
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
�I
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_89273
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while=
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_89189*
condR
while_cond_89188*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_89746
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while=
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_89662*
condR
while_cond_89661*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�7
�
while_body_89805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
�V
�
__inference__traced_save_91247
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_30_lstm_cell_30_kernel_read_readvariableopD
@savev2_lstm_30_lstm_cell_30_recurrent_kernel_read_readvariableop8
4savev2_lstm_30_lstm_cell_30_bias_read_readvariableop:
6savev2_lstm_31_lstm_cell_31_kernel_read_readvariableopD
@savev2_lstm_31_lstm_cell_31_recurrent_kernel_read_readvariableop8
4savev2_lstm_31_lstm_cell_31_bias_read_readvariableop:
6savev2_lstm_32_lstm_cell_32_kernel_read_readvariableopD
@savev2_lstm_32_lstm_cell_32_recurrent_kernel_read_readvariableop8
4savev2_lstm_32_lstm_cell_32_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopA
=savev2_adam_lstm_30_lstm_cell_30_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_30_lstm_cell_30_bias_m_read_readvariableopA
=savev2_adam_lstm_31_lstm_cell_31_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_31_lstm_cell_31_bias_m_read_readvariableopA
=savev2_adam_lstm_32_lstm_cell_32_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_32_lstm_cell_32_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_32_lstm_cell_32_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopA
=savev2_adam_lstm_30_lstm_cell_30_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_30_lstm_cell_30_bias_v_read_readvariableopA
=savev2_adam_lstm_31_lstm_cell_31_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_31_lstm_cell_31_bias_v_read_readvariableopA
=savev2_adam_lstm_32_lstm_cell_32_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_32_lstm_cell_32_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_32_lstm_cell_32_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_30_lstm_cell_30_kernel_read_readvariableop@savev2_lstm_30_lstm_cell_30_recurrent_kernel_read_readvariableop4savev2_lstm_30_lstm_cell_30_bias_read_readvariableop6savev2_lstm_31_lstm_cell_31_kernel_read_readvariableop@savev2_lstm_31_lstm_cell_31_recurrent_kernel_read_readvariableop4savev2_lstm_31_lstm_cell_31_bias_read_readvariableop6savev2_lstm_32_lstm_cell_32_kernel_read_readvariableop@savev2_lstm_32_lstm_cell_32_recurrent_kernel_read_readvariableop4savev2_lstm_32_lstm_cell_32_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop=savev2_adam_lstm_30_lstm_cell_30_kernel_m_read_readvariableopGsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_30_lstm_cell_30_bias_m_read_readvariableop=savev2_adam_lstm_31_lstm_cell_31_kernel_m_read_readvariableopGsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_31_lstm_cell_31_bias_m_read_readvariableop=savev2_adam_lstm_32_lstm_cell_32_kernel_m_read_readvariableopGsavev2_adam_lstm_32_lstm_cell_32_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_32_lstm_cell_32_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop=savev2_adam_lstm_30_lstm_cell_30_kernel_v_read_readvariableopGsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_30_lstm_cell_30_bias_v_read_readvariableop=savev2_adam_lstm_31_lstm_cell_31_kernel_v_read_readvariableopGsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_31_lstm_cell_31_bias_v_read_readvariableop=savev2_adam_lstm_32_lstm_cell_32_kernel_v_read_readvariableopGsavev2_adam_lstm_32_lstm_cell_32_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_32_lstm_cell_32_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
(__inference_dense_10_layer_call_fn_90800

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
GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_87292o
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
�
C__inference_dense_10_layer_call_and_return_conditional_losses_87292

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
�
�
'__inference_lstm_30_layer_call_fn_88987

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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_87820s
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
�
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_91006

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
�I
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_87490

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_87406*
condR
while_cond_87405*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
-__inference_sequential_10_layer_call_fn_88062

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
GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_87299o
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
lstm_32_while_cond_88425,
(lstm_32_while_lstm_32_while_loop_counter2
.lstm_32_while_lstm_32_while_maximum_iterations
lstm_32_while_placeholder
lstm_32_while_placeholder_1
lstm_32_while_placeholder_2
lstm_32_while_placeholder_3.
*lstm_32_while_less_lstm_32_strided_slice_1C
?lstm_32_while_lstm_32_while_cond_88425___redundant_placeholder0C
?lstm_32_while_lstm_32_while_cond_88425___redundant_placeholder1C
?lstm_32_while_lstm_32_while_cond_88425___redundant_placeholder2C
?lstm_32_while_lstm_32_while_cond_88425___redundant_placeholder3
lstm_32_while_identity
�
lstm_32/while/LessLesslstm_32_while_placeholder*lstm_32_while_less_lstm_32_strided_slice_1*
T0*
_output_shapes
: [
lstm_32/while/IdentityIdentitylstm_32/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_32_while_identitylstm_32/while/Identity:output:0*(
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
�7
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_86625

inputs#
lstm_cell_2_86543:2(#
lstm_cell_2_86545:
(
lstm_cell_2_86547:(
identity��#lstm_cell_2/StatefulPartitionedCall�while;
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
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_86543lstm_cell_2_86545lstm_cell_2_86547*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86542n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_86543lstm_cell_2_86545lstm_cell_2_86547*
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
bodyR
while_body_86556*
condR
while_cond_86555*K
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
t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_88000
lstm_30_input 
lstm_30_87973:	� 
lstm_30_87975:	d�
lstm_30_87977:	� 
lstm_31_87980:	d� 
lstm_31_87982:	2�
lstm_31_87984:	�
lstm_32_87987:2(
lstm_32_87989:
(
lstm_32_87991:( 
dense_10_87994:

dense_10_87996:
identity�� dense_10/StatefulPartitionedCall�lstm_30/StatefulPartitionedCall�lstm_31/StatefulPartitionedCall�lstm_32/StatefulPartitionedCall�
lstm_30/StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputlstm_30_87973lstm_30_87975lstm_30_87977*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_87820�
lstm_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_30/StatefulPartitionedCall:output:0lstm_31_87980lstm_31_87982lstm_31_87984*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87655�
lstm_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0lstm_32_87987lstm_32_87989lstm_32_87991*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87490�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_32/StatefulPartitionedCall:output:0dense_10_87994dense_10_87996*
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
GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_87292x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall ^lstm_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2B
lstm_32/StatefulPartitionedCalllstm_32/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_30_input
�
�
while_cond_86746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86746___redundant_placeholder03
/while_while_cond_86746___redundant_placeholder13
/while_while_cond_86746___redundant_placeholder23
/while_while_cond_86746___redundant_placeholder3
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
while_cond_89474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89474___redundant_placeholder03
/while_while_cond_89474___redundant_placeholder13
/while_while_cond_89474___redundant_placeholder23
/while_while_cond_89474___redundant_placeholder3
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
�7
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_86275

inputs$
lstm_cell_1_86193:	d�$
lstm_cell_1_86195:	2� 
lstm_cell_1_86197:	�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
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
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_86193lstm_cell_1_86195lstm_cell_1_86197*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86192n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_86193lstm_cell_1_86195lstm_cell_1_86197*
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
bodyR
while_body_86206*
condR
while_cond_86205*K
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
 :������������������2t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�

�
-__inference_sequential_10_layer_call_fn_87324
lstm_30_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_87299o
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
_user_specified_namelstm_30_input
�"
�
while_body_86397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_86421_0:	d�,
while_lstm_cell_1_86423_0:	2�(
while_lstm_cell_1_86425_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_86421:	d�*
while_lstm_cell_1_86423:	2�&
while_lstm_cell_1_86425:	���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_86421_0while_lstm_cell_1_86423_0while_lstm_cell_1_86425_0*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86338�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_86421while_lstm_cell_1_86421_0"4
while_lstm_cell_1_86423while_lstm_cell_1_86423_0"4
while_lstm_cell_1_86425while_lstm_cell_1_86425_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
�

H__inference_sequential_10_layer_call_and_return_conditional_losses_88943

inputsC
0lstm_30_lstm_cell_matmul_readvariableop_resource:	�E
2lstm_30_lstm_cell_matmul_1_readvariableop_resource:	d�@
1lstm_30_lstm_cell_biasadd_readvariableop_resource:	�E
2lstm_31_lstm_cell_1_matmul_readvariableop_resource:	d�G
4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource:	2�B
3lstm_31_lstm_cell_1_biasadd_readvariableop_resource:	�D
2lstm_32_lstm_cell_2_matmul_readvariableop_resource:2(F
4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource:
(A
3lstm_32_lstm_cell_2_biasadd_readvariableop_resource:(9
'dense_10_matmul_readvariableop_resource:
6
(dense_10_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�(lstm_30/lstm_cell/BiasAdd/ReadVariableOp�'lstm_30/lstm_cell/MatMul/ReadVariableOp�)lstm_30/lstm_cell/MatMul_1/ReadVariableOp�lstm_30/while�*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp�)lstm_31/lstm_cell_1/MatMul/ReadVariableOp�+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp�lstm_31/while�*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp�)lstm_32/lstm_cell_2/MatMul/ReadVariableOp�+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp�lstm_32/whileC
lstm_30/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_sliceStridedSlicelstm_30/Shape:output:0$lstm_30/strided_slice/stack:output:0&lstm_30/strided_slice/stack_1:output:0&lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_30/zeros/packedPacklstm_30/strided_slice:output:0lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_30/zerosFilllstm_30/zeros/packed:output:0lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_30/zeros_1/packedPacklstm_30/strided_slice:output:0!lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_30/zeros_1Filllstm_30/zeros_1/packed:output:0lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_30/transpose	Transposeinputslstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_30/Shape_1Shapelstm_30/transpose:y:0*
T0*
_output_shapes
:g
lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_1StridedSlicelstm_30/Shape_1:output:0&lstm_30/strided_slice_1/stack:output:0(lstm_30/strided_slice_1/stack_1:output:0(lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_30/TensorArrayV2TensorListReserve,lstm_30/TensorArrayV2/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_30/transpose:y:0Flstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_2StridedSlicelstm_30/transpose:y:0&lstm_30/strided_slice_2/stack:output:0(lstm_30/strided_slice_2/stack_1:output:0(lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'lstm_30/lstm_cell/MatMul/ReadVariableOpReadVariableOp0lstm_30_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_30/lstm_cell/MatMulMatMul lstm_30/strided_slice_2:output:0/lstm_30/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)lstm_30/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2lstm_30_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_30/lstm_cell/MatMul_1MatMullstm_30/zeros:output:01lstm_30/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_30/lstm_cell/addAddV2"lstm_30/lstm_cell/MatMul:product:0$lstm_30/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(lstm_30/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1lstm_30_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_30/lstm_cell/BiasAddBiasAddlstm_30/lstm_cell/add:z:00lstm_30/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!lstm_30/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/lstm_cell/splitSplit*lstm_30/lstm_cell/split/split_dim:output:0"lstm_30/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitx
lstm_30/lstm_cell/SigmoidSigmoid lstm_30/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dz
lstm_30/lstm_cell/Sigmoid_1Sigmoid lstm_30/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mulMullstm_30/lstm_cell/Sigmoid_1:y:0lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:���������dr
lstm_30/lstm_cell/ReluRelu lstm_30/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mul_1Mullstm_30/lstm_cell/Sigmoid:y:0$lstm_30/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/add_1AddV2lstm_30/lstm_cell/mul:z:0lstm_30/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dz
lstm_30/lstm_cell/Sigmoid_2Sigmoid lstm_30/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������do
lstm_30/lstm_cell/Relu_1Relulstm_30/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mul_2Mullstm_30/lstm_cell/Sigmoid_2:y:0&lstm_30/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_30/TensorArrayV2_1TensorListReserve.lstm_30/TensorArrayV2_1/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_30/whileWhile#lstm_30/while/loop_counter:output:0)lstm_30/while/maximum_iterations:output:0lstm_30/time:output:0 lstm_30/TensorArrayV2_1:handle:0lstm_30/zeros:output:0lstm_30/zeros_1:output:0 lstm_30/strided_slice_1:output:0?lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_30_lstm_cell_matmul_readvariableop_resource2lstm_30_lstm_cell_matmul_1_readvariableop_resource1lstm_30_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_30_while_body_88575*$
condR
lstm_30_while_cond_88574*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_30/TensorArrayV2Stack/TensorListStackTensorListStacklstm_30/while:output:3Alstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_3StridedSlice3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_30/strided_slice_3/stack:output:0(lstm_30/strided_slice_3/stack_1:output:0(lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_30/transpose_1	Transpose3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_31/ShapeShapelstm_30/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_sliceStridedSlicelstm_31/Shape:output:0$lstm_31/strided_slice/stack:output:0&lstm_31/strided_slice/stack_1:output:0&lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_31/zeros/packedPacklstm_31/strided_slice:output:0lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_31/zerosFilllstm_31/zeros/packed:output:0lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_31/zeros_1/packedPacklstm_31/strided_slice:output:0!lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_31/zeros_1Filllstm_31/zeros_1/packed:output:0lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_31/transpose	Transposelstm_30/transpose_1:y:0lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_31/Shape_1Shapelstm_31/transpose:y:0*
T0*
_output_shapes
:g
lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_1StridedSlicelstm_31/Shape_1:output:0&lstm_31/strided_slice_1/stack:output:0(lstm_31/strided_slice_1/stack_1:output:0(lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_31/TensorArrayV2TensorListReserve,lstm_31/TensorArrayV2/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_31/transpose:y:0Flstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_2StridedSlicelstm_31/transpose:y:0&lstm_31/strided_slice_2/stack:output:0(lstm_31/strided_slice_2/stack_1:output:0(lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
)lstm_31/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2lstm_31_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_31/lstm_cell_1/MatMulMatMul lstm_31/strided_slice_2:output:01lstm_31/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_31/lstm_cell_1/MatMul_1MatMullstm_31/zeros:output:03lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_31/lstm_cell_1/addAddV2$lstm_31/lstm_cell_1/MatMul:product:0&lstm_31/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_31/lstm_cell_1/BiasAddBiasAddlstm_31/lstm_cell_1/add:z:02lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#lstm_31/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/lstm_cell_1/splitSplit,lstm_31/lstm_cell_1/split/split_dim:output:0$lstm_31/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
lstm_31/lstm_cell_1/SigmoidSigmoid"lstm_31/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2~
lstm_31/lstm_cell_1/Sigmoid_1Sigmoid"lstm_31/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mulMul!lstm_31/lstm_cell_1/Sigmoid_1:y:0lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:���������2v
lstm_31/lstm_cell_1/ReluRelu"lstm_31/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mul_1Mullstm_31/lstm_cell_1/Sigmoid:y:0&lstm_31/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/add_1AddV2lstm_31/lstm_cell_1/mul:z:0lstm_31/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2~
lstm_31/lstm_cell_1/Sigmoid_2Sigmoid"lstm_31/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2s
lstm_31/lstm_cell_1/Relu_1Relulstm_31/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mul_2Mul!lstm_31/lstm_cell_1/Sigmoid_2:y:0(lstm_31/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_31/TensorArrayV2_1TensorListReserve.lstm_31/TensorArrayV2_1/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_31/whileWhile#lstm_31/while/loop_counter:output:0)lstm_31/while/maximum_iterations:output:0lstm_31/time:output:0 lstm_31/TensorArrayV2_1:handle:0lstm_31/zeros:output:0lstm_31/zeros_1:output:0 lstm_31/strided_slice_1:output:0?lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_31_lstm_cell_1_matmul_readvariableop_resource4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource3lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_31_while_body_88714*$
condR
lstm_31_while_cond_88713*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_31/TensorArrayV2Stack/TensorListStackTensorListStacklstm_31/while:output:3Alstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_3StridedSlice3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_31/strided_slice_3/stack:output:0(lstm_31/strided_slice_3/stack_1:output:0(lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_31/transpose_1	Transpose3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_32/ShapeShapelstm_31/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_sliceStridedSlicelstm_32/Shape:output:0$lstm_32/strided_slice/stack:output:0&lstm_32/strided_slice/stack_1:output:0&lstm_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_32/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_32/zeros/packedPacklstm_32/strided_slice:output:0lstm_32/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_32/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_32/zerosFilllstm_32/zeros/packed:output:0lstm_32/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_32/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_32/zeros_1/packedPacklstm_32/strided_slice:output:0!lstm_32/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_32/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_32/zeros_1Filllstm_32/zeros_1/packed:output:0lstm_32/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_32/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_32/transpose	Transposelstm_31/transpose_1:y:0lstm_32/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_32/Shape_1Shapelstm_32/transpose:y:0*
T0*
_output_shapes
:g
lstm_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_1StridedSlicelstm_32/Shape_1:output:0&lstm_32/strided_slice_1/stack:output:0(lstm_32/strided_slice_1/stack_1:output:0(lstm_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_32/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_32/TensorArrayV2TensorListReserve,lstm_32/TensorArrayV2/element_shape:output:0 lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_32/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_32/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_32/transpose:y:0Flstm_32/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_32/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_32/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_2StridedSlicelstm_32/transpose:y:0&lstm_32/strided_slice_2/stack:output:0(lstm_32/strided_slice_2/stack_1:output:0(lstm_32/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
)lstm_32/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2lstm_32_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_32/lstm_cell_2/MatMulMatMul lstm_32/strided_slice_2:output:01lstm_32/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_32/lstm_cell_2/MatMul_1MatMullstm_32/zeros:output:03lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_32/lstm_cell_2/addAddV2$lstm_32/lstm_cell_2/MatMul:product:0&lstm_32/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_32/lstm_cell_2/BiasAddBiasAddlstm_32/lstm_cell_2/add:z:02lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#lstm_32/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/lstm_cell_2/splitSplit,lstm_32/lstm_cell_2/split/split_dim:output:0$lstm_32/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
lstm_32/lstm_cell_2/SigmoidSigmoid"lstm_32/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
~
lstm_32/lstm_cell_2/Sigmoid_1Sigmoid"lstm_32/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mulMul!lstm_32/lstm_cell_2/Sigmoid_1:y:0lstm_32/zeros_1:output:0*
T0*'
_output_shapes
:���������
v
lstm_32/lstm_cell_2/ReluRelu"lstm_32/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mul_1Mullstm_32/lstm_cell_2/Sigmoid:y:0&lstm_32/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/add_1AddV2lstm_32/lstm_cell_2/mul:z:0lstm_32/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
~
lstm_32/lstm_cell_2/Sigmoid_2Sigmoid"lstm_32/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
s
lstm_32/lstm_cell_2/Relu_1Relulstm_32/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mul_2Mul!lstm_32/lstm_cell_2/Sigmoid_2:y:0(lstm_32/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_32/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_32/TensorArrayV2_1TensorListReserve.lstm_32/TensorArrayV2_1/element_shape:output:0 lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_32/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_32/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_32/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_32/whileWhile#lstm_32/while/loop_counter:output:0)lstm_32/while/maximum_iterations:output:0lstm_32/time:output:0 lstm_32/TensorArrayV2_1:handle:0lstm_32/zeros:output:0lstm_32/zeros_1:output:0 lstm_32/strided_slice_1:output:0?lstm_32/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_32_lstm_cell_2_matmul_readvariableop_resource4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource3lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
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
_stateful_parallelism( *$
bodyR
lstm_32_while_body_88853*$
condR
lstm_32_while_cond_88852*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_32/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_32/TensorArrayV2Stack/TensorListStackTensorListStacklstm_32/while:output:3Alstm_32/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_32/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_32/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_3StridedSlice3lstm_32/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_32/strided_slice_3/stack:output:0(lstm_32/strided_slice_3/stack_1:output:0(lstm_32/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_32/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_32/transpose_1	Transpose3lstm_32/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_32/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_32/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_10/MatMulMatMul lstm_32/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp)^lstm_30/lstm_cell/BiasAdd/ReadVariableOp(^lstm_30/lstm_cell/MatMul/ReadVariableOp*^lstm_30/lstm_cell/MatMul_1/ReadVariableOp^lstm_30/while+^lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp*^lstm_31/lstm_cell_1/MatMul/ReadVariableOp,^lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_31/while+^lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp*^lstm_32/lstm_cell_2/MatMul/ReadVariableOp,^lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_32/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2T
(lstm_30/lstm_cell/BiasAdd/ReadVariableOp(lstm_30/lstm_cell/BiasAdd/ReadVariableOp2R
'lstm_30/lstm_cell/MatMul/ReadVariableOp'lstm_30/lstm_cell/MatMul/ReadVariableOp2V
)lstm_30/lstm_cell/MatMul_1/ReadVariableOp)lstm_30/lstm_cell/MatMul_1/ReadVariableOp2
lstm_30/whilelstm_30/while2X
*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp2V
)lstm_31/lstm_cell_1/MatMul/ReadVariableOp)lstm_31/lstm_cell_1/MatMul/ReadVariableOp2Z
+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_31/whilelstm_31/while2X
*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp2V
)lstm_32/lstm_cell_2/MatMul/ReadVariableOp)lstm_32/lstm_cell_2/MatMul/ReadVariableOp2Z
+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_32/whilelstm_32/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�@
�

lstm_31_while_body_88714,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3+
'lstm_31_while_lstm_31_strided_slice_1_0g
clstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0:	d�O
<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�J
;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
lstm_31_while_identity
lstm_31_while_identity_1
lstm_31_while_identity_2
lstm_31_while_identity_3
lstm_31_while_identity_4
lstm_31_while_identity_5)
%lstm_31_while_lstm_31_strided_slice_1e
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorK
8lstm_31_while_lstm_cell_1_matmul_readvariableop_resource:	d�M
:lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource:	2�H
9lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource:	���0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp�/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp�1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp�
?lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0lstm_31_while_placeholderHlstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
 lstm_31/while/lstm_cell_1/MatMulMatMul8lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
"lstm_31/while/lstm_cell_1/MatMul_1MatMullstm_31_while_placeholder_29lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_31/while/lstm_cell_1/addAddV2*lstm_31/while/lstm_cell_1/MatMul:product:0,lstm_31/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
!lstm_31/while/lstm_cell_1/BiasAddBiasAdd!lstm_31/while/lstm_cell_1/add:z:08lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)lstm_31/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/while/lstm_cell_1/splitSplit2lstm_31/while/lstm_cell_1/split/split_dim:output:0*lstm_31/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
!lstm_31/while/lstm_cell_1/SigmoidSigmoid(lstm_31/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2�
#lstm_31/while/lstm_cell_1/Sigmoid_1Sigmoid(lstm_31/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mulMul'lstm_31/while/lstm_cell_1/Sigmoid_1:y:0lstm_31_while_placeholder_3*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/ReluRelu(lstm_31/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mul_1Mul%lstm_31/while/lstm_cell_1/Sigmoid:y:0,lstm_31/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/add_1AddV2!lstm_31/while/lstm_cell_1/mul:z:0#lstm_31/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2�
#lstm_31/while/lstm_cell_1/Sigmoid_2Sigmoid(lstm_31/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2
 lstm_31/while/lstm_cell_1/Relu_1Relu#lstm_31/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mul_2Mul'lstm_31/while/lstm_cell_1/Sigmoid_2:y:0.lstm_31/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_31_while_placeholder_1lstm_31_while_placeholder#lstm_31/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_31/while/addAddV2lstm_31_while_placeholderlstm_31/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/while/add_1AddV2(lstm_31_while_lstm_31_while_loop_counterlstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_31/while/IdentityIdentitylstm_31/while/add_1:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_1Identity.lstm_31_while_lstm_31_while_maximum_iterations^lstm_31/while/NoOp*
T0*
_output_shapes
: q
lstm_31/while/Identity_2Identitylstm_31/while/add:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_3IdentityBlstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_4Identity#lstm_31/while/lstm_cell_1/mul_2:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_31/while/Identity_5Identity#lstm_31/while/lstm_cell_1/add_1:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_31/while/NoOpNoOp1^lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp0^lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp2^lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_31_while_identitylstm_31/while/Identity:output:0"=
lstm_31_while_identity_1!lstm_31/while/Identity_1:output:0"=
lstm_31_while_identity_2!lstm_31/while/Identity_2:output:0"=
lstm_31_while_identity_3!lstm_31/while/Identity_3:output:0"=
lstm_31_while_identity_4!lstm_31/while/Identity_4:output:0"=
lstm_31_while_identity_5!lstm_31/while/Identity_5:output:0"P
%lstm_31_while_lstm_31_strided_slice_1'lstm_31_while_lstm_31_strided_slice_1_0"x
9lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0"z
:lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0"v
8lstm_31_while_lstm_cell_1_matmul_readvariableop_resource:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0"�
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2d
0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp2b
/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp2f
1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_32_layer_call_fn_90219

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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87490o
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
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90876

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
�
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86192

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
�I
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_87655

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_87571*
condR
while_cond_87570*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_89188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89188___redundant_placeholder03
/while_while_cond_89188___redundant_placeholder13
/while_while_cond_89188___redundant_placeholder23
/while_while_cond_89188___redundant_placeholder3
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
B__inference_lstm_31_layer_call_and_return_conditional_losses_89889
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while=
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_89805*
condR
while_cond_89804*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�H
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_86974

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_86890*
condR
while_cond_86889*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�I
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_87124

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_87040*
condR
while_cond_87039*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�P
�
&sequential_10_lstm_30_while_body_85407H
Dsequential_10_lstm_30_while_sequential_10_lstm_30_while_loop_counterN
Jsequential_10_lstm_30_while_sequential_10_lstm_30_while_maximum_iterations+
'sequential_10_lstm_30_while_placeholder-
)sequential_10_lstm_30_while_placeholder_1-
)sequential_10_lstm_30_while_placeholder_2-
)sequential_10_lstm_30_while_placeholder_3G
Csequential_10_lstm_30_while_sequential_10_lstm_30_strided_slice_1_0�
sequential_10_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_30_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_10_lstm_30_while_lstm_cell_matmul_readvariableop_resource_0:	�[
Hsequential_10_lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0:	d�V
Gsequential_10_lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0:	�(
$sequential_10_lstm_30_while_identity*
&sequential_10_lstm_30_while_identity_1*
&sequential_10_lstm_30_while_identity_2*
&sequential_10_lstm_30_while_identity_3*
&sequential_10_lstm_30_while_identity_4*
&sequential_10_lstm_30_while_identity_5E
Asequential_10_lstm_30_while_sequential_10_lstm_30_strided_slice_1�
}sequential_10_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_30_tensorarrayunstack_tensorlistfromtensorW
Dsequential_10_lstm_30_while_lstm_cell_matmul_readvariableop_resource:	�Y
Fsequential_10_lstm_30_while_lstm_cell_matmul_1_readvariableop_resource:	d�T
Esequential_10_lstm_30_while_lstm_cell_biasadd_readvariableop_resource:	���<sequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp�;sequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOp�=sequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp�
Msequential_10/lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_10/lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_30_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_30_while_placeholderVsequential_10/lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
;sequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpFsequential_10_lstm_30_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
,sequential_10/lstm_30/while/lstm_cell/MatMulMatMulFsequential_10/lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_10_lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
.sequential_10/lstm_30/while/lstm_cell/MatMul_1MatMul)sequential_10_lstm_30_while_placeholder_2Esequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_10/lstm_30/while/lstm_cell/addAddV26sequential_10/lstm_30/while/lstm_cell/MatMul:product:08sequential_10/lstm_30/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_10_lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
-sequential_10/lstm_30/while/lstm_cell/BiasAddBiasAdd-sequential_10/lstm_30/while/lstm_cell/add:z:0Dsequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_10/lstm_30/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_10/lstm_30/while/lstm_cell/splitSplit>sequential_10/lstm_30/while/lstm_cell/split/split_dim:output:06sequential_10/lstm_30/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_10/lstm_30/while/lstm_cell/SigmoidSigmoid4sequential_10/lstm_30/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_10/lstm_30/while/lstm_cell/Sigmoid_1Sigmoid4sequential_10/lstm_30/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_10/lstm_30/while/lstm_cell/mulMul3sequential_10/lstm_30/while/lstm_cell/Sigmoid_1:y:0)sequential_10_lstm_30_while_placeholder_3*
T0*'
_output_shapes
:���������d�
*sequential_10/lstm_30/while/lstm_cell/ReluRelu4sequential_10/lstm_30/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_10/lstm_30/while/lstm_cell/mul_1Mul1sequential_10/lstm_30/while/lstm_cell/Sigmoid:y:08sequential_10/lstm_30/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_10/lstm_30/while/lstm_cell/add_1AddV2-sequential_10/lstm_30/while/lstm_cell/mul:z:0/sequential_10/lstm_30/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_10/lstm_30/while/lstm_cell/Sigmoid_2Sigmoid4sequential_10/lstm_30/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_10/lstm_30/while/lstm_cell/Relu_1Relu/sequential_10/lstm_30/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_10/lstm_30/while/lstm_cell/mul_2Mul3sequential_10/lstm_30/while/lstm_cell/Sigmoid_2:y:0:sequential_10/lstm_30/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
@sequential_10/lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_30_while_placeholder_1'sequential_10_lstm_30_while_placeholder/sequential_10/lstm_30/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_10/lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_10/lstm_30/while/addAddV2'sequential_10_lstm_30_while_placeholder*sequential_10/lstm_30/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_10/lstm_30/while/add_1AddV2Dsequential_10_lstm_30_while_sequential_10_lstm_30_while_loop_counter,sequential_10/lstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_10/lstm_30/while/IdentityIdentity%sequential_10/lstm_30/while/add_1:z:0!^sequential_10/lstm_30/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_30/while/Identity_1IdentityJsequential_10_lstm_30_while_sequential_10_lstm_30_while_maximum_iterations!^sequential_10/lstm_30/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_30/while/Identity_2Identity#sequential_10/lstm_30/while/add:z:0!^sequential_10/lstm_30/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_30/while/Identity_3IdentityPsequential_10/lstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_30/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_30/while/Identity_4Identity/sequential_10/lstm_30/while/lstm_cell/mul_2:z:0!^sequential_10/lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
&sequential_10/lstm_30/while/Identity_5Identity/sequential_10/lstm_30/while/lstm_cell/add_1:z:0!^sequential_10/lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential_10/lstm_30/while/NoOpNoOp=^sequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp<^sequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOp>^sequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_30_while_identity-sequential_10/lstm_30/while/Identity:output:0"Y
&sequential_10_lstm_30_while_identity_1/sequential_10/lstm_30/while/Identity_1:output:0"Y
&sequential_10_lstm_30_while_identity_2/sequential_10/lstm_30/while/Identity_2:output:0"Y
&sequential_10_lstm_30_while_identity_3/sequential_10/lstm_30/while/Identity_3:output:0"Y
&sequential_10_lstm_30_while_identity_4/sequential_10/lstm_30/while/Identity_4:output:0"Y
&sequential_10_lstm_30_while_identity_5/sequential_10/lstm_30/while/Identity_5:output:0"�
Esequential_10_lstm_30_while_lstm_cell_biasadd_readvariableop_resourceGsequential_10_lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0"�
Fsequential_10_lstm_30_while_lstm_cell_matmul_1_readvariableop_resourceHsequential_10_lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0"�
Dsequential_10_lstm_30_while_lstm_cell_matmul_readvariableop_resourceFsequential_10_lstm_30_while_lstm_cell_matmul_readvariableop_resource_0"�
Asequential_10_lstm_30_while_sequential_10_lstm_30_strided_slice_1Csequential_10_lstm_30_while_sequential_10_lstm_30_strided_slice_1_0"�
}sequential_10_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_30_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2|
<sequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp<sequential_10/lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp2z
;sequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOp;sequential_10/lstm_30/while/lstm_cell/MatMul/ReadVariableOp2~
=sequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp=sequential_10/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
lstm_31_while_cond_88286,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3.
*lstm_31_while_less_lstm_31_strided_slice_1C
?lstm_31_while_lstm_31_while_cond_88286___redundant_placeholder0C
?lstm_31_while_lstm_31_while_cond_88286___redundant_placeholder1C
?lstm_31_while_lstm_31_while_cond_88286___redundant_placeholder2C
?lstm_31_while_lstm_31_while_cond_88286___redundant_placeholder3
lstm_31_while_identity
�
lstm_31/while/LessLesslstm_31_while_placeholder*lstm_31_while_less_lstm_31_strided_slice_1*
T0*
_output_shapes
: [
lstm_31/while/IdentityIdentitylstm_31/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_31_while_identitylstm_31/while/Identity:output:0*(
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
�?
�

lstm_30_while_body_88575,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3+
'lstm_30_while_lstm_30_strided_slice_1_0g
clstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0:	�M
:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0:	d�H
9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0:	�
lstm_30_while_identity
lstm_30_while_identity_1
lstm_30_while_identity_2
lstm_30_while_identity_3
lstm_30_while_identity_4
lstm_30_while_identity_5)
%lstm_30_while_lstm_30_strided_slice_1e
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorI
6lstm_30_while_lstm_cell_matmul_readvariableop_resource:	�K
8lstm_30_while_lstm_cell_matmul_1_readvariableop_resource:	d�F
7lstm_30_while_lstm_cell_biasadd_readvariableop_resource:	���.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp�-lstm_30/while/lstm_cell/MatMul/ReadVariableOp�/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp�
?lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0lstm_30_while_placeholderHlstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-lstm_30/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
lstm_30/while/lstm_cell/MatMulMatMul8lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:05lstm_30/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
 lstm_30/while/lstm_cell/MatMul_1MatMullstm_30_while_placeholder_27lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_30/while/lstm_cell/addAddV2(lstm_30/while/lstm_cell/MatMul:product:0*lstm_30/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
lstm_30/while/lstm_cell/BiasAddBiasAddlstm_30/while/lstm_cell/add:z:06lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
'lstm_30/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/while/lstm_cell/splitSplit0lstm_30/while/lstm_cell/split/split_dim:output:0(lstm_30/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_30/while/lstm_cell/SigmoidSigmoid&lstm_30/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
!lstm_30/while/lstm_cell/Sigmoid_1Sigmoid&lstm_30/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mulMul%lstm_30/while/lstm_cell/Sigmoid_1:y:0lstm_30_while_placeholder_3*
T0*'
_output_shapes
:���������d~
lstm_30/while/lstm_cell/ReluRelu&lstm_30/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mul_1Mul#lstm_30/while/lstm_cell/Sigmoid:y:0*lstm_30/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/add_1AddV2lstm_30/while/lstm_cell/mul:z:0!lstm_30/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_30/while/lstm_cell/Sigmoid_2Sigmoid&lstm_30/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d{
lstm_30/while/lstm_cell/Relu_1Relu!lstm_30/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_30/while/lstm_cell/mul_2Mul%lstm_30/while/lstm_cell/Sigmoid_2:y:0,lstm_30/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_30_while_placeholder_1lstm_30_while_placeholder!lstm_30/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_30/while/addAddV2lstm_30_while_placeholderlstm_30/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/while/add_1AddV2(lstm_30_while_lstm_30_while_loop_counterlstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_30/while/IdentityIdentitylstm_30/while/add_1:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_1Identity.lstm_30_while_lstm_30_while_maximum_iterations^lstm_30/while/NoOp*
T0*
_output_shapes
: q
lstm_30/while/Identity_2Identitylstm_30/while/add:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_3IdentityBlstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_30/while/NoOp*
T0*
_output_shapes
: �
lstm_30/while/Identity_4Identity!lstm_30/while/lstm_cell/mul_2:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_30/while/Identity_5Identity!lstm_30/while/lstm_cell/add_1:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_30/while/NoOpNoOp/^lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp.^lstm_30/while/lstm_cell/MatMul/ReadVariableOp0^lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_30_while_identitylstm_30/while/Identity:output:0"=
lstm_30_while_identity_1!lstm_30/while/Identity_1:output:0"=
lstm_30_while_identity_2!lstm_30/while/Identity_2:output:0"=
lstm_30_while_identity_3!lstm_30/while/Identity_3:output:0"=
lstm_30_while_identity_4!lstm_30/while/Identity_4:output:0"=
lstm_30_while_identity_5!lstm_30/while/Identity_5:output:0"P
%lstm_30_while_lstm_30_strided_slice_1'lstm_30_while_lstm_30_strided_slice_1_0"t
7lstm_30_while_lstm_cell_biasadd_readvariableop_resource9lstm_30_while_lstm_cell_biasadd_readvariableop_resource_0"v
8lstm_30_while_lstm_cell_matmul_1_readvariableop_resource:lstm_30_while_lstm_cell_matmul_1_readvariableop_resource_0"r
6lstm_30_while_lstm_cell_matmul_readvariableop_resource8lstm_30_while_lstm_cell_matmul_readvariableop_resource_0"�
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2`
.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp.lstm_30/while/lstm_cell/BiasAdd/ReadVariableOp2^
-lstm_30/while/lstm_cell/MatMul/ReadVariableOp-lstm_30/while/lstm_cell/MatMul/ReadVariableOp2b
/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp/lstm_30/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
�J
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_90362
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while=
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_90278*
condR
while_cond_90277*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_89947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89947___redundant_placeholder03
/while_while_cond_89947___redundant_placeholder13
/while_while_cond_89947___redundant_placeholder23
/while_while_cond_89947___redundant_placeholder3
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
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_87299

inputs 
lstm_30_86975:	� 
lstm_30_86977:	d�
lstm_30_86979:	� 
lstm_31_87125:	d� 
lstm_31_87127:	2�
lstm_31_87129:	�
lstm_32_87275:2(
lstm_32_87277:
(
lstm_32_87279:( 
dense_10_87293:

dense_10_87295:
identity�� dense_10/StatefulPartitionedCall�lstm_30/StatefulPartitionedCall�lstm_31/StatefulPartitionedCall�lstm_32/StatefulPartitionedCall�
lstm_30/StatefulPartitionedCallStatefulPartitionedCallinputslstm_30_86975lstm_30_86977lstm_30_86979*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_86974�
lstm_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_30/StatefulPartitionedCall:output:0lstm_31_87125lstm_31_87127lstm_31_87129*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87124�
lstm_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0lstm_32_87275lstm_32_87277lstm_32_87279*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87274�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_32/StatefulPartitionedCall:output:0dense_10_87293dense_10_87295*
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
GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_87292x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall ^lstm_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2B
lstm_32/StatefulPartitionedCalllstm_32/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
-__inference_sequential_10_layer_call_fn_88089

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
GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_87888o
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
�
&sequential_10_lstm_32_while_cond_85684H
Dsequential_10_lstm_32_while_sequential_10_lstm_32_while_loop_counterN
Jsequential_10_lstm_32_while_sequential_10_lstm_32_while_maximum_iterations+
'sequential_10_lstm_32_while_placeholder-
)sequential_10_lstm_32_while_placeholder_1-
)sequential_10_lstm_32_while_placeholder_2-
)sequential_10_lstm_32_while_placeholder_3J
Fsequential_10_lstm_32_while_less_sequential_10_lstm_32_strided_slice_1_
[sequential_10_lstm_32_while_sequential_10_lstm_32_while_cond_85684___redundant_placeholder0_
[sequential_10_lstm_32_while_sequential_10_lstm_32_while_cond_85684___redundant_placeholder1_
[sequential_10_lstm_32_while_sequential_10_lstm_32_while_cond_85684___redundant_placeholder2_
[sequential_10_lstm_32_while_sequential_10_lstm_32_while_cond_85684___redundant_placeholder3(
$sequential_10_lstm_32_while_identity
�
 sequential_10/lstm_32/while/LessLess'sequential_10_lstm_32_while_placeholderFsequential_10_lstm_32_while_less_sequential_10_lstm_32_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_32/while/IdentityIdentity$sequential_10/lstm_32/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_32_while_identity-sequential_10/lstm_32/while/Identity:output:0*(
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
while_cond_90563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_90563___redundant_placeholder03
/while_while_cond_90563___redundant_placeholder13
/while_while_cond_90563___redundant_placeholder23
/while_while_cond_90563___redundant_placeholder3
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
�I
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_89130
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while=
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_89046*
condR
while_cond_89045*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�

�
lstm_30_while_cond_88147,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3.
*lstm_30_while_less_lstm_30_strided_slice_1C
?lstm_30_while_lstm_30_while_cond_88147___redundant_placeholder0C
?lstm_30_while_lstm_30_while_cond_88147___redundant_placeholder1C
?lstm_30_while_lstm_30_while_cond_88147___redundant_placeholder2C
?lstm_30_while_lstm_30_while_cond_88147___redundant_placeholder3
lstm_30_while_identity
�
lstm_30/while/LessLesslstm_30_while_placeholder*lstm_30_while_less_lstm_30_strided_slice_1*
T0*
_output_shapes
: [
lstm_30/while/IdentityIdentitylstm_30/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_30_while_identitylstm_30/while/Identity:output:0*(
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
��
�
!__inference__traced_restore_91377
file_prefix2
 assignvariableop_dense_10_kernel:
.
 assignvariableop_1_dense_10_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_30_lstm_cell_30_kernel:	�K
8assignvariableop_8_lstm_30_lstm_cell_30_recurrent_kernel:	d�;
,assignvariableop_9_lstm_30_lstm_cell_30_bias:	�B
/assignvariableop_10_lstm_31_lstm_cell_31_kernel:	d�L
9assignvariableop_11_lstm_31_lstm_cell_31_recurrent_kernel:	2�<
-assignvariableop_12_lstm_31_lstm_cell_31_bias:	�A
/assignvariableop_13_lstm_32_lstm_cell_32_kernel:2(K
9assignvariableop_14_lstm_32_lstm_cell_32_recurrent_kernel:
(;
-assignvariableop_15_lstm_32_lstm_cell_32_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_10_kernel_m:
6
(assignvariableop_19_adam_dense_10_bias_m:I
6assignvariableop_20_adam_lstm_30_lstm_cell_30_kernel_m:	�S
@assignvariableop_21_adam_lstm_30_lstm_cell_30_recurrent_kernel_m:	d�C
4assignvariableop_22_adam_lstm_30_lstm_cell_30_bias_m:	�I
6assignvariableop_23_adam_lstm_31_lstm_cell_31_kernel_m:	d�S
@assignvariableop_24_adam_lstm_31_lstm_cell_31_recurrent_kernel_m:	2�C
4assignvariableop_25_adam_lstm_31_lstm_cell_31_bias_m:	�H
6assignvariableop_26_adam_lstm_32_lstm_cell_32_kernel_m:2(R
@assignvariableop_27_adam_lstm_32_lstm_cell_32_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_32_lstm_cell_32_bias_m:(<
*assignvariableop_29_adam_dense_10_kernel_v:
6
(assignvariableop_30_adam_dense_10_bias_v:I
6assignvariableop_31_adam_lstm_30_lstm_cell_30_kernel_v:	�S
@assignvariableop_32_adam_lstm_30_lstm_cell_30_recurrent_kernel_v:	d�C
4assignvariableop_33_adam_lstm_30_lstm_cell_30_bias_v:	�I
6assignvariableop_34_adam_lstm_31_lstm_cell_31_kernel_v:	d�S
@assignvariableop_35_adam_lstm_31_lstm_cell_31_recurrent_kernel_v:	2�C
4assignvariableop_36_adam_lstm_31_lstm_cell_31_bias_v:	�H
6assignvariableop_37_adam_lstm_32_lstm_cell_32_kernel_v:2(R
@assignvariableop_38_adam_lstm_32_lstm_cell_32_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_32_lstm_cell_32_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_30_lstm_cell_30_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_30_lstm_cell_30_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_30_lstm_cell_30_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_31_lstm_cell_31_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_31_lstm_cell_31_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_31_lstm_cell_31_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_32_lstm_cell_32_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_32_lstm_cell_32_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_32_lstm_cell_32_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_10_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_10_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_30_lstm_cell_30_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_30_lstm_cell_30_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_30_lstm_cell_30_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_31_lstm_cell_31_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_31_lstm_cell_31_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_31_lstm_cell_31_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_32_lstm_cell_32_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_32_lstm_cell_32_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_32_lstm_cell_32_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_10_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_10_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_30_lstm_cell_30_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_30_lstm_cell_30_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_30_lstm_cell_30_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_31_lstm_cell_31_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_31_lstm_cell_31_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_31_lstm_cell_31_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_32_lstm_cell_32_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_32_lstm_cell_32_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_32_lstm_cell_32_bias_vIdentity_39:output:0"/device:CPU:0*
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
�
�
while_cond_90706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_90706___redundant_placeholder03
/while_while_cond_90706___redundant_placeholder13
/while_while_cond_90706___redundant_placeholder23
/while_while_cond_90706___redundant_placeholder3
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
�6
�
while_body_89332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
�
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86688

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
�7
�
while_body_90707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_87888

inputs 
lstm_30_87861:	� 
lstm_30_87863:	d�
lstm_30_87865:	� 
lstm_31_87868:	d� 
lstm_31_87870:	2�
lstm_31_87872:	�
lstm_32_87875:2(
lstm_32_87877:
(
lstm_32_87879:( 
dense_10_87882:

dense_10_87884:
identity�� dense_10/StatefulPartitionedCall�lstm_30/StatefulPartitionedCall�lstm_31/StatefulPartitionedCall�lstm_32/StatefulPartitionedCall�
lstm_30/StatefulPartitionedCallStatefulPartitionedCallinputslstm_30_87861lstm_30_87863lstm_30_87865*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_87820�
lstm_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_30/StatefulPartitionedCall:output:0lstm_31_87868lstm_31_87870lstm_31_87872*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87655�
lstm_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0lstm_32_87875lstm_32_87877lstm_32_87879*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87490�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_32/StatefulPartitionedCall:output:0dense_10_87882dense_10_87884*
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
GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_87292x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall ^lstm_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2B
lstm_32/StatefulPartitionedCalllstm_32/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�7
�
while_body_87571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
�7
�
while_body_90421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
�
�
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86542

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
�
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_90974

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
�
�
'__inference_lstm_30_layer_call_fn_88976

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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_86974s
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
�7
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_86816

inputs#
lstm_cell_2_86734:2(#
lstm_cell_2_86736:
(
lstm_cell_2_86738:(
identity��#lstm_cell_2/StatefulPartitionedCall�while;
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
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_86734lstm_cell_2_86736lstm_cell_2_86738*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86688n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_86734lstm_cell_2_86736lstm_cell_2_86738*
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
bodyR
while_body_86747*
condR
while_cond_86746*K
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
t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�I
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_90648

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_90564*
condR
while_cond_90563*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
'__inference_lstm_30_layer_call_fn_88954
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_85925|
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
'__inference_lstm_31_layer_call_fn_89570
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_86275|
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
�
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85988

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
�7
�
while_body_90091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
�Q
�
&sequential_10_lstm_32_while_body_85685H
Dsequential_10_lstm_32_while_sequential_10_lstm_32_while_loop_counterN
Jsequential_10_lstm_32_while_sequential_10_lstm_32_while_maximum_iterations+
'sequential_10_lstm_32_while_placeholder-
)sequential_10_lstm_32_while_placeholder_1-
)sequential_10_lstm_32_while_placeholder_2-
)sequential_10_lstm_32_while_placeholder_3G
Csequential_10_lstm_32_while_sequential_10_lstm_32_strided_slice_1_0�
sequential_10_lstm_32_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_32_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_10_lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0:2(\
Jsequential_10_lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(W
Isequential_10_lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0:((
$sequential_10_lstm_32_while_identity*
&sequential_10_lstm_32_while_identity_1*
&sequential_10_lstm_32_while_identity_2*
&sequential_10_lstm_32_while_identity_3*
&sequential_10_lstm_32_while_identity_4*
&sequential_10_lstm_32_while_identity_5E
Asequential_10_lstm_32_while_sequential_10_lstm_32_strided_slice_1�
}sequential_10_lstm_32_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_32_tensorarrayunstack_tensorlistfromtensorX
Fsequential_10_lstm_32_while_lstm_cell_2_matmul_readvariableop_resource:2(Z
Hsequential_10_lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource:
(U
Gsequential_10_lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource:(��>sequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp�=sequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp�?sequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp�
Msequential_10/lstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_10/lstm_32/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_32_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_32_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_32_while_placeholderVsequential_10/lstm_32/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
=sequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpHsequential_10_lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
.sequential_10/lstm_32/while/lstm_cell_2/MatMulMatMulFsequential_10/lstm_32/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
?sequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpJsequential_10_lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
0sequential_10/lstm_32/while/lstm_cell_2/MatMul_1MatMul)sequential_10_lstm_32_while_placeholder_2Gsequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+sequential_10/lstm_32/while/lstm_cell_2/addAddV28sequential_10/lstm_32/while/lstm_cell_2/MatMul:product:0:sequential_10/lstm_32/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
>sequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpIsequential_10_lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
/sequential_10/lstm_32/while/lstm_cell_2/BiasAddBiasAdd/sequential_10/lstm_32/while/lstm_cell_2/add:z:0Fsequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(y
7sequential_10/lstm_32/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_10/lstm_32/while/lstm_cell_2/splitSplit@sequential_10/lstm_32/while/lstm_cell_2/split/split_dim:output:08sequential_10/lstm_32/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
/sequential_10/lstm_32/while/lstm_cell_2/SigmoidSigmoid6sequential_10/lstm_32/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
�
1sequential_10/lstm_32/while/lstm_cell_2/Sigmoid_1Sigmoid6sequential_10/lstm_32/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
+sequential_10/lstm_32/while/lstm_cell_2/mulMul5sequential_10/lstm_32/while/lstm_cell_2/Sigmoid_1:y:0)sequential_10_lstm_32_while_placeholder_3*
T0*'
_output_shapes
:���������
�
,sequential_10/lstm_32/while/lstm_cell_2/ReluRelu6sequential_10/lstm_32/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
-sequential_10/lstm_32/while/lstm_cell_2/mul_1Mul3sequential_10/lstm_32/while/lstm_cell_2/Sigmoid:y:0:sequential_10/lstm_32/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
-sequential_10/lstm_32/while/lstm_cell_2/add_1AddV2/sequential_10/lstm_32/while/lstm_cell_2/mul:z:01sequential_10/lstm_32/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_10/lstm_32/while/lstm_cell_2/Sigmoid_2Sigmoid6sequential_10/lstm_32/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
�
.sequential_10/lstm_32/while/lstm_cell_2/Relu_1Relu1sequential_10/lstm_32/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_10/lstm_32/while/lstm_cell_2/mul_2Mul5sequential_10/lstm_32/while/lstm_cell_2/Sigmoid_2:y:0<sequential_10/lstm_32/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
@sequential_10/lstm_32/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_32_while_placeholder_1'sequential_10_lstm_32_while_placeholder1sequential_10/lstm_32/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_10/lstm_32/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_10/lstm_32/while/addAddV2'sequential_10_lstm_32_while_placeholder*sequential_10/lstm_32/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_32/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_10/lstm_32/while/add_1AddV2Dsequential_10_lstm_32_while_sequential_10_lstm_32_while_loop_counter,sequential_10/lstm_32/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_10/lstm_32/while/IdentityIdentity%sequential_10/lstm_32/while/add_1:z:0!^sequential_10/lstm_32/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_32/while/Identity_1IdentityJsequential_10_lstm_32_while_sequential_10_lstm_32_while_maximum_iterations!^sequential_10/lstm_32/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_32/while/Identity_2Identity#sequential_10/lstm_32/while/add:z:0!^sequential_10/lstm_32/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_32/while/Identity_3IdentityPsequential_10/lstm_32/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_32/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_32/while/Identity_4Identity1sequential_10/lstm_32/while/lstm_cell_2/mul_2:z:0!^sequential_10/lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
&sequential_10/lstm_32/while/Identity_5Identity1sequential_10/lstm_32/while/lstm_cell_2/add_1:z:0!^sequential_10/lstm_32/while/NoOp*
T0*'
_output_shapes
:���������
�
 sequential_10/lstm_32/while/NoOpNoOp?^sequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp>^sequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp@^sequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_32_while_identity-sequential_10/lstm_32/while/Identity:output:0"Y
&sequential_10_lstm_32_while_identity_1/sequential_10/lstm_32/while/Identity_1:output:0"Y
&sequential_10_lstm_32_while_identity_2/sequential_10/lstm_32/while/Identity_2:output:0"Y
&sequential_10_lstm_32_while_identity_3/sequential_10/lstm_32/while/Identity_3:output:0"Y
&sequential_10_lstm_32_while_identity_4/sequential_10/lstm_32/while/Identity_4:output:0"Y
&sequential_10_lstm_32_while_identity_5/sequential_10/lstm_32/while/Identity_5:output:0"�
Gsequential_10_lstm_32_while_lstm_cell_2_biasadd_readvariableop_resourceIsequential_10_lstm_32_while_lstm_cell_2_biasadd_readvariableop_resource_0"�
Hsequential_10_lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resourceJsequential_10_lstm_32_while_lstm_cell_2_matmul_1_readvariableop_resource_0"�
Fsequential_10_lstm_32_while_lstm_cell_2_matmul_readvariableop_resourceHsequential_10_lstm_32_while_lstm_cell_2_matmul_readvariableop_resource_0"�
Asequential_10_lstm_32_while_sequential_10_lstm_32_strided_slice_1Csequential_10_lstm_32_while_sequential_10_lstm_32_strided_slice_1_0"�
}sequential_10_lstm_32_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_32_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_32_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_32_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
>sequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp>sequential_10/lstm_32/while/lstm_cell_2/BiasAdd/ReadVariableOp2~
=sequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp=sequential_10/lstm_32/while/lstm_cell_2/MatMul/ReadVariableOp2�
?sequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp?sequential_10/lstm_32/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
��
�

H__inference_sequential_10_layer_call_and_return_conditional_losses_88516

inputsC
0lstm_30_lstm_cell_matmul_readvariableop_resource:	�E
2lstm_30_lstm_cell_matmul_1_readvariableop_resource:	d�@
1lstm_30_lstm_cell_biasadd_readvariableop_resource:	�E
2lstm_31_lstm_cell_1_matmul_readvariableop_resource:	d�G
4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource:	2�B
3lstm_31_lstm_cell_1_biasadd_readvariableop_resource:	�D
2lstm_32_lstm_cell_2_matmul_readvariableop_resource:2(F
4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource:
(A
3lstm_32_lstm_cell_2_biasadd_readvariableop_resource:(9
'dense_10_matmul_readvariableop_resource:
6
(dense_10_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�(lstm_30/lstm_cell/BiasAdd/ReadVariableOp�'lstm_30/lstm_cell/MatMul/ReadVariableOp�)lstm_30/lstm_cell/MatMul_1/ReadVariableOp�lstm_30/while�*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp�)lstm_31/lstm_cell_1/MatMul/ReadVariableOp�+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp�lstm_31/while�*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp�)lstm_32/lstm_cell_2/MatMul/ReadVariableOp�+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp�lstm_32/whileC
lstm_30/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_sliceStridedSlicelstm_30/Shape:output:0$lstm_30/strided_slice/stack:output:0&lstm_30/strided_slice/stack_1:output:0&lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_30/zeros/packedPacklstm_30/strided_slice:output:0lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_30/zerosFilllstm_30/zeros/packed:output:0lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_30/zeros_1/packedPacklstm_30/strided_slice:output:0!lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_30/zeros_1Filllstm_30/zeros_1/packed:output:0lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_30/transpose	Transposeinputslstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_30/Shape_1Shapelstm_30/transpose:y:0*
T0*
_output_shapes
:g
lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_1StridedSlicelstm_30/Shape_1:output:0&lstm_30/strided_slice_1/stack:output:0(lstm_30/strided_slice_1/stack_1:output:0(lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_30/TensorArrayV2TensorListReserve,lstm_30/TensorArrayV2/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_30/transpose:y:0Flstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_2StridedSlicelstm_30/transpose:y:0&lstm_30/strided_slice_2/stack:output:0(lstm_30/strided_slice_2/stack_1:output:0(lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'lstm_30/lstm_cell/MatMul/ReadVariableOpReadVariableOp0lstm_30_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_30/lstm_cell/MatMulMatMul lstm_30/strided_slice_2:output:0/lstm_30/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)lstm_30/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2lstm_30_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_30/lstm_cell/MatMul_1MatMullstm_30/zeros:output:01lstm_30/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_30/lstm_cell/addAddV2"lstm_30/lstm_cell/MatMul:product:0$lstm_30/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(lstm_30/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1lstm_30_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_30/lstm_cell/BiasAddBiasAddlstm_30/lstm_cell/add:z:00lstm_30/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!lstm_30/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_30/lstm_cell/splitSplit*lstm_30/lstm_cell/split/split_dim:output:0"lstm_30/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitx
lstm_30/lstm_cell/SigmoidSigmoid lstm_30/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dz
lstm_30/lstm_cell/Sigmoid_1Sigmoid lstm_30/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mulMullstm_30/lstm_cell/Sigmoid_1:y:0lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:���������dr
lstm_30/lstm_cell/ReluRelu lstm_30/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mul_1Mullstm_30/lstm_cell/Sigmoid:y:0$lstm_30/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/add_1AddV2lstm_30/lstm_cell/mul:z:0lstm_30/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dz
lstm_30/lstm_cell/Sigmoid_2Sigmoid lstm_30/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������do
lstm_30/lstm_cell/Relu_1Relulstm_30/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_30/lstm_cell/mul_2Mullstm_30/lstm_cell/Sigmoid_2:y:0&lstm_30/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_30/TensorArrayV2_1TensorListReserve.lstm_30/TensorArrayV2_1/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_30/whileWhile#lstm_30/while/loop_counter:output:0)lstm_30/while/maximum_iterations:output:0lstm_30/time:output:0 lstm_30/TensorArrayV2_1:handle:0lstm_30/zeros:output:0lstm_30/zeros_1:output:0 lstm_30/strided_slice_1:output:0?lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_30_lstm_cell_matmul_readvariableop_resource2lstm_30_lstm_cell_matmul_1_readvariableop_resource1lstm_30_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_30_while_body_88148*$
condR
lstm_30_while_cond_88147*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_30/TensorArrayV2Stack/TensorListStackTensorListStacklstm_30/while:output:3Alstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_30/strided_slice_3StridedSlice3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_30/strided_slice_3/stack:output:0(lstm_30/strided_slice_3/stack_1:output:0(lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_30/transpose_1	Transpose3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_31/ShapeShapelstm_30/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_sliceStridedSlicelstm_31/Shape:output:0$lstm_31/strided_slice/stack:output:0&lstm_31/strided_slice/stack_1:output:0&lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_31/zeros/packedPacklstm_31/strided_slice:output:0lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_31/zerosFilllstm_31/zeros/packed:output:0lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_31/zeros_1/packedPacklstm_31/strided_slice:output:0!lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_31/zeros_1Filllstm_31/zeros_1/packed:output:0lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_31/transpose	Transposelstm_30/transpose_1:y:0lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_31/Shape_1Shapelstm_31/transpose:y:0*
T0*
_output_shapes
:g
lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_1StridedSlicelstm_31/Shape_1:output:0&lstm_31/strided_slice_1/stack:output:0(lstm_31/strided_slice_1/stack_1:output:0(lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_31/TensorArrayV2TensorListReserve,lstm_31/TensorArrayV2/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_31/transpose:y:0Flstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_2StridedSlicelstm_31/transpose:y:0&lstm_31/strided_slice_2/stack:output:0(lstm_31/strided_slice_2/stack_1:output:0(lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
)lstm_31/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2lstm_31_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_31/lstm_cell_1/MatMulMatMul lstm_31/strided_slice_2:output:01lstm_31/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_31/lstm_cell_1/MatMul_1MatMullstm_31/zeros:output:03lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_31/lstm_cell_1/addAddV2$lstm_31/lstm_cell_1/MatMul:product:0&lstm_31/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_31/lstm_cell_1/BiasAddBiasAddlstm_31/lstm_cell_1/add:z:02lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#lstm_31/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/lstm_cell_1/splitSplit,lstm_31/lstm_cell_1/split/split_dim:output:0$lstm_31/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
lstm_31/lstm_cell_1/SigmoidSigmoid"lstm_31/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2~
lstm_31/lstm_cell_1/Sigmoid_1Sigmoid"lstm_31/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mulMul!lstm_31/lstm_cell_1/Sigmoid_1:y:0lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:���������2v
lstm_31/lstm_cell_1/ReluRelu"lstm_31/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mul_1Mullstm_31/lstm_cell_1/Sigmoid:y:0&lstm_31/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/add_1AddV2lstm_31/lstm_cell_1/mul:z:0lstm_31/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2~
lstm_31/lstm_cell_1/Sigmoid_2Sigmoid"lstm_31/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2s
lstm_31/lstm_cell_1/Relu_1Relulstm_31/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_31/lstm_cell_1/mul_2Mul!lstm_31/lstm_cell_1/Sigmoid_2:y:0(lstm_31/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_31/TensorArrayV2_1TensorListReserve.lstm_31/TensorArrayV2_1/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_31/whileWhile#lstm_31/while/loop_counter:output:0)lstm_31/while/maximum_iterations:output:0lstm_31/time:output:0 lstm_31/TensorArrayV2_1:handle:0lstm_31/zeros:output:0lstm_31/zeros_1:output:0 lstm_31/strided_slice_1:output:0?lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_31_lstm_cell_1_matmul_readvariableop_resource4lstm_31_lstm_cell_1_matmul_1_readvariableop_resource3lstm_31_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_31_while_body_88287*$
condR
lstm_31_while_cond_88286*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_31/TensorArrayV2Stack/TensorListStackTensorListStacklstm_31/while:output:3Alstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_31/strided_slice_3StridedSlice3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_31/strided_slice_3/stack:output:0(lstm_31/strided_slice_3/stack_1:output:0(lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_31/transpose_1	Transpose3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_32/ShapeShapelstm_31/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_sliceStridedSlicelstm_32/Shape:output:0$lstm_32/strided_slice/stack:output:0&lstm_32/strided_slice/stack_1:output:0&lstm_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_32/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_32/zeros/packedPacklstm_32/strided_slice:output:0lstm_32/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_32/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_32/zerosFilllstm_32/zeros/packed:output:0lstm_32/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_32/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_32/zeros_1/packedPacklstm_32/strided_slice:output:0!lstm_32/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_32/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_32/zeros_1Filllstm_32/zeros_1/packed:output:0lstm_32/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_32/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_32/transpose	Transposelstm_31/transpose_1:y:0lstm_32/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_32/Shape_1Shapelstm_32/transpose:y:0*
T0*
_output_shapes
:g
lstm_32/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_32/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_1StridedSlicelstm_32/Shape_1:output:0&lstm_32/strided_slice_1/stack:output:0(lstm_32/strided_slice_1/stack_1:output:0(lstm_32/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_32/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_32/TensorArrayV2TensorListReserve,lstm_32/TensorArrayV2/element_shape:output:0 lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_32/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_32/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_32/transpose:y:0Flstm_32/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_32/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_32/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_2StridedSlicelstm_32/transpose:y:0&lstm_32/strided_slice_2/stack:output:0(lstm_32/strided_slice_2/stack_1:output:0(lstm_32/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
)lstm_32/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2lstm_32_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_32/lstm_cell_2/MatMulMatMul lstm_32/strided_slice_2:output:01lstm_32/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_32/lstm_cell_2/MatMul_1MatMullstm_32/zeros:output:03lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_32/lstm_cell_2/addAddV2$lstm_32/lstm_cell_2/MatMul:product:0&lstm_32/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_32/lstm_cell_2/BiasAddBiasAddlstm_32/lstm_cell_2/add:z:02lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#lstm_32/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_32/lstm_cell_2/splitSplit,lstm_32/lstm_cell_2/split/split_dim:output:0$lstm_32/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
lstm_32/lstm_cell_2/SigmoidSigmoid"lstm_32/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
~
lstm_32/lstm_cell_2/Sigmoid_1Sigmoid"lstm_32/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mulMul!lstm_32/lstm_cell_2/Sigmoid_1:y:0lstm_32/zeros_1:output:0*
T0*'
_output_shapes
:���������
v
lstm_32/lstm_cell_2/ReluRelu"lstm_32/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mul_1Mullstm_32/lstm_cell_2/Sigmoid:y:0&lstm_32/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/add_1AddV2lstm_32/lstm_cell_2/mul:z:0lstm_32/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
~
lstm_32/lstm_cell_2/Sigmoid_2Sigmoid"lstm_32/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
s
lstm_32/lstm_cell_2/Relu_1Relulstm_32/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_32/lstm_cell_2/mul_2Mul!lstm_32/lstm_cell_2/Sigmoid_2:y:0(lstm_32/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_32/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_32/TensorArrayV2_1TensorListReserve.lstm_32/TensorArrayV2_1/element_shape:output:0 lstm_32/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_32/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_32/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_32/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_32/whileWhile#lstm_32/while/loop_counter:output:0)lstm_32/while/maximum_iterations:output:0lstm_32/time:output:0 lstm_32/TensorArrayV2_1:handle:0lstm_32/zeros:output:0lstm_32/zeros_1:output:0 lstm_32/strided_slice_1:output:0?lstm_32/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_32_lstm_cell_2_matmul_readvariableop_resource4lstm_32_lstm_cell_2_matmul_1_readvariableop_resource3lstm_32_lstm_cell_2_biasadd_readvariableop_resource*
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
_stateful_parallelism( *$
bodyR
lstm_32_while_body_88426*$
condR
lstm_32_while_cond_88425*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_32/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_32/TensorArrayV2Stack/TensorListStackTensorListStacklstm_32/while:output:3Alstm_32/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_32/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_32/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_32/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_32/strided_slice_3StridedSlice3lstm_32/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_32/strided_slice_3/stack:output:0(lstm_32/strided_slice_3/stack_1:output:0(lstm_32/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_32/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_32/transpose_1	Transpose3lstm_32/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_32/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_32/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_10/MatMulMatMul lstm_32/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp)^lstm_30/lstm_cell/BiasAdd/ReadVariableOp(^lstm_30/lstm_cell/MatMul/ReadVariableOp*^lstm_30/lstm_cell/MatMul_1/ReadVariableOp^lstm_30/while+^lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp*^lstm_31/lstm_cell_1/MatMul/ReadVariableOp,^lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_31/while+^lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp*^lstm_32/lstm_cell_2/MatMul/ReadVariableOp,^lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_32/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2T
(lstm_30/lstm_cell/BiasAdd/ReadVariableOp(lstm_30/lstm_cell/BiasAdd/ReadVariableOp2R
'lstm_30/lstm_cell/MatMul/ReadVariableOp'lstm_30/lstm_cell/MatMul/ReadVariableOp2V
)lstm_30/lstm_cell/MatMul_1/ReadVariableOp)lstm_30/lstm_cell/MatMul_1/ReadVariableOp2
lstm_30/whilelstm_30/while2X
*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp*lstm_31/lstm_cell_1/BiasAdd/ReadVariableOp2V
)lstm_31/lstm_cell_1/MatMul/ReadVariableOp)lstm_31/lstm_cell_1/MatMul/ReadVariableOp2Z
+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp+lstm_31/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_31/whilelstm_31/while2X
*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp*lstm_32/lstm_cell_2/BiasAdd/ReadVariableOp2V
)lstm_32/lstm_cell_2/MatMul/ReadVariableOp)lstm_32/lstm_cell_2/MatMul/ReadVariableOp2Z
+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp+lstm_32/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_32/whilelstm_32/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_lstm_cell_2_layer_call_fn_91023

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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86542o
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
�H
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_89559

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_89475*
condR
while_cond_89474*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�I
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_87274

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_87190*
condR
while_cond_87189*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_85855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_85855___redundant_placeholder03
/while_while_cond_85855___redundant_placeholder13
/while_while_cond_85855___redundant_placeholder23
/while_while_cond_85855___redundant_placeholder3
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
while_cond_86205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86205___redundant_placeholder03
/while_while_cond_86205___redundant_placeholder13
/while_while_cond_86205___redundant_placeholder23
/while_while_cond_86205___redundant_placeholder3
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
�I
�
B__inference_lstm_32_layer_call_and_return_conditional_losses_90791

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_90707*
condR
while_cond_90706*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�"
�
while_body_86556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_2_86580_0:2(+
while_lstm_cell_2_86582_0:
('
while_lstm_cell_2_86584_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_2_86580:2()
while_lstm_cell_2_86582:
(%
while_lstm_cell_2_86584:(��)while/lstm_cell_2/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_86580_0while_lstm_cell_2_86582_0while_lstm_cell_2_86584_0*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86542�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_86580while_lstm_cell_2_86580_0"4
while_lstm_cell_2_86582while_lstm_cell_2_86582_0"4
while_lstm_cell_2_86584while_lstm_cell_2_86584_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
�@
�

lstm_31_while_body_88287,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3+
'lstm_31_while_lstm_31_strided_slice_1_0g
clstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0:	d�O
<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�J
;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
lstm_31_while_identity
lstm_31_while_identity_1
lstm_31_while_identity_2
lstm_31_while_identity_3
lstm_31_while_identity_4
lstm_31_while_identity_5)
%lstm_31_while_lstm_31_strided_slice_1e
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorK
8lstm_31_while_lstm_cell_1_matmul_readvariableop_resource:	d�M
:lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource:	2�H
9lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource:	���0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp�/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp�1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp�
?lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0lstm_31_while_placeholderHlstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
 lstm_31/while/lstm_cell_1/MatMulMatMul8lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
"lstm_31/while/lstm_cell_1/MatMul_1MatMullstm_31_while_placeholder_29lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_31/while/lstm_cell_1/addAddV2*lstm_31/while/lstm_cell_1/MatMul:product:0,lstm_31/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
!lstm_31/while/lstm_cell_1/BiasAddBiasAdd!lstm_31/while/lstm_cell_1/add:z:08lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)lstm_31/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/while/lstm_cell_1/splitSplit2lstm_31/while/lstm_cell_1/split/split_dim:output:0*lstm_31/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
!lstm_31/while/lstm_cell_1/SigmoidSigmoid(lstm_31/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2�
#lstm_31/while/lstm_cell_1/Sigmoid_1Sigmoid(lstm_31/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mulMul'lstm_31/while/lstm_cell_1/Sigmoid_1:y:0lstm_31_while_placeholder_3*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/ReluRelu(lstm_31/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mul_1Mul%lstm_31/while/lstm_cell_1/Sigmoid:y:0,lstm_31/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/add_1AddV2!lstm_31/while/lstm_cell_1/mul:z:0#lstm_31/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2�
#lstm_31/while/lstm_cell_1/Sigmoid_2Sigmoid(lstm_31/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2
 lstm_31/while/lstm_cell_1/Relu_1Relu#lstm_31/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_31/while/lstm_cell_1/mul_2Mul'lstm_31/while/lstm_cell_1/Sigmoid_2:y:0.lstm_31/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_31_while_placeholder_1lstm_31_while_placeholder#lstm_31/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_31/while/addAddV2lstm_31_while_placeholderlstm_31/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_31/while/add_1AddV2(lstm_31_while_lstm_31_while_loop_counterlstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_31/while/IdentityIdentitylstm_31/while/add_1:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_1Identity.lstm_31_while_lstm_31_while_maximum_iterations^lstm_31/while/NoOp*
T0*
_output_shapes
: q
lstm_31/while/Identity_2Identitylstm_31/while/add:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_3IdentityBlstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_31/while/NoOp*
T0*
_output_shapes
: �
lstm_31/while/Identity_4Identity#lstm_31/while/lstm_cell_1/mul_2:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_31/while/Identity_5Identity#lstm_31/while/lstm_cell_1/add_1:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_31/while/NoOpNoOp1^lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp0^lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp2^lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_31_while_identitylstm_31/while/Identity:output:0"=
lstm_31_while_identity_1!lstm_31/while/Identity_1:output:0"=
lstm_31_while_identity_2!lstm_31/while/Identity_2:output:0"=
lstm_31_while_identity_3!lstm_31/while/Identity_3:output:0"=
lstm_31_while_identity_4!lstm_31/while/Identity_4:output:0"=
lstm_31_while_identity_5!lstm_31/while/Identity_5:output:0"P
%lstm_31_while_lstm_31_strided_slice_1'lstm_31_while_lstm_31_strided_slice_1_0"x
9lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource;lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0"z
:lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource<lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0"v
8lstm_31_while_lstm_cell_1_matmul_readvariableop_resource:lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0"�
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2d
0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp0lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp2b
/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp2f
1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp1lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
lstm_30_while_cond_88574,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3.
*lstm_30_while_less_lstm_30_strided_slice_1C
?lstm_30_while_lstm_30_while_cond_88574___redundant_placeholder0C
?lstm_30_while_lstm_30_while_cond_88574___redundant_placeholder1C
?lstm_30_while_lstm_30_while_cond_88574___redundant_placeholder2C
?lstm_30_while_lstm_30_while_cond_88574___redundant_placeholder3
lstm_30_while_identity
�
lstm_30/while/LessLesslstm_30_while_placeholder*lstm_30_while_less_lstm_30_strided_slice_1*
T0*
_output_shapes
: [
lstm_30/while/IdentityIdentitylstm_30/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_30_while_identitylstm_30/while/Identity:output:0*(
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
�Q
�
&sequential_10_lstm_31_while_body_85546H
Dsequential_10_lstm_31_while_sequential_10_lstm_31_while_loop_counterN
Jsequential_10_lstm_31_while_sequential_10_lstm_31_while_maximum_iterations+
'sequential_10_lstm_31_while_placeholder-
)sequential_10_lstm_31_while_placeholder_1-
)sequential_10_lstm_31_while_placeholder_2-
)sequential_10_lstm_31_while_placeholder_3G
Csequential_10_lstm_31_while_sequential_10_lstm_31_strided_slice_1_0�
sequential_10_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_31_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_10_lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0:	d�]
Jsequential_10_lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�X
Isequential_10_lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�(
$sequential_10_lstm_31_while_identity*
&sequential_10_lstm_31_while_identity_1*
&sequential_10_lstm_31_while_identity_2*
&sequential_10_lstm_31_while_identity_3*
&sequential_10_lstm_31_while_identity_4*
&sequential_10_lstm_31_while_identity_5E
Asequential_10_lstm_31_while_sequential_10_lstm_31_strided_slice_1�
}sequential_10_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_31_tensorarrayunstack_tensorlistfromtensorY
Fsequential_10_lstm_31_while_lstm_cell_1_matmul_readvariableop_resource:	d�[
Hsequential_10_lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource:	2�V
Gsequential_10_lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource:	���>sequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp�=sequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp�?sequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp�
Msequential_10/lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_10/lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_31_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_31_while_placeholderVsequential_10/lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
=sequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpHsequential_10_lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
.sequential_10/lstm_31/while/lstm_cell_1/MatMulMatMulFsequential_10/lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?sequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpJsequential_10_lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
0sequential_10/lstm_31/while/lstm_cell_1/MatMul_1MatMul)sequential_10_lstm_31_while_placeholder_2Gsequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_10/lstm_31/while/lstm_cell_1/addAddV28sequential_10/lstm_31/while/lstm_cell_1/MatMul:product:0:sequential_10/lstm_31/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
>sequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpIsequential_10_lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
/sequential_10/lstm_31/while/lstm_cell_1/BiasAddBiasAdd/sequential_10/lstm_31/while/lstm_cell_1/add:z:0Fsequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
7sequential_10/lstm_31/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_10/lstm_31/while/lstm_cell_1/splitSplit@sequential_10/lstm_31/while/lstm_cell_1/split/split_dim:output:08sequential_10/lstm_31/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
/sequential_10/lstm_31/while/lstm_cell_1/SigmoidSigmoid6sequential_10/lstm_31/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2�
1sequential_10/lstm_31/while/lstm_cell_1/Sigmoid_1Sigmoid6sequential_10/lstm_31/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
+sequential_10/lstm_31/while/lstm_cell_1/mulMul5sequential_10/lstm_31/while/lstm_cell_1/Sigmoid_1:y:0)sequential_10_lstm_31_while_placeholder_3*
T0*'
_output_shapes
:���������2�
,sequential_10/lstm_31/while/lstm_cell_1/ReluRelu6sequential_10/lstm_31/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
-sequential_10/lstm_31/while/lstm_cell_1/mul_1Mul3sequential_10/lstm_31/while/lstm_cell_1/Sigmoid:y:0:sequential_10/lstm_31/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
-sequential_10/lstm_31/while/lstm_cell_1/add_1AddV2/sequential_10/lstm_31/while/lstm_cell_1/mul:z:01sequential_10/lstm_31/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_10/lstm_31/while/lstm_cell_1/Sigmoid_2Sigmoid6sequential_10/lstm_31/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2�
.sequential_10/lstm_31/while/lstm_cell_1/Relu_1Relu1sequential_10/lstm_31/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_10/lstm_31/while/lstm_cell_1/mul_2Mul5sequential_10/lstm_31/while/lstm_cell_1/Sigmoid_2:y:0<sequential_10/lstm_31/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
@sequential_10/lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_31_while_placeholder_1'sequential_10_lstm_31_while_placeholder1sequential_10/lstm_31/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_10/lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_10/lstm_31/while/addAddV2'sequential_10_lstm_31_while_placeholder*sequential_10/lstm_31/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_10/lstm_31/while/add_1AddV2Dsequential_10_lstm_31_while_sequential_10_lstm_31_while_loop_counter,sequential_10/lstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_10/lstm_31/while/IdentityIdentity%sequential_10/lstm_31/while/add_1:z:0!^sequential_10/lstm_31/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_31/while/Identity_1IdentityJsequential_10_lstm_31_while_sequential_10_lstm_31_while_maximum_iterations!^sequential_10/lstm_31/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_31/while/Identity_2Identity#sequential_10/lstm_31/while/add:z:0!^sequential_10/lstm_31/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_31/while/Identity_3IdentityPsequential_10/lstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_31/while/NoOp*
T0*
_output_shapes
: �
&sequential_10/lstm_31/while/Identity_4Identity1sequential_10/lstm_31/while/lstm_cell_1/mul_2:z:0!^sequential_10/lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_10/lstm_31/while/Identity_5Identity1sequential_10/lstm_31/while/lstm_cell_1/add_1:z:0!^sequential_10/lstm_31/while/NoOp*
T0*'
_output_shapes
:���������2�
 sequential_10/lstm_31/while/NoOpNoOp?^sequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp>^sequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp@^sequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_31_while_identity-sequential_10/lstm_31/while/Identity:output:0"Y
&sequential_10_lstm_31_while_identity_1/sequential_10/lstm_31/while/Identity_1:output:0"Y
&sequential_10_lstm_31_while_identity_2/sequential_10/lstm_31/while/Identity_2:output:0"Y
&sequential_10_lstm_31_while_identity_3/sequential_10/lstm_31/while/Identity_3:output:0"Y
&sequential_10_lstm_31_while_identity_4/sequential_10/lstm_31/while/Identity_4:output:0"Y
&sequential_10_lstm_31_while_identity_5/sequential_10/lstm_31/while/Identity_5:output:0"�
Gsequential_10_lstm_31_while_lstm_cell_1_biasadd_readvariableop_resourceIsequential_10_lstm_31_while_lstm_cell_1_biasadd_readvariableop_resource_0"�
Hsequential_10_lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resourceJsequential_10_lstm_31_while_lstm_cell_1_matmul_1_readvariableop_resource_0"�
Fsequential_10_lstm_31_while_lstm_cell_1_matmul_readvariableop_resourceHsequential_10_lstm_31_while_lstm_cell_1_matmul_readvariableop_resource_0"�
Asequential_10_lstm_31_while_sequential_10_lstm_31_strided_slice_1Csequential_10_lstm_31_while_sequential_10_lstm_31_strided_slice_1_0"�
}sequential_10_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_31_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
>sequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp>sequential_10/lstm_31/while/lstm_cell_1/BiasAdd/ReadVariableOp2~
=sequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp=sequential_10/lstm_31/while/lstm_cell_1/MatMul/ReadVariableOp2�
?sequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp?sequential_10/lstm_31/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86338

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
�6
�
while_body_86890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
�"
�
while_body_85856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_85880_0:	�*
while_lstm_cell_85882_0:	d�&
while_lstm_cell_85884_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_85880:	�(
while_lstm_cell_85882:	d�$
while_lstm_cell_85884:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_85880_0while_lstm_cell_85882_0while_lstm_cell_85884_0*
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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85842�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_85880while_lstm_cell_85880_0"0
while_lstm_cell_85882while_lstm_cell_85882_0"0
while_lstm_cell_85884while_lstm_cell_85884_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
+__inference_lstm_cell_2_layer_call_fn_91040

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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86688o
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
�
+__inference_lstm_cell_1_layer_call_fn_90942

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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86338o
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
�
&sequential_10_lstm_30_while_cond_85406H
Dsequential_10_lstm_30_while_sequential_10_lstm_30_while_loop_counterN
Jsequential_10_lstm_30_while_sequential_10_lstm_30_while_maximum_iterations+
'sequential_10_lstm_30_while_placeholder-
)sequential_10_lstm_30_while_placeholder_1-
)sequential_10_lstm_30_while_placeholder_2-
)sequential_10_lstm_30_while_placeholder_3J
Fsequential_10_lstm_30_while_less_sequential_10_lstm_30_strided_slice_1_
[sequential_10_lstm_30_while_sequential_10_lstm_30_while_cond_85406___redundant_placeholder0_
[sequential_10_lstm_30_while_sequential_10_lstm_30_while_cond_85406___redundant_placeholder1_
[sequential_10_lstm_30_while_sequential_10_lstm_30_while_cond_85406___redundant_placeholder2_
[sequential_10_lstm_30_while_sequential_10_lstm_30_while_cond_85406___redundant_placeholder3(
$sequential_10_lstm_30_while_identity
�
 sequential_10/lstm_30/while/LessLess'sequential_10_lstm_30_while_placeholderFsequential_10_lstm_30_while_less_sequential_10_lstm_30_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_30/while/IdentityIdentity$sequential_10/lstm_30/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_30_while_identity-sequential_10/lstm_30/while/Identity:output:0*(
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
C__inference_dense_10_layer_call_and_return_conditional_losses_90810

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
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85842

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
while_cond_89331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89331___redundant_placeholder03
/while_while_cond_89331___redundant_placeholder13
/while_while_cond_89331___redundant_placeholder23
/while_while_cond_89331___redundant_placeholder3
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
�6
�
while_body_89475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
�7
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_86466

inputs$
lstm_cell_1_86384:	d�$
lstm_cell_1_86386:	2� 
lstm_cell_1_86388:	�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
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
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_86384lstm_cell_1_86386lstm_cell_1_86388*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86338n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_86384lstm_cell_1_86386lstm_cell_1_86388*
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
bodyR
while_body_86397*
condR
while_cond_86396*K
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
 :������������������2t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�"
�
while_body_86747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_2_86771_0:2(+
while_lstm_cell_2_86773_0:
('
while_lstm_cell_2_86775_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_2_86771:2()
while_lstm_cell_2_86773:
(%
while_lstm_cell_2_86775:(��)while/lstm_cell_2/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_86771_0while_lstm_cell_2_86773_0while_lstm_cell_2_86775_0*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_86688�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_86771while_lstm_cell_2_86771_0"4
while_lstm_cell_2_86773while_lstm_cell_2_86773_0"4
while_lstm_cell_2_86775while_lstm_cell_2_86775_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
while_cond_87735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87735___redundant_placeholder03
/while_while_cond_87735___redundant_placeholder13
/while_while_cond_87735___redundant_placeholder23
/while_while_cond_87735___redundant_placeholder3
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
�I
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_90032

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_89948*
condR
while_cond_89947*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_87970
lstm_30_input 
lstm_30_87943:	� 
lstm_30_87945:	d�
lstm_30_87947:	� 
lstm_31_87950:	d� 
lstm_31_87952:	2�
lstm_31_87954:	�
lstm_32_87957:2(
lstm_32_87959:
(
lstm_32_87961:( 
dense_10_87964:

dense_10_87966:
identity�� dense_10/StatefulPartitionedCall�lstm_30/StatefulPartitionedCall�lstm_31/StatefulPartitionedCall�lstm_32/StatefulPartitionedCall�
lstm_30/StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputlstm_30_87943lstm_30_87945lstm_30_87947*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_30_layer_call_and_return_conditional_losses_86974�
lstm_31/StatefulPartitionedCallStatefulPartitionedCall(lstm_30/StatefulPartitionedCall:output:0lstm_31_87950lstm_31_87952lstm_31_87954*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87124�
lstm_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0lstm_32_87957lstm_32_87959lstm_32_87961*
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_87274�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_32/StatefulPartitionedCall:output:0dense_10_87964dense_10_87966*
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
GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_87292x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall ^lstm_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2B
lstm_32/StatefulPartitionedCalllstm_32/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_30_input
�
�
)__inference_lstm_cell_layer_call_fn_90844

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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85988o
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
while_cond_90277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_90277___redundant_placeholder03
/while_while_cond_90277___redundant_placeholder13
/while_while_cond_90277___redundant_placeholder23
/while_while_cond_90277___redundant_placeholder3
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
�7
�
while_body_90278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
while_cond_86396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86396___redundant_placeholder03
/while_while_cond_86396___redundant_placeholder13
/while_while_cond_86396___redundant_placeholder23
/while_while_cond_86396___redundant_placeholder3
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
�7
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_85925

inputs"
lstm_cell_85843:	�"
lstm_cell_85845:	d�
lstm_cell_85847:	�
identity��!lstm_cell/StatefulPartitionedCall�while;
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
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_85843lstm_cell_85845lstm_cell_85847*
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
GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_85842n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_85843lstm_cell_85845lstm_cell_85847*
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
bodyR
while_body_85856*
condR
while_cond_85855*K
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
 :������������������dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�"
�
while_body_86206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_86230_0:	d�,
while_lstm_cell_1_86232_0:	2�(
while_lstm_cell_1_86234_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_86230:	d�*
while_lstm_cell_1_86232:	2�&
while_lstm_cell_1_86234:	���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_86230_0while_lstm_cell_1_86232_0while_lstm_cell_1_86234_0*
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
GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_86192�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_86230while_lstm_cell_1_86230_0"4
while_lstm_cell_1_86232while_lstm_cell_1_86232_0"4
while_lstm_cell_1_86234while_lstm_cell_1_86234_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
'__inference_lstm_31_layer_call_fn_89603

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
GPU 2J 8� *K
fFRD
B__inference_lstm_31_layer_call_and_return_conditional_losses_87655s
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
�
'__inference_lstm_32_layer_call_fn_90197
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_86816o
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
�7
�
while_body_87406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
while_cond_86889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86889___redundant_placeholder03
/while_while_cond_86889___redundant_placeholder13
/while_while_cond_86889___redundant_placeholder23
/while_while_cond_86889___redundant_placeholder3
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
while_cond_89804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89804___redundant_placeholder03
/while_while_cond_89804___redundant_placeholder13
/while_while_cond_89804___redundant_placeholder23
/while_while_cond_89804___redundant_placeholder3
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
�7
�
while_body_89948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
while_cond_90420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_90420___redundant_placeholder03
/while_while_cond_90420___redundant_placeholder13
/while_while_cond_90420___redundant_placeholder23
/while_while_cond_90420___redundant_placeholder3
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
'__inference_lstm_32_layer_call_fn_90186
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
GPU 2J 8� *K
fFRD
B__inference_lstm_32_layer_call_and_return_conditional_losses_86625o
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
while_cond_86555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86555___redundant_placeholder03
/while_while_cond_86555___redundant_placeholder13
/while_while_cond_86555___redundant_placeholder23
/while_while_cond_86555___redundant_placeholder3
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
�I
�
B__inference_lstm_31_layer_call_and_return_conditional_losses_90175

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d�?
,lstm_cell_1_matmul_1_readvariableop_resource:	2�:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while;
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
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
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
bodyR
while_body_90091*
condR
while_cond_90090*K
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
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
&sequential_10_lstm_31_while_cond_85545H
Dsequential_10_lstm_31_while_sequential_10_lstm_31_while_loop_counterN
Jsequential_10_lstm_31_while_sequential_10_lstm_31_while_maximum_iterations+
'sequential_10_lstm_31_while_placeholder-
)sequential_10_lstm_31_while_placeholder_1-
)sequential_10_lstm_31_while_placeholder_2-
)sequential_10_lstm_31_while_placeholder_3J
Fsequential_10_lstm_31_while_less_sequential_10_lstm_31_strided_slice_1_
[sequential_10_lstm_31_while_sequential_10_lstm_31_while_cond_85545___redundant_placeholder0_
[sequential_10_lstm_31_while_sequential_10_lstm_31_while_cond_85545___redundant_placeholder1_
[sequential_10_lstm_31_while_sequential_10_lstm_31_while_cond_85545___redundant_placeholder2_
[sequential_10_lstm_31_while_sequential_10_lstm_31_while_cond_85545___redundant_placeholder3(
$sequential_10_lstm_31_while_identity
�
 sequential_10/lstm_31/while/LessLess'sequential_10_lstm_31_while_placeholderFsequential_10_lstm_31_while_less_sequential_10_lstm_31_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_31/while/IdentityIdentity$sequential_10/lstm_31/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_31_while_identity-sequential_10/lstm_31/while/Identity:output:0*(
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
�H
�
B__inference_lstm_30_layer_call_and_return_conditional_losses_87820

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	d�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
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
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
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
bodyR
while_body_87736*
condR
while_cond_87735*K
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
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_87570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87570___redundant_placeholder03
/while_while_cond_87570___redundant_placeholder13
/while_while_cond_87570___redundant_placeholder23
/while_while_cond_87570___redundant_placeholder3
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
�6
�
while_body_87736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
�6
�
while_body_89046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
while_cond_89661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_89661___redundant_placeholder03
/while_while_cond_89661___redundant_placeholder13
/while_while_cond_89661___redundant_placeholder23
/while_while_cond_89661___redundant_placeholder3
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
�7
�
while_body_90564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(��(while/lstm_cell_2/BiasAdd/ReadVariableOp�'while/lstm_cell_2/MatMul/ReadVariableOp�)while/lstm_cell_2/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
while_cond_86046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86046___redundant_placeholder03
/while_while_cond_86046___redundant_placeholder13
/while_while_cond_86046___redundant_placeholder23
/while_while_cond_86046___redundant_placeholder3
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
B__inference_lstm_32_layer_call_and_return_conditional_losses_90505
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity��"lstm_cell_2/BiasAdd/ReadVariableOp�!lstm_cell_2/MatMul/ReadVariableOp�#lstm_cell_2/MatMul_1/ReadVariableOp�while=
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:���������
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:���������
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:���������
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:���������
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
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
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
bodyR
while_body_90421*
condR
while_cond_90420*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�

�
-__inference_sequential_10_layer_call_fn_87940
lstm_30_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_87888o
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
_user_specified_namelstm_30_input
�
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90908

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
while_cond_87039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87039___redundant_placeholder03
/while_while_cond_87039___redundant_placeholder13
/while_while_cond_87039___redundant_placeholder23
/while_while_cond_87039___redundant_placeholder3
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
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91072

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
�
�
while_cond_87189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87189___redundant_placeholder03
/while_while_cond_87189___redundant_placeholder13
/while_while_cond_87189___redundant_placeholder23
/while_while_cond_87189___redundant_placeholder3
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
�7
�
while_body_87040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d�G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2�B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d�E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2�@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:���������2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
while_cond_87405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87405___redundant_placeholder03
/while_while_cond_87405___redundant_placeholder13
/while_while_cond_87405___redundant_placeholder23
/while_while_cond_87405___redundant_placeholder3
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
�6
�
while_body_89189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	d�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
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
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_30_input:
serving_default_lstm_30_input:0���������<
dense_100
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
2dense_10/kernel
:2dense_10/bias
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
.:,	�2lstm_30/lstm_cell_30/kernel
8:6	d�2%lstm_30/lstm_cell_30/recurrent_kernel
(:&�2lstm_30/lstm_cell_30/bias
.:,	d�2lstm_31/lstm_cell_31/kernel
8:6	2�2%lstm_31/lstm_cell_31/recurrent_kernel
(:&�2lstm_31/lstm_cell_31/bias
-:+2(2lstm_32/lstm_cell_32/kernel
7:5
(2%lstm_32/lstm_cell_32/recurrent_kernel
':%(2lstm_32/lstm_cell_32/bias
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
2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
3:1	�2"Adam/lstm_30/lstm_cell_30/kernel/m
=:;	d�2,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m
-:+�2 Adam/lstm_30/lstm_cell_30/bias/m
3:1	d�2"Adam/lstm_31/lstm_cell_31/kernel/m
=:;	2�2,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m
-:+�2 Adam/lstm_31/lstm_cell_31/bias/m
2:02(2"Adam/lstm_32/lstm_cell_32/kernel/m
<::
(2,Adam/lstm_32/lstm_cell_32/recurrent_kernel/m
,:*(2 Adam/lstm_32/lstm_cell_32/bias/m
&:$
2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
3:1	�2"Adam/lstm_30/lstm_cell_30/kernel/v
=:;	d�2,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v
-:+�2 Adam/lstm_30/lstm_cell_30/bias/v
3:1	d�2"Adam/lstm_31/lstm_cell_31/kernel/v
=:;	2�2,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v
-:+�2 Adam/lstm_31/lstm_cell_31/bias/v
2:02(2"Adam/lstm_32/lstm_cell_32/kernel/v
<::
(2,Adam/lstm_32/lstm_cell_32/recurrent_kernel/v
,:*(2 Adam/lstm_32/lstm_cell_32/bias/v
�2�
-__inference_sequential_10_layer_call_fn_87324
-__inference_sequential_10_layer_call_fn_88062
-__inference_sequential_10_layer_call_fn_88089
-__inference_sequential_10_layer_call_fn_87940�
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
H__inference_sequential_10_layer_call_and_return_conditional_losses_88516
H__inference_sequential_10_layer_call_and_return_conditional_losses_88943
H__inference_sequential_10_layer_call_and_return_conditional_losses_87970
H__inference_sequential_10_layer_call_and_return_conditional_losses_88000�
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
 __inference__wrapped_model_85775lstm_30_input"�
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
�2�
'__inference_lstm_30_layer_call_fn_88954
'__inference_lstm_30_layer_call_fn_88965
'__inference_lstm_30_layer_call_fn_88976
'__inference_lstm_30_layer_call_fn_88987�
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
B__inference_lstm_30_layer_call_and_return_conditional_losses_89130
B__inference_lstm_30_layer_call_and_return_conditional_losses_89273
B__inference_lstm_30_layer_call_and_return_conditional_losses_89416
B__inference_lstm_30_layer_call_and_return_conditional_losses_89559�
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
�2�
'__inference_lstm_31_layer_call_fn_89570
'__inference_lstm_31_layer_call_fn_89581
'__inference_lstm_31_layer_call_fn_89592
'__inference_lstm_31_layer_call_fn_89603�
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
B__inference_lstm_31_layer_call_and_return_conditional_losses_89746
B__inference_lstm_31_layer_call_and_return_conditional_losses_89889
B__inference_lstm_31_layer_call_and_return_conditional_losses_90032
B__inference_lstm_31_layer_call_and_return_conditional_losses_90175�
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
�2�
'__inference_lstm_32_layer_call_fn_90186
'__inference_lstm_32_layer_call_fn_90197
'__inference_lstm_32_layer_call_fn_90208
'__inference_lstm_32_layer_call_fn_90219�
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
B__inference_lstm_32_layer_call_and_return_conditional_losses_90362
B__inference_lstm_32_layer_call_and_return_conditional_losses_90505
B__inference_lstm_32_layer_call_and_return_conditional_losses_90648
B__inference_lstm_32_layer_call_and_return_conditional_losses_90791�
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
(__inference_dense_10_layer_call_fn_90800�
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
C__inference_dense_10_layer_call_and_return_conditional_losses_90810�
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
#__inference_signature_wrapper_88035lstm_30_input"�
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
)__inference_lstm_cell_layer_call_fn_90827
)__inference_lstm_cell_layer_call_fn_90844�
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
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90876
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90908�
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
+__inference_lstm_cell_1_layer_call_fn_90925
+__inference_lstm_cell_1_layer_call_fn_90942�
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
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_90974
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_91006�
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
+__inference_lstm_cell_2_layer_call_fn_91023
+__inference_lstm_cell_2_layer_call_fn_91040�
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
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91072
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91104�
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
 __inference__wrapped_model_85775~-./012345!":�7
0�-
+�(
lstm_30_input���������
� "3�0
.
dense_10"�
dense_10����������
C__inference_dense_10_layer_call_and_return_conditional_losses_90810\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� {
(__inference_dense_10_layer_call_fn_90800O!"/�,
%�"
 �
inputs���������

� "�����������
B__inference_lstm_30_layer_call_and_return_conditional_losses_89130�-./O�L
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
B__inference_lstm_30_layer_call_and_return_conditional_losses_89273�-./O�L
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
B__inference_lstm_30_layer_call_and_return_conditional_losses_89416q-./?�<
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
B__inference_lstm_30_layer_call_and_return_conditional_losses_89559q-./?�<
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
'__inference_lstm_30_layer_call_fn_88954}-./O�L
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
'__inference_lstm_30_layer_call_fn_88965}-./O�L
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
'__inference_lstm_30_layer_call_fn_88976d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
'__inference_lstm_30_layer_call_fn_88987d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
B__inference_lstm_31_layer_call_and_return_conditional_losses_89746�012O�L
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
B__inference_lstm_31_layer_call_and_return_conditional_losses_89889�012O�L
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
B__inference_lstm_31_layer_call_and_return_conditional_losses_90032q012?�<
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
B__inference_lstm_31_layer_call_and_return_conditional_losses_90175q012?�<
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
'__inference_lstm_31_layer_call_fn_89570}012O�L
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
'__inference_lstm_31_layer_call_fn_89581}012O�L
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
'__inference_lstm_31_layer_call_fn_89592d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
'__inference_lstm_31_layer_call_fn_89603d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
B__inference_lstm_32_layer_call_and_return_conditional_losses_90362}345O�L
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
B__inference_lstm_32_layer_call_and_return_conditional_losses_90505}345O�L
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
B__inference_lstm_32_layer_call_and_return_conditional_losses_90648m345?�<
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
B__inference_lstm_32_layer_call_and_return_conditional_losses_90791m345?�<
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
'__inference_lstm_32_layer_call_fn_90186p345O�L
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
'__inference_lstm_32_layer_call_fn_90197p345O�L
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
'__inference_lstm_32_layer_call_fn_90208`345?�<
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
'__inference_lstm_32_layer_call_fn_90219`345?�<
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
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_90974�012��}
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
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_91006�012��}
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
+__inference_lstm_cell_1_layer_call_fn_90925�012��}
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
+__inference_lstm_cell_1_layer_call_fn_90942�012��}
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
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91072�345��}
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
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_91104�345��}
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
+__inference_lstm_cell_2_layer_call_fn_91023�345��}
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
+__inference_lstm_cell_2_layer_call_fn_91040�345��}
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
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90876�-./��}
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
D__inference_lstm_cell_layer_call_and_return_conditional_losses_90908�-./��}
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
)__inference_lstm_cell_layer_call_fn_90827�-./��}
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
)__inference_lstm_cell_layer_call_fn_90844�-./��}
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
1/1���������d�
H__inference_sequential_10_layer_call_and_return_conditional_losses_87970x-./012345!"B�?
8�5
+�(
lstm_30_input���������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_88000x-./012345!"B�?
8�5
+�(
lstm_30_input���������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_88516q-./012345!";�8
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
H__inference_sequential_10_layer_call_and_return_conditional_losses_88943q-./012345!";�8
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
-__inference_sequential_10_layer_call_fn_87324k-./012345!"B�?
8�5
+�(
lstm_30_input���������
p 

 
� "�����������
-__inference_sequential_10_layer_call_fn_87940k-./012345!"B�?
8�5
+�(
lstm_30_input���������
p

 
� "�����������
-__inference_sequential_10_layer_call_fn_88062d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
-__inference_sequential_10_layer_call_fn_88089d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_88035�-./012345!"K�H
� 
A�>
<
lstm_30_input+�(
lstm_30_input���������"3�0
.
dense_10"�
dense_10���������