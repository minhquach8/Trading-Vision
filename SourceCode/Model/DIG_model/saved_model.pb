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
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:
*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
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
lstm_54/lstm_cell_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_54/lstm_cell_54/kernel
�
/lstm_54/lstm_cell_54/kernel/Read/ReadVariableOpReadVariableOplstm_54/lstm_cell_54/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_54/lstm_cell_54/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*6
shared_name'%lstm_54/lstm_cell_54/recurrent_kernel
�
9lstm_54/lstm_cell_54/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_54/lstm_cell_54/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_54/lstm_cell_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_54/lstm_cell_54/bias
�
-lstm_54/lstm_cell_54/bias/Read/ReadVariableOpReadVariableOplstm_54/lstm_cell_54/bias*
_output_shapes	
:�*
dtype0
�
lstm_55/lstm_cell_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*,
shared_namelstm_55/lstm_cell_55/kernel
�
/lstm_55/lstm_cell_55/kernel/Read/ReadVariableOpReadVariableOplstm_55/lstm_cell_55/kernel*
_output_shapes
:	d�*
dtype0
�
%lstm_55/lstm_cell_55/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%lstm_55/lstm_cell_55/recurrent_kernel
�
9lstm_55/lstm_cell_55/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_55/lstm_cell_55/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_55/lstm_cell_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_55/lstm_cell_55/bias
�
-lstm_55/lstm_cell_55/bias/Read/ReadVariableOpReadVariableOplstm_55/lstm_cell_55/bias*
_output_shapes	
:�*
dtype0
�
lstm_56/lstm_cell_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_56/lstm_cell_56/kernel
�
/lstm_56/lstm_cell_56/kernel/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_56/kernel*
_output_shapes

:2(*
dtype0
�
%lstm_56/lstm_cell_56/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_56/lstm_cell_56/recurrent_kernel
�
9lstm_56/lstm_cell_56/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_56/lstm_cell_56/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_56/lstm_cell_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_56/lstm_cell_56/bias
�
-lstm_56/lstm_cell_56/bias/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_56/bias*
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
Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_18/kernel/m
�
*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
y
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_54/lstm_cell_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_54/lstm_cell_54/kernel/m
�
6Adam/lstm_54/lstm_cell_54/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_54/lstm_cell_54/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_54/lstm_cell_54/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_54/lstm_cell_54/recurrent_kernel/m
�
@Adam/lstm_54/lstm_cell_54/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_54/lstm_cell_54/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_54/lstm_cell_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_54/lstm_cell_54/bias/m
�
4Adam/lstm_54/lstm_cell_54/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_54/lstm_cell_54/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_55/lstm_cell_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_55/lstm_cell_55/kernel/m
�
6Adam/lstm_55/lstm_cell_55/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_55/lstm_cell_55/kernel/m*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_55/lstm_cell_55/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_55/lstm_cell_55/recurrent_kernel/m
�
@Adam/lstm_55/lstm_cell_55/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_55/lstm_cell_55/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_55/lstm_cell_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_55/lstm_cell_55/bias/m
�
4Adam/lstm_55/lstm_cell_55/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_55/lstm_cell_55/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_56/lstm_cell_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_56/lstm_cell_56/kernel/m
�
6Adam/lstm_56/lstm_cell_56/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_56/kernel/m*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_56/lstm_cell_56/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m
�
@Adam/lstm_56/lstm_cell_56/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_56/lstm_cell_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_56/lstm_cell_56/bias/m
�
4Adam/lstm_56/lstm_cell_56/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_56/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_18/kernel/v
�
*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
y
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_54/lstm_cell_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_54/lstm_cell_54/kernel/v
�
6Adam/lstm_54/lstm_cell_54/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_54/lstm_cell_54/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_54/lstm_cell_54/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_54/lstm_cell_54/recurrent_kernel/v
�
@Adam/lstm_54/lstm_cell_54/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_54/lstm_cell_54/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_54/lstm_cell_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_54/lstm_cell_54/bias/v
�
4Adam/lstm_54/lstm_cell_54/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_54/lstm_cell_54/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_55/lstm_cell_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_55/lstm_cell_55/kernel/v
�
6Adam/lstm_55/lstm_cell_55/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_55/lstm_cell_55/kernel/v*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_55/lstm_cell_55/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_55/lstm_cell_55/recurrent_kernel/v
�
@Adam/lstm_55/lstm_cell_55/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_55/lstm_cell_55/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_55/lstm_cell_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_55/lstm_cell_55/bias/v
�
4Adam/lstm_55/lstm_cell_55/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_55/lstm_cell_55/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_56/lstm_cell_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_56/lstm_cell_56/kernel/v
�
6Adam/lstm_56/lstm_cell_56/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_56/kernel/v*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_56/lstm_cell_56/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v
�
@Adam/lstm_56/lstm_cell_56/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_56/lstm_cell_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_56/lstm_cell_56/bias/v
�
4Adam/lstm_56/lstm_cell_56/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_56/bias/v*
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
VARIABLE_VALUEdense_18/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_54/lstm_cell_54/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_54/lstm_cell_54/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_54/lstm_cell_54/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_55/lstm_cell_55/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_55/lstm_cell_55/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_55/lstm_cell_55/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_56/lstm_cell_56/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_56/lstm_cell_56/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_56/lstm_cell_56/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_54/lstm_cell_54/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_54/lstm_cell_54/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_54/lstm_cell_54/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_55/lstm_cell_55/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_55/lstm_cell_55/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_55/lstm_cell_55/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_56/lstm_cell_56/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_56/lstm_cell_56/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_56/lstm_cell_56/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_54/lstm_cell_54/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_54/lstm_cell_54/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_54/lstm_cell_54/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_55/lstm_cell_55/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_55/lstm_cell_55/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_55/lstm_cell_55/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_56/lstm_cell_56/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_56/lstm_cell_56/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_56/lstm_cell_56/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_54_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_54_inputlstm_54/lstm_cell_54/kernel%lstm_54/lstm_cell_54/recurrent_kernellstm_54/lstm_cell_54/biaslstm_55/lstm_cell_55/kernel%lstm_55/lstm_cell_55/recurrent_kernellstm_55/lstm_cell_55/biaslstm_56/lstm_cell_56/kernel%lstm_56/lstm_cell_56/recurrent_kernellstm_56/lstm_cell_56/biasdense_18/kerneldense_18/bias*
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
%__inference_signature_wrapper_2861290
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_54/lstm_cell_54/kernel/Read/ReadVariableOp9lstm_54/lstm_cell_54/recurrent_kernel/Read/ReadVariableOp-lstm_54/lstm_cell_54/bias/Read/ReadVariableOp/lstm_55/lstm_cell_55/kernel/Read/ReadVariableOp9lstm_55/lstm_cell_55/recurrent_kernel/Read/ReadVariableOp-lstm_55/lstm_cell_55/bias/Read/ReadVariableOp/lstm_56/lstm_cell_56/kernel/Read/ReadVariableOp9lstm_56/lstm_cell_56/recurrent_kernel/Read/ReadVariableOp-lstm_56/lstm_cell_56/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp6Adam/lstm_54/lstm_cell_54/kernel/m/Read/ReadVariableOp@Adam/lstm_54/lstm_cell_54/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_54/lstm_cell_54/bias/m/Read/ReadVariableOp6Adam/lstm_55/lstm_cell_55/kernel/m/Read/ReadVariableOp@Adam/lstm_55/lstm_cell_55/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_55/lstm_cell_55/bias/m/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_56/kernel/m/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_56/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_56/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp6Adam/lstm_54/lstm_cell_54/kernel/v/Read/ReadVariableOp@Adam/lstm_54/lstm_cell_54/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_54/lstm_cell_54/bias/v/Read/ReadVariableOp6Adam/lstm_55/lstm_cell_55/kernel/v/Read/ReadVariableOp@Adam/lstm_55/lstm_cell_55/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_55/lstm_cell_55/bias/v/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_56/kernel/v/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_56/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_56/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2864502
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_54/lstm_cell_54/kernel%lstm_54/lstm_cell_54/recurrent_kernellstm_54/lstm_cell_54/biaslstm_55/lstm_cell_55/kernel%lstm_55/lstm_cell_55/recurrent_kernellstm_55/lstm_cell_55/biaslstm_56/lstm_cell_56/kernel%lstm_56/lstm_cell_56/recurrent_kernellstm_56/lstm_cell_56/biastotalcountAdam/dense_18/kernel/mAdam/dense_18/bias/m"Adam/lstm_54/lstm_cell_54/kernel/m,Adam/lstm_54/lstm_cell_54/recurrent_kernel/m Adam/lstm_54/lstm_cell_54/bias/m"Adam/lstm_55/lstm_cell_55/kernel/m,Adam/lstm_55/lstm_cell_55/recurrent_kernel/m Adam/lstm_55/lstm_cell_55/bias/m"Adam/lstm_56/lstm_cell_56/kernel/m,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m Adam/lstm_56/lstm_cell_56/bias/mAdam/dense_18/kernel/vAdam/dense_18/bias/v"Adam/lstm_54/lstm_cell_54/kernel/v,Adam/lstm_54/lstm_cell_54/recurrent_kernel/v Adam/lstm_54/lstm_cell_54/bias/v"Adam/lstm_55/lstm_cell_55/kernel/v,Adam/lstm_55/lstm_cell_55/recurrent_kernel/v Adam/lstm_55/lstm_cell_55/bias/v"Adam/lstm_56/lstm_cell_56/kernel/v,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v Adam/lstm_56/lstm_cell_56/bias/v*4
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
#__inference__traced_restore_2864632��+
�

�
/__inference_sequential_18_layer_call_fn_2861344

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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861143o
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
while_cond_2863532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863532___redundant_placeholder05
1while_while_cond_2863532___redundant_placeholder15
1while_while_cond_2863532___redundant_placeholder25
1while_while_cond_2863532___redundant_placeholder3
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
while_body_2862917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_471_layer_call_fn_2864082

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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859097o
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

�
lstm_56_while_cond_2862107,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2862107___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2862107___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2862107___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2862107___redundant_placeholder3
lstm_56_while_identity
�
lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: [
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
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

lstm_54_while_body_2861403,
(lstm_54_while_lstm_54_while_loop_counter2
.lstm_54_while_lstm_54_while_maximum_iterations
lstm_54_while_placeholder
lstm_54_while_placeholder_1
lstm_54_while_placeholder_2
lstm_54_while_placeholder_3+
'lstm_54_while_lstm_54_strided_slice_1_0g
clstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0:	�Q
>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�L
=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
lstm_54_while_identity
lstm_54_while_identity_1
lstm_54_while_identity_2
lstm_54_while_identity_3
lstm_54_while_identity_4
lstm_54_while_identity_5)
%lstm_54_while_lstm_54_strided_slice_1e
alstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensorM
:lstm_54_while_lstm_cell_471_matmul_readvariableop_resource:	�O
<lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource:	d�J
;lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource:	���2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp�1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp�3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp�
?lstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_54/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0lstm_54_while_placeholderHlstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_54/while/lstm_cell_471/MatMulMatMul8lstm_54/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_54/while/lstm_cell_471/MatMul_1MatMullstm_54_while_placeholder_2;lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_54/while/lstm_cell_471/addAddV2,lstm_54/while/lstm_cell_471/MatMul:product:0.lstm_54/while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_54/while/lstm_cell_471/BiasAddBiasAdd#lstm_54/while/lstm_cell_471/add:z:0:lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_54/while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_54/while/lstm_cell_471/splitSplit4lstm_54/while/lstm_cell_471/split/split_dim:output:0,lstm_54/while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_54/while/lstm_cell_471/SigmoidSigmoid*lstm_54/while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_54/while/lstm_cell_471/Sigmoid_1Sigmoid*lstm_54/while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_54/while/lstm_cell_471/mulMul)lstm_54/while/lstm_cell_471/Sigmoid_1:y:0lstm_54_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_54/while/lstm_cell_471/ReluRelu*lstm_54/while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/mul_1Mul'lstm_54/while/lstm_cell_471/Sigmoid:y:0.lstm_54/while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/add_1AddV2#lstm_54/while/lstm_cell_471/mul:z:0%lstm_54/while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_54/while/lstm_cell_471/Sigmoid_2Sigmoid*lstm_54/while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_54/while/lstm_cell_471/Relu_1Relu%lstm_54/while/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/mul_2Mul)lstm_54/while/lstm_cell_471/Sigmoid_2:y:00lstm_54/while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_54/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_54_while_placeholder_1lstm_54_while_placeholder%lstm_54/while/lstm_cell_471/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_54/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_54/while/addAddV2lstm_54_while_placeholderlstm_54/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_54/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_54/while/add_1AddV2(lstm_54_while_lstm_54_while_loop_counterlstm_54/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_54/while/IdentityIdentitylstm_54/while/add_1:z:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_1Identity.lstm_54_while_lstm_54_while_maximum_iterations^lstm_54/while/NoOp*
T0*
_output_shapes
: q
lstm_54/while/Identity_2Identitylstm_54/while/add:z:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_3IdentityBlstm_54/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_4Identity%lstm_54/while/lstm_cell_471/mul_2:z:0^lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_54/while/Identity_5Identity%lstm_54/while/lstm_cell_471/add_1:z:0^lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_54/while/NoOpNoOp3^lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2^lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp4^lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_54_while_identitylstm_54/while/Identity:output:0"=
lstm_54_while_identity_1!lstm_54/while/Identity_1:output:0"=
lstm_54_while_identity_2!lstm_54/while/Identity_2:output:0"=
lstm_54_while_identity_3!lstm_54/while/Identity_3:output:0"=
lstm_54_while_identity_4!lstm_54/while/Identity_4:output:0"=
lstm_54_while_identity_5!lstm_54/while/Identity_5:output:0"P
%lstm_54_while_lstm_54_strided_slice_1'lstm_54_while_lstm_54_strided_slice_1_0"|
;lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0"~
<lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0"z
:lstm_54_while_lstm_cell_471_matmul_readvariableop_resource<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0"�
alstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensorclstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2f
1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp2j
3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
lstm_55_while_cond_2861968,
(lstm_55_while_lstm_55_while_loop_counter2
.lstm_55_while_lstm_55_while_maximum_iterations
lstm_55_while_placeholder
lstm_55_while_placeholder_1
lstm_55_while_placeholder_2
lstm_55_while_placeholder_3.
*lstm_55_while_less_lstm_55_strided_slice_1E
Alstm_55_while_lstm_55_while_cond_2861968___redundant_placeholder0E
Alstm_55_while_lstm_55_while_cond_2861968___redundant_placeholder1E
Alstm_55_while_lstm_55_while_cond_2861968___redundant_placeholder2E
Alstm_55_while_lstm_55_while_cond_2861968___redundant_placeholder3
lstm_55_while_identity
�
lstm_55/while/LessLesslstm_55_while_placeholder*lstm_55_while_less_lstm_55_strided_slice_1*
T0*
_output_shapes
: [
lstm_55/while/IdentityIdentitylstm_55/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_55_while_identitylstm_55/while/Identity:output:0*(
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
�
�
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861143

inputs"
lstm_54_2861116:	�"
lstm_54_2861118:	d�
lstm_54_2861120:	�"
lstm_55_2861123:	d�"
lstm_55_2861125:	2�
lstm_55_2861127:	�!
lstm_56_2861130:2(!
lstm_56_2861132:
(
lstm_56_2861134:("
dense_18_2861137:

dense_18_2861139:
identity�� dense_18/StatefulPartitionedCall�lstm_54/StatefulPartitionedCall�lstm_55/StatefulPartitionedCall�lstm_56/StatefulPartitionedCall�
lstm_54/StatefulPartitionedCallStatefulPartitionedCallinputslstm_54_2861116lstm_54_2861118lstm_54_2861120*
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2861075�
lstm_55/StatefulPartitionedCallStatefulPartitionedCall(lstm_54/StatefulPartitionedCall:output:0lstm_55_2861123lstm_55_2861125lstm_55_2861127*
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860910�
lstm_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_55/StatefulPartitionedCall:output:0lstm_56_2861130lstm_56_2861132lstm_56_2861134*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860745�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_18_2861137dense_18_2861139*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_54/StatefulPartitionedCall ^lstm_55/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_54/StatefulPartitionedCalllstm_54/StatefulPartitionedCall2B
lstm_55/StatefulPartitionedCalllstm_55/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_56_while_body_2862108,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0:2(P
>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(K
=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0:(
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
:lstm_56_while_lstm_cell_473_matmul_readvariableop_resource:2(N
<lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource:
(I
;lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource:(��2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp�1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp�3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp�
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_56/while/lstm_cell_473/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_56/while/lstm_cell_473/MatMul_1MatMullstm_56_while_placeholder_2;lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_56/while/lstm_cell_473/addAddV2,lstm_56/while/lstm_cell_473/MatMul:product:0.lstm_56/while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_56/while/lstm_cell_473/BiasAddBiasAdd#lstm_56/while/lstm_cell_473/add:z:0:lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_56/while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_56/while/lstm_cell_473/splitSplit4lstm_56/while/lstm_cell_473/split/split_dim:output:0,lstm_56/while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_56/while/lstm_cell_473/SigmoidSigmoid*lstm_56/while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_56/while/lstm_cell_473/Sigmoid_1Sigmoid*lstm_56/while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_56/while/lstm_cell_473/mulMul)lstm_56/while/lstm_cell_473/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_56/while/lstm_cell_473/ReluRelu*lstm_56/while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/mul_1Mul'lstm_56/while/lstm_cell_473/Sigmoid:y:0.lstm_56/while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/add_1AddV2#lstm_56/while/lstm_cell_473/mul:z:0%lstm_56/while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_56/while/lstm_cell_473/Sigmoid_2Sigmoid*lstm_56/while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_56/while/lstm_cell_473/Relu_1Relu%lstm_56/while/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/mul_2Mul)lstm_56/while/lstm_cell_473/Sigmoid_2:y:00lstm_56/while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder%lstm_56/while/lstm_cell_473/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations^lstm_56/while/NoOp*
T0*
_output_shapes
: q
lstm_56/while/Identity_2Identitylstm_56/while/add:z:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_4Identity%lstm_56/while/lstm_cell_473/mul_2:z:0^lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_56/while/Identity_5Identity%lstm_56/while/lstm_cell_473/add_1:z:0^lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_56/while/NoOpNoOp3^lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2^lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp4^lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"|
;lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0"~
<lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0"z
:lstm_56_while_lstm_cell_473_matmul_readvariableop_resource<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0"�
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2f
1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp2j
3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863430

inputs?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2863346*
condR
while_cond_2863345*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_lstm_54_layer_call_fn_2862220
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2859371|
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
)__inference_lstm_54_layer_call_fn_2862231

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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2860229s
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
)__inference_lstm_54_layer_call_fn_2862242

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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2861075s
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
while_cond_2863818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863818___redundant_placeholder05
1while_while_cond_2863818___redundant_placeholder15
1while_while_cond_2863818___redundant_placeholder25
1while_while_cond_2863818___redundant_placeholder3
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
while_cond_2863202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863202___redundant_placeholder05
1while_while_cond_2863202___redundant_placeholder15
1while_while_cond_2863202___redundant_placeholder25
1while_while_cond_2863202___redundant_placeholder3
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864327

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
�
�
(sequential_18_lstm_56_while_cond_2858939H
Dsequential_18_lstm_56_while_sequential_18_lstm_56_while_loop_counterN
Jsequential_18_lstm_56_while_sequential_18_lstm_56_while_maximum_iterations+
'sequential_18_lstm_56_while_placeholder-
)sequential_18_lstm_56_while_placeholder_1-
)sequential_18_lstm_56_while_placeholder_2-
)sequential_18_lstm_56_while_placeholder_3J
Fsequential_18_lstm_56_while_less_sequential_18_lstm_56_strided_slice_1a
]sequential_18_lstm_56_while_sequential_18_lstm_56_while_cond_2858939___redundant_placeholder0a
]sequential_18_lstm_56_while_sequential_18_lstm_56_while_cond_2858939___redundant_placeholder1a
]sequential_18_lstm_56_while_sequential_18_lstm_56_while_cond_2858939___redundant_placeholder2a
]sequential_18_lstm_56_while_sequential_18_lstm_56_while_cond_2858939___redundant_placeholder3(
$sequential_18_lstm_56_while_identity
�
 sequential_18/lstm_56/while/LessLess'sequential_18_lstm_56_while_placeholderFsequential_18_lstm_56_while_less_sequential_18_lstm_56_strided_slice_1*
T0*
_output_shapes
: w
$sequential_18/lstm_56/while/IdentityIdentity$sequential_18/lstm_56/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_18_lstm_56_while_identity-sequential_18/lstm_56/while/Identity:output:0*(
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

�
lstm_54_while_cond_2861402,
(lstm_54_while_lstm_54_while_loop_counter2
.lstm_54_while_lstm_54_while_maximum_iterations
lstm_54_while_placeholder
lstm_54_while_placeholder_1
lstm_54_while_placeholder_2
lstm_54_while_placeholder_3.
*lstm_54_while_less_lstm_54_strided_slice_1E
Alstm_54_while_lstm_54_while_cond_2861402___redundant_placeholder0E
Alstm_54_while_lstm_54_while_cond_2861402___redundant_placeholder1E
Alstm_54_while_lstm_54_while_cond_2861402___redundant_placeholder2E
Alstm_54_while_lstm_54_while_cond_2861402___redundant_placeholder3
lstm_54_while_identity
�
lstm_54/while/LessLesslstm_54_while_placeholder*lstm_54_while_less_lstm_54_strided_slice_1*
T0*
_output_shapes
: [
lstm_54/while/IdentityIdentitylstm_54/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_54_while_identitylstm_54/while/Identity:output:0*(
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
while_cond_2862300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2862300___redundant_placeholder05
1while_while_cond_2862300___redundant_placeholder15
1while_while_cond_2862300___redundant_placeholder25
1while_while_cond_2862300___redundant_placeholder3
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
while_cond_2860001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860001___redundant_placeholder05
1while_while_cond_2860001___redundant_placeholder15
1while_while_cond_2860001___redundant_placeholder25
1while_while_cond_2860001___redundant_placeholder3
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
�J
�
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863287

inputs?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2863203*
condR
while_cond_2863202*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_472_layer_call_fn_2864197

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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859593o
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
�
�
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864229

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
while_cond_2859810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2859810___redundant_placeholder05
1while_while_cond_2859810___redundant_placeholder15
1while_while_cond_2859810___redundant_placeholder25
1while_while_cond_2859810___redundant_placeholder3
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
�
D__inference_lstm_54_layer_call_and_return_conditional_losses_2859180

inputs(
lstm_cell_471_2859098:	�(
lstm_cell_471_2859100:	d�$
lstm_cell_471_2859102:	�
identity��%lstm_cell_471/StatefulPartitionedCall�while;
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
%lstm_cell_471/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_471_2859098lstm_cell_471_2859100lstm_cell_471_2859102*
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859097n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_471_2859098lstm_cell_471_2859100lstm_cell_471_2859102*
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
while_body_2859111*
condR
while_cond_2859110*K
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
NoOpNoOp&^lstm_cell_471/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_471/StatefulPartitionedCall%lstm_cell_471/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859097

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
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860071

inputs'
lstm_cell_473_2859989:2('
lstm_cell_473_2859991:
(#
lstm_cell_473_2859993:(
identity��%lstm_cell_473/StatefulPartitionedCall�while;
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
%lstm_cell_473/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_473_2859989lstm_cell_473_2859991lstm_cell_473_2859993*
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859943n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_473_2859989lstm_cell_473_2859991lstm_cell_473_2859993*
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
while_body_2860002*
condR
while_cond_2860001*K
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
NoOpNoOp&^lstm_cell_473/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_473/StatefulPartitionedCall%lstm_cell_473/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860745

inputs>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2860661*
condR
while_cond_2860660*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_54_layer_call_and_return_conditional_losses_2861075

inputs?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2860991*
condR
while_cond_2860990*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547

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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2860229

inputs?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2860145*
condR
while_cond_2860144*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_2859111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_471_2859135_0:	�0
while_lstm_cell_471_2859137_0:	d�,
while_lstm_cell_471_2859139_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_471_2859135:	�.
while_lstm_cell_471_2859137:	d�*
while_lstm_cell_471_2859139:	���+while/lstm_cell_471/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_471/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_471_2859135_0while_lstm_cell_471_2859137_0while_lstm_cell_471_2859139_0*
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859097�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_471/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_471/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_471/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_471/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_471_2859135while_lstm_cell_471_2859135_0"<
while_lstm_cell_471_2859137while_lstm_cell_471_2859137_0"<
while_lstm_cell_471_2859139while_lstm_cell_471_2859139_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_471/StatefulPartitionedCall+while/lstm_cell_471/StatefulPartitionedCall: 
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
�B
�

lstm_54_while_body_2861830,
(lstm_54_while_lstm_54_while_loop_counter2
.lstm_54_while_lstm_54_while_maximum_iterations
lstm_54_while_placeholder
lstm_54_while_placeholder_1
lstm_54_while_placeholder_2
lstm_54_while_placeholder_3+
'lstm_54_while_lstm_54_strided_slice_1_0g
clstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0:	�Q
>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�L
=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
lstm_54_while_identity
lstm_54_while_identity_1
lstm_54_while_identity_2
lstm_54_while_identity_3
lstm_54_while_identity_4
lstm_54_while_identity_5)
%lstm_54_while_lstm_54_strided_slice_1e
alstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensorM
:lstm_54_while_lstm_cell_471_matmul_readvariableop_resource:	�O
<lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource:	d�J
;lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource:	���2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp�1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp�3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp�
?lstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_54/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0lstm_54_while_placeholderHlstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_54/while/lstm_cell_471/MatMulMatMul8lstm_54/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_54/while/lstm_cell_471/MatMul_1MatMullstm_54_while_placeholder_2;lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_54/while/lstm_cell_471/addAddV2,lstm_54/while/lstm_cell_471/MatMul:product:0.lstm_54/while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_54/while/lstm_cell_471/BiasAddBiasAdd#lstm_54/while/lstm_cell_471/add:z:0:lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_54/while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_54/while/lstm_cell_471/splitSplit4lstm_54/while/lstm_cell_471/split/split_dim:output:0,lstm_54/while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_54/while/lstm_cell_471/SigmoidSigmoid*lstm_54/while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_54/while/lstm_cell_471/Sigmoid_1Sigmoid*lstm_54/while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_54/while/lstm_cell_471/mulMul)lstm_54/while/lstm_cell_471/Sigmoid_1:y:0lstm_54_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_54/while/lstm_cell_471/ReluRelu*lstm_54/while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/mul_1Mul'lstm_54/while/lstm_cell_471/Sigmoid:y:0.lstm_54/while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/add_1AddV2#lstm_54/while/lstm_cell_471/mul:z:0%lstm_54/while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_54/while/lstm_cell_471/Sigmoid_2Sigmoid*lstm_54/while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_54/while/lstm_cell_471/Relu_1Relu%lstm_54/while/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_54/while/lstm_cell_471/mul_2Mul)lstm_54/while/lstm_cell_471/Sigmoid_2:y:00lstm_54/while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_54/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_54_while_placeholder_1lstm_54_while_placeholder%lstm_54/while/lstm_cell_471/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_54/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_54/while/addAddV2lstm_54_while_placeholderlstm_54/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_54/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_54/while/add_1AddV2(lstm_54_while_lstm_54_while_loop_counterlstm_54/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_54/while/IdentityIdentitylstm_54/while/add_1:z:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_1Identity.lstm_54_while_lstm_54_while_maximum_iterations^lstm_54/while/NoOp*
T0*
_output_shapes
: q
lstm_54/while/Identity_2Identitylstm_54/while/add:z:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_3IdentityBlstm_54/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_54/while/NoOp*
T0*
_output_shapes
: �
lstm_54/while/Identity_4Identity%lstm_54/while/lstm_cell_471/mul_2:z:0^lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_54/while/Identity_5Identity%lstm_54/while/lstm_cell_471/add_1:z:0^lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_54/while/NoOpNoOp3^lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2^lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp4^lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_54_while_identitylstm_54/while/Identity:output:0"=
lstm_54_while_identity_1!lstm_54/while/Identity_1:output:0"=
lstm_54_while_identity_2!lstm_54/while/Identity_2:output:0"=
lstm_54_while_identity_3!lstm_54/while/Identity_3:output:0"=
lstm_54_while_identity_4!lstm_54/while/Identity_4:output:0"=
lstm_54_while_identity_5!lstm_54/while/Identity_5:output:0"P
%lstm_54_while_lstm_54_strided_slice_1'lstm_54_while_lstm_54_strided_slice_1_0"|
;lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource=lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0"~
<lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource>lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0"z
:lstm_54_while_lstm_cell_471_matmul_readvariableop_resource<lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0"�
alstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensorclstm_54_while_tensorarrayv2read_tensorlistgetitem_lstm_54_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2f
1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp1lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp2j
3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp3lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
while_body_2863203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863144
inputs_0?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2863060*
condR
while_cond_2863059*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_54_layer_call_fn_2862209
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2859180|
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2859530

inputs(
lstm_cell_472_2859448:	d�(
lstm_cell_472_2859450:	2�$
lstm_cell_472_2859452:	�
identity��%lstm_cell_472/StatefulPartitionedCall�while;
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
%lstm_cell_472/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_472_2859448lstm_cell_472_2859450lstm_cell_472_2859452*
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859447n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_472_2859448lstm_cell_472_2859450lstm_cell_472_2859452*
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
while_body_2859461*
condR
while_cond_2859460*K
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
NoOpNoOp&^lstm_cell_472/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_472/StatefulPartitionedCall%lstm_cell_472/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_473_layer_call_fn_2864278

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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859797o
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
�#
�
while_body_2859461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_472_2859485_0:	d�0
while_lstm_cell_472_2859487_0:	2�,
while_lstm_cell_472_2859489_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_472_2859485:	d�.
while_lstm_cell_472_2859487:	2�*
while_lstm_cell_472_2859489:	���+while/lstm_cell_472/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_472/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_472_2859485_0while_lstm_cell_472_2859487_0while_lstm_cell_472_2859489_0*
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859447�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_472/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_472/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_472/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_472/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_472_2859485while_lstm_cell_472_2859485_0"<
while_lstm_cell_472_2859487while_lstm_cell_472_2859487_0"<
while_lstm_cell_472_2859489while_lstm_cell_472_2859489_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_472/StatefulPartitionedCall+while/lstm_cell_472/StatefulPartitionedCall: 
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

�
/__inference_sequential_18_layer_call_fn_2861317

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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2860554o
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
�
�
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859243

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
while_cond_2863961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863961___redundant_placeholder05
1while_while_cond_2863961___redundant_placeholder15
1while_while_cond_2863961___redundant_placeholder25
1while_while_cond_2863961___redundant_placeholder3
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
while_cond_2862729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2862729___redundant_placeholder05
1while_while_cond_2862729___redundant_placeholder15
1while_while_cond_2862729___redundant_placeholder25
1while_while_cond_2862729___redundant_placeholder3
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860379

inputs?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2860295*
condR
while_cond_2860294*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�R
�
(sequential_18_lstm_56_while_body_2858940H
Dsequential_18_lstm_56_while_sequential_18_lstm_56_while_loop_counterN
Jsequential_18_lstm_56_while_sequential_18_lstm_56_while_maximum_iterations+
'sequential_18_lstm_56_while_placeholder-
)sequential_18_lstm_56_while_placeholder_1-
)sequential_18_lstm_56_while_placeholder_2-
)sequential_18_lstm_56_while_placeholder_3G
Csequential_18_lstm_56_while_sequential_18_lstm_56_strided_slice_1_0�
sequential_18_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_56_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_18_lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0:2(^
Lsequential_18_lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(Y
Ksequential_18_lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0:((
$sequential_18_lstm_56_while_identity*
&sequential_18_lstm_56_while_identity_1*
&sequential_18_lstm_56_while_identity_2*
&sequential_18_lstm_56_while_identity_3*
&sequential_18_lstm_56_while_identity_4*
&sequential_18_lstm_56_while_identity_5E
Asequential_18_lstm_56_while_sequential_18_lstm_56_strided_slice_1�
}sequential_18_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_56_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_18_lstm_56_while_lstm_cell_473_matmul_readvariableop_resource:2(\
Jsequential_18_lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource:
(W
Isequential_18_lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource:(��@sequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp�?sequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp�Asequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp�
Msequential_18/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_18/lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_18_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_56_tensorarrayunstack_tensorlistfromtensor_0'sequential_18_lstm_56_while_placeholderVsequential_18/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
?sequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOpJsequential_18_lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
0sequential_18/lstm_56/while/lstm_cell_473/MatMulMatMulFsequential_18/lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Asequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOpLsequential_18_lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
2sequential_18/lstm_56/while/lstm_cell_473/MatMul_1MatMul)sequential_18_lstm_56_while_placeholder_2Isequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_18/lstm_56/while/lstm_cell_473/addAddV2:sequential_18/lstm_56/while/lstm_cell_473/MatMul:product:0<sequential_18/lstm_56/while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
@sequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOpKsequential_18_lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
1sequential_18/lstm_56/while/lstm_cell_473/BiasAddBiasAdd1sequential_18/lstm_56/while/lstm_cell_473/add:z:0Hsequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������({
9sequential_18/lstm_56/while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_18/lstm_56/while/lstm_cell_473/splitSplitBsequential_18/lstm_56/while/lstm_cell_473/split/split_dim:output:0:sequential_18/lstm_56/while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
1sequential_18/lstm_56/while/lstm_cell_473/SigmoidSigmoid8sequential_18/lstm_56/while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
3sequential_18/lstm_56/while/lstm_cell_473/Sigmoid_1Sigmoid8sequential_18/lstm_56/while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
-sequential_18/lstm_56/while/lstm_cell_473/mulMul7sequential_18/lstm_56/while/lstm_cell_473/Sigmoid_1:y:0)sequential_18_lstm_56_while_placeholder_3*
T0*'
_output_shapes
:���������
�
.sequential_18/lstm_56/while/lstm_cell_473/ReluRelu8sequential_18/lstm_56/while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
/sequential_18/lstm_56/while/lstm_cell_473/mul_1Mul5sequential_18/lstm_56/while/lstm_cell_473/Sigmoid:y:0<sequential_18/lstm_56/while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
/sequential_18/lstm_56/while/lstm_cell_473/add_1AddV21sequential_18/lstm_56/while/lstm_cell_473/mul:z:03sequential_18/lstm_56/while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
3sequential_18/lstm_56/while/lstm_cell_473/Sigmoid_2Sigmoid8sequential_18/lstm_56/while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
�
0sequential_18/lstm_56/while/lstm_cell_473/Relu_1Relu3sequential_18/lstm_56/while/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_18/lstm_56/while/lstm_cell_473/mul_2Mul7sequential_18/lstm_56/while/lstm_cell_473/Sigmoid_2:y:0>sequential_18/lstm_56/while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
@sequential_18/lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_18_lstm_56_while_placeholder_1'sequential_18_lstm_56_while_placeholder3sequential_18/lstm_56/while/lstm_cell_473/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_18/lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_18/lstm_56/while/addAddV2'sequential_18_lstm_56_while_placeholder*sequential_18/lstm_56/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_18/lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_18/lstm_56/while/add_1AddV2Dsequential_18_lstm_56_while_sequential_18_lstm_56_while_loop_counter,sequential_18/lstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_18/lstm_56/while/IdentityIdentity%sequential_18/lstm_56/while/add_1:z:0!^sequential_18/lstm_56/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_56/while/Identity_1IdentityJsequential_18_lstm_56_while_sequential_18_lstm_56_while_maximum_iterations!^sequential_18/lstm_56/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_56/while/Identity_2Identity#sequential_18/lstm_56/while/add:z:0!^sequential_18/lstm_56/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_56/while/Identity_3IdentityPsequential_18/lstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_18/lstm_56/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_56/while/Identity_4Identity3sequential_18/lstm_56/while/lstm_cell_473/mul_2:z:0!^sequential_18/lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
&sequential_18/lstm_56/while/Identity_5Identity3sequential_18/lstm_56/while/lstm_cell_473/add_1:z:0!^sequential_18/lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
 sequential_18/lstm_56/while/NoOpNoOpA^sequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp@^sequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOpB^sequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_18_lstm_56_while_identity-sequential_18/lstm_56/while/Identity:output:0"Y
&sequential_18_lstm_56_while_identity_1/sequential_18/lstm_56/while/Identity_1:output:0"Y
&sequential_18_lstm_56_while_identity_2/sequential_18/lstm_56/while/Identity_2:output:0"Y
&sequential_18_lstm_56_while_identity_3/sequential_18/lstm_56/while/Identity_3:output:0"Y
&sequential_18_lstm_56_while_identity_4/sequential_18/lstm_56/while/Identity_4:output:0"Y
&sequential_18_lstm_56_while_identity_5/sequential_18/lstm_56/while/Identity_5:output:0"�
Isequential_18_lstm_56_while_lstm_cell_473_biasadd_readvariableop_resourceKsequential_18_lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0"�
Jsequential_18_lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resourceLsequential_18_lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0"�
Hsequential_18_lstm_56_while_lstm_cell_473_matmul_readvariableop_resourceJsequential_18_lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0"�
Asequential_18_lstm_56_while_sequential_18_lstm_56_strided_slice_1Csequential_18_lstm_56_while_sequential_18_lstm_56_strided_slice_1_0"�
}sequential_18_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_56_tensorarrayunstack_tensorlistfromtensorsequential_18_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
@sequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp@sequential_18/lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2�
?sequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp?sequential_18/lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp2�
Asequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOpAsequential_18/lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2860554

inputs"
lstm_54_2860230:	�"
lstm_54_2860232:	d�
lstm_54_2860234:	�"
lstm_55_2860380:	d�"
lstm_55_2860382:	2�
lstm_55_2860384:	�!
lstm_56_2860530:2(!
lstm_56_2860532:
(
lstm_56_2860534:("
dense_18_2860548:

dense_18_2860550:
identity�� dense_18/StatefulPartitionedCall�lstm_54/StatefulPartitionedCall�lstm_55/StatefulPartitionedCall�lstm_56/StatefulPartitionedCall�
lstm_54/StatefulPartitionedCallStatefulPartitionedCallinputslstm_54_2860230lstm_54_2860232lstm_54_2860234*
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2860229�
lstm_55/StatefulPartitionedCallStatefulPartitionedCall(lstm_54/StatefulPartitionedCall:output:0lstm_55_2860380lstm_55_2860382lstm_55_2860384*
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860379�
lstm_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_55/StatefulPartitionedCall:output:0lstm_56_2860530lstm_56_2860532lstm_56_2860534*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860529�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_18_2860548dense_18_2860550*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_54/StatefulPartitionedCall ^lstm_55/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_54/StatefulPartitionedCalllstm_54/StatefulPartitionedCall2B
lstm_55/StatefulPartitionedCalllstm_55/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�

lstm_55_while_body_2861542,
(lstm_55_while_lstm_55_while_loop_counter2
.lstm_55_while_lstm_55_while_maximum_iterations
lstm_55_while_placeholder
lstm_55_while_placeholder_1
lstm_55_while_placeholder_2
lstm_55_while_placeholder_3+
'lstm_55_while_lstm_55_strided_slice_1_0g
clstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0:	d�Q
>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�L
=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
lstm_55_while_identity
lstm_55_while_identity_1
lstm_55_while_identity_2
lstm_55_while_identity_3
lstm_55_while_identity_4
lstm_55_while_identity_5)
%lstm_55_while_lstm_55_strided_slice_1e
alstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensorM
:lstm_55_while_lstm_cell_472_matmul_readvariableop_resource:	d�O
<lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource:	2�J
;lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource:	���2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp�1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp�3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp�
?lstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_55/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0lstm_55_while_placeholderHlstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_55/while/lstm_cell_472/MatMulMatMul8lstm_55/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_55/while/lstm_cell_472/MatMul_1MatMullstm_55_while_placeholder_2;lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_55/while/lstm_cell_472/addAddV2,lstm_55/while/lstm_cell_472/MatMul:product:0.lstm_55/while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_55/while/lstm_cell_472/BiasAddBiasAdd#lstm_55/while/lstm_cell_472/add:z:0:lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_55/while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_55/while/lstm_cell_472/splitSplit4lstm_55/while/lstm_cell_472/split/split_dim:output:0,lstm_55/while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_55/while/lstm_cell_472/SigmoidSigmoid*lstm_55/while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_55/while/lstm_cell_472/Sigmoid_1Sigmoid*lstm_55/while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_55/while/lstm_cell_472/mulMul)lstm_55/while/lstm_cell_472/Sigmoid_1:y:0lstm_55_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_55/while/lstm_cell_472/ReluRelu*lstm_55/while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/mul_1Mul'lstm_55/while/lstm_cell_472/Sigmoid:y:0.lstm_55/while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/add_1AddV2#lstm_55/while/lstm_cell_472/mul:z:0%lstm_55/while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_55/while/lstm_cell_472/Sigmoid_2Sigmoid*lstm_55/while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_55/while/lstm_cell_472/Relu_1Relu%lstm_55/while/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/mul_2Mul)lstm_55/while/lstm_cell_472/Sigmoid_2:y:00lstm_55/while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_55/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_55_while_placeholder_1lstm_55_while_placeholder%lstm_55/while/lstm_cell_472/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_55/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_55/while/addAddV2lstm_55_while_placeholderlstm_55/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_55/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_55/while/add_1AddV2(lstm_55_while_lstm_55_while_loop_counterlstm_55/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_55/while/IdentityIdentitylstm_55/while/add_1:z:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_1Identity.lstm_55_while_lstm_55_while_maximum_iterations^lstm_55/while/NoOp*
T0*
_output_shapes
: q
lstm_55/while/Identity_2Identitylstm_55/while/add:z:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_3IdentityBlstm_55/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_4Identity%lstm_55/while/lstm_cell_472/mul_2:z:0^lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_55/while/Identity_5Identity%lstm_55/while/lstm_cell_472/add_1:z:0^lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_55/while/NoOpNoOp3^lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2^lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp4^lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_55_while_identitylstm_55/while/Identity:output:0"=
lstm_55_while_identity_1!lstm_55/while/Identity_1:output:0"=
lstm_55_while_identity_2!lstm_55/while/Identity_2:output:0"=
lstm_55_while_identity_3!lstm_55/while/Identity_3:output:0"=
lstm_55_while_identity_4!lstm_55/while/Identity_4:output:0"=
lstm_55_while_identity_5!lstm_55/while/Identity_5:output:0"P
%lstm_55_while_lstm_55_strided_slice_1'lstm_55_while_lstm_55_strided_slice_1_0"|
;lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0"~
<lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0"z
:lstm_55_while_lstm_cell_472_matmul_readvariableop_resource<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0"�
alstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensorclstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2f
1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp2j
3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
while_cond_2863345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863345___redundant_placeholder05
1while_while_cond_2863345___redundant_placeholder15
1while_while_cond_2863345___redundant_placeholder25
1while_while_cond_2863345___redundant_placeholder3
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
�B
�

lstm_55_while_body_2861969,
(lstm_55_while_lstm_55_while_loop_counter2
.lstm_55_while_lstm_55_while_maximum_iterations
lstm_55_while_placeholder
lstm_55_while_placeholder_1
lstm_55_while_placeholder_2
lstm_55_while_placeholder_3+
'lstm_55_while_lstm_55_strided_slice_1_0g
clstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0:	d�Q
>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�L
=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
lstm_55_while_identity
lstm_55_while_identity_1
lstm_55_while_identity_2
lstm_55_while_identity_3
lstm_55_while_identity_4
lstm_55_while_identity_5)
%lstm_55_while_lstm_55_strided_slice_1e
alstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensorM
:lstm_55_while_lstm_cell_472_matmul_readvariableop_resource:	d�O
<lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource:	2�J
;lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource:	���2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp�1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp�3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp�
?lstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_55/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0lstm_55_while_placeholderHlstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_55/while/lstm_cell_472/MatMulMatMul8lstm_55/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_55/while/lstm_cell_472/MatMul_1MatMullstm_55_while_placeholder_2;lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_55/while/lstm_cell_472/addAddV2,lstm_55/while/lstm_cell_472/MatMul:product:0.lstm_55/while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_55/while/lstm_cell_472/BiasAddBiasAdd#lstm_55/while/lstm_cell_472/add:z:0:lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_55/while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_55/while/lstm_cell_472/splitSplit4lstm_55/while/lstm_cell_472/split/split_dim:output:0,lstm_55/while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_55/while/lstm_cell_472/SigmoidSigmoid*lstm_55/while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_55/while/lstm_cell_472/Sigmoid_1Sigmoid*lstm_55/while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_55/while/lstm_cell_472/mulMul)lstm_55/while/lstm_cell_472/Sigmoid_1:y:0lstm_55_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_55/while/lstm_cell_472/ReluRelu*lstm_55/while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/mul_1Mul'lstm_55/while/lstm_cell_472/Sigmoid:y:0.lstm_55/while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/add_1AddV2#lstm_55/while/lstm_cell_472/mul:z:0%lstm_55/while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_55/while/lstm_cell_472/Sigmoid_2Sigmoid*lstm_55/while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_55/while/lstm_cell_472/Relu_1Relu%lstm_55/while/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_55/while/lstm_cell_472/mul_2Mul)lstm_55/while/lstm_cell_472/Sigmoid_2:y:00lstm_55/while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_55/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_55_while_placeholder_1lstm_55_while_placeholder%lstm_55/while/lstm_cell_472/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_55/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_55/while/addAddV2lstm_55_while_placeholderlstm_55/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_55/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_55/while/add_1AddV2(lstm_55_while_lstm_55_while_loop_counterlstm_55/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_55/while/IdentityIdentitylstm_55/while/add_1:z:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_1Identity.lstm_55_while_lstm_55_while_maximum_iterations^lstm_55/while/NoOp*
T0*
_output_shapes
: q
lstm_55/while/Identity_2Identitylstm_55/while/add:z:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_3IdentityBlstm_55/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_55/while/NoOp*
T0*
_output_shapes
: �
lstm_55/while/Identity_4Identity%lstm_55/while/lstm_cell_472/mul_2:z:0^lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_55/while/Identity_5Identity%lstm_55/while/lstm_cell_472/add_1:z:0^lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_55/while/NoOpNoOp3^lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2^lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp4^lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_55_while_identitylstm_55/while/Identity:output:0"=
lstm_55_while_identity_1!lstm_55/while/Identity_1:output:0"=
lstm_55_while_identity_2!lstm_55/while/Identity_2:output:0"=
lstm_55_while_identity_3!lstm_55/while/Identity_3:output:0"=
lstm_55_while_identity_4!lstm_55/while/Identity_4:output:0"=
lstm_55_while_identity_5!lstm_55/while/Identity_5:output:0"P
%lstm_55_while_lstm_55_strided_slice_1'lstm_55_while_lstm_55_strided_slice_1_0"|
;lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource=lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0"~
<lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource>lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0"z
:lstm_55_while_lstm_cell_472_matmul_readvariableop_resource<lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0"�
alstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensorclstm_55_while_tensorarrayv2read_tensorlistgetitem_lstm_55_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2f
1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp1lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp2j
3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp3lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
while_body_2863819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2859880

inputs'
lstm_cell_473_2859798:2('
lstm_cell_473_2859800:
(#
lstm_cell_473_2859802:(
identity��%lstm_cell_473/StatefulPartitionedCall�while;
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
%lstm_cell_473/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_473_2859798lstm_cell_473_2859800lstm_cell_473_2859802*
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859797n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_473_2859798lstm_cell_473_2859800lstm_cell_473_2859802*
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
while_body_2859811*
condR
while_cond_2859810*K
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
NoOpNoOp&^lstm_cell_473/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_473/StatefulPartitionedCall%lstm_cell_473/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�8
�
while_body_2860661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
lstm_55_while_cond_2861541,
(lstm_55_while_lstm_55_while_loop_counter2
.lstm_55_while_lstm_55_while_maximum_iterations
lstm_55_while_placeholder
lstm_55_while_placeholder_1
lstm_55_while_placeholder_2
lstm_55_while_placeholder_3.
*lstm_55_while_less_lstm_55_strided_slice_1E
Alstm_55_while_lstm_55_while_cond_2861541___redundant_placeholder0E
Alstm_55_while_lstm_55_while_cond_2861541___redundant_placeholder1E
Alstm_55_while_lstm_55_while_cond_2861541___redundant_placeholder2E
Alstm_55_while_lstm_55_while_cond_2861541___redundant_placeholder3
lstm_55_while_identity
�
lstm_55/while/LessLesslstm_55_while_placeholder*lstm_55_while_less_lstm_55_strided_slice_1*
T0*
_output_shapes
: [
lstm_55/while/IdentityIdentitylstm_55/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_55_while_identitylstm_55/while/Identity:output:0*(
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
while_body_2863060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_56_layer_call_fn_2863441
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2859880o
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
�#
�
while_body_2859811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_473_2859835_0:2(/
while_lstm_cell_473_2859837_0:
(+
while_lstm_cell_473_2859839_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_473_2859835:2(-
while_lstm_cell_473_2859837:
()
while_lstm_cell_473_2859839:(��+while/lstm_cell_473/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_473/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_473_2859835_0while_lstm_cell_473_2859837_0while_lstm_cell_473_2859839_0*
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859797�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_473/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_473/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_473/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_473_2859835while_lstm_cell_473_2859835_0"<
while_lstm_cell_473_2859837while_lstm_cell_473_2859837_0"<
while_lstm_cell_473_2859839while_lstm_cell_473_2859839_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_473/StatefulPartitionedCall+while/lstm_cell_473/StatefulPartitionedCall: 
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
/__inference_sequential_18_layer_call_fn_2860579
lstm_54_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2860554o
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
_user_specified_namelstm_54_input
�J
�
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862671

inputs?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2862587*
condR
while_cond_2862586*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
D__inference_lstm_55_layer_call_and_return_conditional_losses_2859721

inputs(
lstm_cell_472_2859639:	d�(
lstm_cell_472_2859641:	2�$
lstm_cell_472_2859643:	�
identity��%lstm_cell_472/StatefulPartitionedCall�while;
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
%lstm_cell_472/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_472_2859639lstm_cell_472_2859641lstm_cell_472_2859643*
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859593n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_472_2859639lstm_cell_472_2859641lstm_cell_472_2859643*
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
while_body_2859652*
condR
while_cond_2859651*K
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
NoOpNoOp&^lstm_cell_472/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_472/StatefulPartitionedCall%lstm_cell_472/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_2861290
lstm_54_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2859030o
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
_user_specified_namelstm_54_input
�
�
(sequential_18_lstm_54_while_cond_2858661H
Dsequential_18_lstm_54_while_sequential_18_lstm_54_while_loop_counterN
Jsequential_18_lstm_54_while_sequential_18_lstm_54_while_maximum_iterations+
'sequential_18_lstm_54_while_placeholder-
)sequential_18_lstm_54_while_placeholder_1-
)sequential_18_lstm_54_while_placeholder_2-
)sequential_18_lstm_54_while_placeholder_3J
Fsequential_18_lstm_54_while_less_sequential_18_lstm_54_strided_slice_1a
]sequential_18_lstm_54_while_sequential_18_lstm_54_while_cond_2858661___redundant_placeholder0a
]sequential_18_lstm_54_while_sequential_18_lstm_54_while_cond_2858661___redundant_placeholder1a
]sequential_18_lstm_54_while_sequential_18_lstm_54_while_cond_2858661___redundant_placeholder2a
]sequential_18_lstm_54_while_sequential_18_lstm_54_while_cond_2858661___redundant_placeholder3(
$sequential_18_lstm_54_while_identity
�
 sequential_18/lstm_54/while/LessLess'sequential_18_lstm_54_while_placeholderFsequential_18_lstm_54_while_less_sequential_18_lstm_54_strided_slice_1*
T0*
_output_shapes
: w
$sequential_18/lstm_54/while/IdentityIdentity$sequential_18/lstm_54/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_18_lstm_54_while_identity-sequential_18/lstm_54/while/Identity:output:0*(
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
while_cond_2862443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2862443___redundant_placeholder05
1while_while_cond_2862443___redundant_placeholder15
1while_while_cond_2862443___redundant_placeholder25
1while_while_cond_2862443___redundant_placeholder3
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863001
inputs_0?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2862917*
condR
while_cond_2862916*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�K
�
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862385
inputs_0?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2862301*
condR
while_cond_2862300*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_2859110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2859110___redundant_placeholder05
1while_while_cond_2859110___redundant_placeholder15
1while_while_cond_2859110___redundant_placeholder25
1while_while_cond_2859110___redundant_placeholder3
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
while_body_2862301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2864065

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
�
�
while_cond_2859651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2859651___redundant_placeholder05
1while_while_cond_2859651___redundant_placeholder15
1while_while_cond_2859651___redundant_placeholder25
1while_while_cond_2859651___redundant_placeholder3
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
while_body_2863533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
(sequential_18_lstm_54_while_body_2858662H
Dsequential_18_lstm_54_while_sequential_18_lstm_54_while_loop_counterN
Jsequential_18_lstm_54_while_sequential_18_lstm_54_while_maximum_iterations+
'sequential_18_lstm_54_while_placeholder-
)sequential_18_lstm_54_while_placeholder_1-
)sequential_18_lstm_54_while_placeholder_2-
)sequential_18_lstm_54_while_placeholder_3G
Csequential_18_lstm_54_while_sequential_18_lstm_54_strided_slice_1_0�
sequential_18_lstm_54_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_54_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_18_lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0:	�_
Lsequential_18_lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�Z
Ksequential_18_lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0:	�(
$sequential_18_lstm_54_while_identity*
&sequential_18_lstm_54_while_identity_1*
&sequential_18_lstm_54_while_identity_2*
&sequential_18_lstm_54_while_identity_3*
&sequential_18_lstm_54_while_identity_4*
&sequential_18_lstm_54_while_identity_5E
Asequential_18_lstm_54_while_sequential_18_lstm_54_strided_slice_1�
}sequential_18_lstm_54_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_54_tensorarrayunstack_tensorlistfromtensor[
Hsequential_18_lstm_54_while_lstm_cell_471_matmul_readvariableop_resource:	�]
Jsequential_18_lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource:	d�X
Isequential_18_lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource:	���@sequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp�?sequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp�Asequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp�
Msequential_18/lstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_18/lstm_54/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_18_lstm_54_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_54_tensorarrayunstack_tensorlistfromtensor_0'sequential_18_lstm_54_while_placeholderVsequential_18/lstm_54/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
?sequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOpJsequential_18_lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
0sequential_18/lstm_54/while/lstm_cell_471/MatMulMatMulFsequential_18/lstm_54/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOpLsequential_18_lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_18/lstm_54/while/lstm_cell_471/MatMul_1MatMul)sequential_18_lstm_54_while_placeholder_2Isequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_18/lstm_54/while/lstm_cell_471/addAddV2:sequential_18/lstm_54/while/lstm_cell_471/MatMul:product:0<sequential_18/lstm_54/while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOpKsequential_18_lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_18/lstm_54/while/lstm_cell_471/BiasAddBiasAdd1sequential_18/lstm_54/while/lstm_cell_471/add:z:0Hsequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_18/lstm_54/while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_18/lstm_54/while/lstm_cell_471/splitSplitBsequential_18/lstm_54/while/lstm_cell_471/split/split_dim:output:0:sequential_18/lstm_54/while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
1sequential_18/lstm_54/while/lstm_cell_471/SigmoidSigmoid8sequential_18/lstm_54/while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
3sequential_18/lstm_54/while/lstm_cell_471/Sigmoid_1Sigmoid8sequential_18/lstm_54/while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
-sequential_18/lstm_54/while/lstm_cell_471/mulMul7sequential_18/lstm_54/while/lstm_cell_471/Sigmoid_1:y:0)sequential_18_lstm_54_while_placeholder_3*
T0*'
_output_shapes
:���������d�
.sequential_18/lstm_54/while/lstm_cell_471/ReluRelu8sequential_18/lstm_54/while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
/sequential_18/lstm_54/while/lstm_cell_471/mul_1Mul5sequential_18/lstm_54/while/lstm_cell_471/Sigmoid:y:0<sequential_18/lstm_54/while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
/sequential_18/lstm_54/while/lstm_cell_471/add_1AddV21sequential_18/lstm_54/while/lstm_cell_471/mul:z:03sequential_18/lstm_54/while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
3sequential_18/lstm_54/while/lstm_cell_471/Sigmoid_2Sigmoid8sequential_18/lstm_54/while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������d�
0sequential_18/lstm_54/while/lstm_cell_471/Relu_1Relu3sequential_18/lstm_54/while/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_18/lstm_54/while/lstm_cell_471/mul_2Mul7sequential_18/lstm_54/while/lstm_cell_471/Sigmoid_2:y:0>sequential_18/lstm_54/while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
@sequential_18/lstm_54/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_18_lstm_54_while_placeholder_1'sequential_18_lstm_54_while_placeholder3sequential_18/lstm_54/while/lstm_cell_471/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_18/lstm_54/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_18/lstm_54/while/addAddV2'sequential_18_lstm_54_while_placeholder*sequential_18/lstm_54/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_18/lstm_54/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_18/lstm_54/while/add_1AddV2Dsequential_18_lstm_54_while_sequential_18_lstm_54_while_loop_counter,sequential_18/lstm_54/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_18/lstm_54/while/IdentityIdentity%sequential_18/lstm_54/while/add_1:z:0!^sequential_18/lstm_54/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_54/while/Identity_1IdentityJsequential_18_lstm_54_while_sequential_18_lstm_54_while_maximum_iterations!^sequential_18/lstm_54/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_54/while/Identity_2Identity#sequential_18/lstm_54/while/add:z:0!^sequential_18/lstm_54/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_54/while/Identity_3IdentityPsequential_18/lstm_54/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_18/lstm_54/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_54/while/Identity_4Identity3sequential_18/lstm_54/while/lstm_cell_471/mul_2:z:0!^sequential_18/lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
&sequential_18/lstm_54/while/Identity_5Identity3sequential_18/lstm_54/while/lstm_cell_471/add_1:z:0!^sequential_18/lstm_54/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential_18/lstm_54/while/NoOpNoOpA^sequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp@^sequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOpB^sequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_18_lstm_54_while_identity-sequential_18/lstm_54/while/Identity:output:0"Y
&sequential_18_lstm_54_while_identity_1/sequential_18/lstm_54/while/Identity_1:output:0"Y
&sequential_18_lstm_54_while_identity_2/sequential_18/lstm_54/while/Identity_2:output:0"Y
&sequential_18_lstm_54_while_identity_3/sequential_18/lstm_54/while/Identity_3:output:0"Y
&sequential_18_lstm_54_while_identity_4/sequential_18/lstm_54/while/Identity_4:output:0"Y
&sequential_18_lstm_54_while_identity_5/sequential_18/lstm_54/while/Identity_5:output:0"�
Isequential_18_lstm_54_while_lstm_cell_471_biasadd_readvariableop_resourceKsequential_18_lstm_54_while_lstm_cell_471_biasadd_readvariableop_resource_0"�
Jsequential_18_lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resourceLsequential_18_lstm_54_while_lstm_cell_471_matmul_1_readvariableop_resource_0"�
Hsequential_18_lstm_54_while_lstm_cell_471_matmul_readvariableop_resourceJsequential_18_lstm_54_while_lstm_cell_471_matmul_readvariableop_resource_0"�
Asequential_18_lstm_54_while_sequential_18_lstm_54_strided_slice_1Csequential_18_lstm_54_while_sequential_18_lstm_54_strided_slice_1_0"�
}sequential_18_lstm_54_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_54_tensorarrayunstack_tensorlistfromtensorsequential_18_lstm_54_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_54_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
@sequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp@sequential_18/lstm_54/while/lstm_cell_471/BiasAdd/ReadVariableOp2�
?sequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp?sequential_18/lstm_54/while/lstm_cell_471/MatMul/ReadVariableOp2�
Asequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOpAsequential_18/lstm_54/while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
while_body_2863346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863617
inputs_0>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2863533*
condR
while_cond_2863532*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_2860990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860990___redundant_placeholder05
1while_while_cond_2860990___redundant_placeholder15
1while_while_cond_2860990___redundant_placeholder25
1while_while_cond_2860990___redundant_placeholder3
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862528
inputs_0?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2862444*
condR
while_cond_2862443*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
while_body_2860991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
while_body_2860826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
while_body_2862444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
while_cond_2859301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2859301___redundant_placeholder05
1while_while_cond_2859301___redundant_placeholder15
1while_while_cond_2859301___redundant_placeholder25
1while_while_cond_2859301___redundant_placeholder3
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
�
�
)__inference_lstm_56_layer_call_fn_2863474

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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860745o
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
�J
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2864046

inputs>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2863962*
condR
while_cond_2863961*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_2860444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860444___redundant_placeholder05
1while_while_cond_2860444___redundant_placeholder15
1while_while_cond_2860444___redundant_placeholder25
1while_while_cond_2860444___redundant_placeholder3
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
�
�
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859593

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
�
�
while_cond_2863059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863059___redundant_placeholder05
1while_while_cond_2863059___redundant_placeholder15
1while_while_cond_2863059___redundant_placeholder25
1while_while_cond_2863059___redundant_placeholder3
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2859371

inputs(
lstm_cell_471_2859289:	�(
lstm_cell_471_2859291:	d�$
lstm_cell_471_2859293:	�
identity��%lstm_cell_471/StatefulPartitionedCall�while;
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
%lstm_cell_471/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_471_2859289lstm_cell_471_2859291lstm_cell_471_2859293*
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859243n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_471_2859289lstm_cell_471_2859291lstm_cell_471_2859293*
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
while_body_2859302*
condR
while_cond_2859301*K
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
NoOpNoOp&^lstm_cell_471/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_471/StatefulPartitionedCall%lstm_cell_471/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
)__inference_lstm_56_layer_call_fn_2863452
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860071o
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
�
�
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864261

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
while_cond_2862586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2862586___redundant_placeholder05
1while_while_cond_2862586___redundant_placeholder15
1while_while_cond_2862586___redundant_placeholder25
1while_while_cond_2862586___redundant_placeholder3
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
while_cond_2860144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860144___redundant_placeholder05
1while_while_cond_2860144___redundant_placeholder15
1while_while_cond_2860144___redundant_placeholder25
1while_while_cond_2860144___redundant_placeholder3
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
while_cond_2860294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860294___redundant_placeholder05
1while_while_cond_2860294___redundant_placeholder15
1while_while_cond_2860294___redundant_placeholder25
1while_while_cond_2860294___redundant_placeholder3
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
while_body_2860295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_472_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_472_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_472_matmul_readvariableop_resource:	d�G
4while_lstm_cell_472_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_472_biasadd_readvariableop_resource:	���*while/lstm_cell_472/BiasAdd/ReadVariableOp�)while/lstm_cell_472/MatMul/ReadVariableOp�+while/lstm_cell_472/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_472/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_472/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_472/addAddV2$while/lstm_cell_472/MatMul:product:0&while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_472/BiasAddBiasAddwhile/lstm_cell_472/add:z:02while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_472/splitSplit,while/lstm_cell_472/split/split_dim:output:0$while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_472/SigmoidSigmoid"while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_1Sigmoid"while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mulMul!while/lstm_cell_472/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_472/ReluRelu"while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_1Mulwhile/lstm_cell_472/Sigmoid:y:0&while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/add_1AddV2while/lstm_cell_472/mul:z:0while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_472/Sigmoid_2Sigmoid"while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_472/Relu_1Reluwhile/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_472/mul_2Mul!while/lstm_cell_472/Sigmoid_2:y:0(while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_472/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_472/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_472/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_472/BiasAdd/ReadVariableOp*^while/lstm_cell_472/MatMul/ReadVariableOp,^while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_472_biasadd_readvariableop_resource5while_lstm_cell_472_biasadd_readvariableop_resource_0"n
4while_lstm_cell_472_matmul_1_readvariableop_resource6while_lstm_cell_472_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_472_matmul_readvariableop_resource4while_lstm_cell_472_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_472/BiasAdd/ReadVariableOp*while/lstm_cell_472/BiasAdd/ReadVariableOp2V
)while/lstm_cell_472/MatMul/ReadVariableOp)while/lstm_cell_472/MatMul/ReadVariableOp2Z
+while/lstm_cell_472/MatMul_1/ReadVariableOp+while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
�
�
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861255
lstm_54_input"
lstm_54_2861228:	�"
lstm_54_2861230:	d�
lstm_54_2861232:	�"
lstm_55_2861235:	d�"
lstm_55_2861237:	2�
lstm_55_2861239:	�!
lstm_56_2861242:2(!
lstm_56_2861244:
(
lstm_56_2861246:("
dense_18_2861249:

dense_18_2861251:
identity�� dense_18/StatefulPartitionedCall�lstm_54/StatefulPartitionedCall�lstm_55/StatefulPartitionedCall�lstm_56/StatefulPartitionedCall�
lstm_54/StatefulPartitionedCallStatefulPartitionedCalllstm_54_inputlstm_54_2861228lstm_54_2861230lstm_54_2861232*
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2861075�
lstm_55/StatefulPartitionedCallStatefulPartitionedCall(lstm_54/StatefulPartitionedCall:output:0lstm_55_2861235lstm_55_2861237lstm_55_2861239*
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860910�
lstm_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_55/StatefulPartitionedCall:output:0lstm_56_2861242lstm_56_2861244lstm_56_2861246*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860745�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_18_2861249dense_18_2861251*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_54/StatefulPartitionedCall ^lstm_55/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_54/StatefulPartitionedCalllstm_54/StatefulPartitionedCall2B
lstm_55/StatefulPartitionedCalllstm_55/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_54_input
�
�
)__inference_lstm_55_layer_call_fn_2862836
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2859721|
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
�
�
)__inference_lstm_55_layer_call_fn_2862858

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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860910s
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859943

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
while_cond_2860825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860825___redundant_placeholder05
1while_while_cond_2860825___redundant_placeholder15
1while_while_cond_2860825___redundant_placeholder25
1while_while_cond_2860825___redundant_placeholder3
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
)__inference_lstm_55_layer_call_fn_2862847

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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860379s
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
)__inference_lstm_56_layer_call_fn_2863463

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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860529o
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

�
lstm_56_while_cond_2861680,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2861680___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2861680___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2861680___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2861680___redundant_placeholder3
lstm_56_while_identity
�
lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: [
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
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
while_body_2862730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
while_cond_2859460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2859460___redundant_placeholder05
1while_while_cond_2859460___redundant_placeholder15
1while_while_cond_2859460___redundant_placeholder25
1while_while_cond_2859460___redundant_placeholder3
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
while_body_2863676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
while_body_2859302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_471_2859326_0:	�0
while_lstm_cell_471_2859328_0:	d�,
while_lstm_cell_471_2859330_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_471_2859326:	�.
while_lstm_cell_471_2859328:	d�*
while_lstm_cell_471_2859330:	���+while/lstm_cell_471/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_471/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_471_2859326_0while_lstm_cell_471_2859328_0while_lstm_cell_471_2859330_0*
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859243�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_471/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_471/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_471/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_471/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_471_2859326while_lstm_cell_471_2859326_0"<
while_lstm_cell_471_2859328while_lstm_cell_471_2859328_0"<
while_lstm_cell_471_2859330while_lstm_cell_471_2859330_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_471/StatefulPartitionedCall+while/lstm_cell_471/StatefulPartitionedCall: 
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
/__inference_lstm_cell_473_layer_call_fn_2864295

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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859943o
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
ݳ
�
"__inference__wrapped_model_2859030
lstm_54_inputU
Bsequential_18_lstm_54_lstm_cell_471_matmul_readvariableop_resource:	�W
Dsequential_18_lstm_54_lstm_cell_471_matmul_1_readvariableop_resource:	d�R
Csequential_18_lstm_54_lstm_cell_471_biasadd_readvariableop_resource:	�U
Bsequential_18_lstm_55_lstm_cell_472_matmul_readvariableop_resource:	d�W
Dsequential_18_lstm_55_lstm_cell_472_matmul_1_readvariableop_resource:	2�R
Csequential_18_lstm_55_lstm_cell_472_biasadd_readvariableop_resource:	�T
Bsequential_18_lstm_56_lstm_cell_473_matmul_readvariableop_resource:2(V
Dsequential_18_lstm_56_lstm_cell_473_matmul_1_readvariableop_resource:
(Q
Csequential_18_lstm_56_lstm_cell_473_biasadd_readvariableop_resource:(G
5sequential_18_dense_18_matmul_readvariableop_resource:
D
6sequential_18_dense_18_biasadd_readvariableop_resource:
identity��-sequential_18/dense_18/BiasAdd/ReadVariableOp�,sequential_18/dense_18/MatMul/ReadVariableOp�:sequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp�9sequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOp�;sequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp�sequential_18/lstm_54/while�:sequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp�9sequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOp�;sequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp�sequential_18/lstm_55/while�:sequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp�9sequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOp�;sequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp�sequential_18/lstm_56/whileX
sequential_18/lstm_54/ShapeShapelstm_54_input*
T0*
_output_shapes
:s
)sequential_18/lstm_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_18/lstm_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_18/lstm_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_18/lstm_54/strided_sliceStridedSlice$sequential_18/lstm_54/Shape:output:02sequential_18/lstm_54/strided_slice/stack:output:04sequential_18/lstm_54/strided_slice/stack_1:output:04sequential_18/lstm_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_18/lstm_54/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
"sequential_18/lstm_54/zeros/packedPack,sequential_18/lstm_54/strided_slice:output:0-sequential_18/lstm_54/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_18/lstm_54/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_54/zerosFill+sequential_18/lstm_54/zeros/packed:output:0*sequential_18/lstm_54/zeros/Const:output:0*
T0*'
_output_shapes
:���������dh
&sequential_18/lstm_54/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_18/lstm_54/zeros_1/packedPack,sequential_18/lstm_54/strided_slice:output:0/sequential_18/lstm_54/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_18/lstm_54/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_54/zeros_1Fill-sequential_18/lstm_54/zeros_1/packed:output:0,sequential_18/lstm_54/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dy
$sequential_18/lstm_54/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_18/lstm_54/transpose	Transposelstm_54_input-sequential_18/lstm_54/transpose/perm:output:0*
T0*+
_output_shapes
:���������p
sequential_18/lstm_54/Shape_1Shape#sequential_18/lstm_54/transpose:y:0*
T0*
_output_shapes
:u
+sequential_18/lstm_54/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_54/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_54/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_54/strided_slice_1StridedSlice&sequential_18/lstm_54/Shape_1:output:04sequential_18/lstm_54/strided_slice_1/stack:output:06sequential_18/lstm_54/strided_slice_1/stack_1:output:06sequential_18/lstm_54/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_18/lstm_54/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_18/lstm_54/TensorArrayV2TensorListReserve:sequential_18/lstm_54/TensorArrayV2/element_shape:output:0.sequential_18/lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_18/lstm_54/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_18/lstm_54/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_18/lstm_54/transpose:y:0Tsequential_18/lstm_54/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_18/lstm_54/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_54/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_54/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_54/strided_slice_2StridedSlice#sequential_18/lstm_54/transpose:y:04sequential_18/lstm_54/strided_slice_2/stack:output:06sequential_18/lstm_54/strided_slice_2/stack_1:output:06sequential_18/lstm_54/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
9sequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOpReadVariableOpBsequential_18_lstm_54_lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*sequential_18/lstm_54/lstm_cell_471/MatMulMatMul.sequential_18/lstm_54/strided_slice_2:output:0Asequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOpDsequential_18_lstm_54_lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_18/lstm_54/lstm_cell_471/MatMul_1MatMul$sequential_18/lstm_54/zeros:output:0Csequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_18/lstm_54/lstm_cell_471/addAddV24sequential_18/lstm_54/lstm_cell_471/MatMul:product:06sequential_18/lstm_54/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOpCsequential_18_lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_18/lstm_54/lstm_cell_471/BiasAddBiasAdd+sequential_18/lstm_54/lstm_cell_471/add:z:0Bsequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_18/lstm_54/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_18/lstm_54/lstm_cell_471/splitSplit<sequential_18/lstm_54/lstm_cell_471/split/split_dim:output:04sequential_18/lstm_54/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
+sequential_18/lstm_54/lstm_cell_471/SigmoidSigmoid2sequential_18/lstm_54/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
-sequential_18/lstm_54/lstm_cell_471/Sigmoid_1Sigmoid2sequential_18/lstm_54/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
'sequential_18/lstm_54/lstm_cell_471/mulMul1sequential_18/lstm_54/lstm_cell_471/Sigmoid_1:y:0&sequential_18/lstm_54/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
(sequential_18/lstm_54/lstm_cell_471/ReluRelu2sequential_18/lstm_54/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
)sequential_18/lstm_54/lstm_cell_471/mul_1Mul/sequential_18/lstm_54/lstm_cell_471/Sigmoid:y:06sequential_18/lstm_54/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential_18/lstm_54/lstm_cell_471/add_1AddV2+sequential_18/lstm_54/lstm_cell_471/mul:z:0-sequential_18/lstm_54/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
-sequential_18/lstm_54/lstm_cell_471/Sigmoid_2Sigmoid2sequential_18/lstm_54/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������d�
*sequential_18/lstm_54/lstm_cell_471/Relu_1Relu-sequential_18/lstm_54/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_18/lstm_54/lstm_cell_471/mul_2Mul1sequential_18/lstm_54/lstm_cell_471/Sigmoid_2:y:08sequential_18/lstm_54/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3sequential_18/lstm_54/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
%sequential_18/lstm_54/TensorArrayV2_1TensorListReserve<sequential_18/lstm_54/TensorArrayV2_1/element_shape:output:0.sequential_18/lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_18/lstm_54/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_18/lstm_54/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_18/lstm_54/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_18/lstm_54/whileWhile1sequential_18/lstm_54/while/loop_counter:output:07sequential_18/lstm_54/while/maximum_iterations:output:0#sequential_18/lstm_54/time:output:0.sequential_18/lstm_54/TensorArrayV2_1:handle:0$sequential_18/lstm_54/zeros:output:0&sequential_18/lstm_54/zeros_1:output:0.sequential_18/lstm_54/strided_slice_1:output:0Msequential_18/lstm_54/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_18_lstm_54_lstm_cell_471_matmul_readvariableop_resourceDsequential_18_lstm_54_lstm_cell_471_matmul_1_readvariableop_resourceCsequential_18_lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
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
(sequential_18_lstm_54_while_body_2858662*4
cond,R*
(sequential_18_lstm_54_while_cond_2858661*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Fsequential_18/lstm_54/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
8sequential_18/lstm_54/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_18/lstm_54/while:output:3Osequential_18/lstm_54/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0~
+sequential_18/lstm_54/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_18/lstm_54/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_54/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_54/strided_slice_3StridedSliceAsequential_18/lstm_54/TensorArrayV2Stack/TensorListStack:tensor:04sequential_18/lstm_54/strided_slice_3/stack:output:06sequential_18/lstm_54/strided_slice_3/stack_1:output:06sequential_18/lstm_54/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask{
&sequential_18/lstm_54/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_18/lstm_54/transpose_1	TransposeAsequential_18/lstm_54/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_18/lstm_54/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dq
sequential_18/lstm_54/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_18/lstm_55/ShapeShape%sequential_18/lstm_54/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_18/lstm_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_18/lstm_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_18/lstm_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_18/lstm_55/strided_sliceStridedSlice$sequential_18/lstm_55/Shape:output:02sequential_18/lstm_55/strided_slice/stack:output:04sequential_18/lstm_55/strided_slice/stack_1:output:04sequential_18/lstm_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_18/lstm_55/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_18/lstm_55/zeros/packedPack,sequential_18/lstm_55/strided_slice:output:0-sequential_18/lstm_55/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_18/lstm_55/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_55/zerosFill+sequential_18/lstm_55/zeros/packed:output:0*sequential_18/lstm_55/zeros/Const:output:0*
T0*'
_output_shapes
:���������2h
&sequential_18/lstm_55/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_18/lstm_55/zeros_1/packedPack,sequential_18/lstm_55/strided_slice:output:0/sequential_18/lstm_55/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_18/lstm_55/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_55/zeros_1Fill-sequential_18/lstm_55/zeros_1/packed:output:0,sequential_18/lstm_55/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2y
$sequential_18/lstm_55/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_18/lstm_55/transpose	Transpose%sequential_18/lstm_54/transpose_1:y:0-sequential_18/lstm_55/transpose/perm:output:0*
T0*+
_output_shapes
:���������dp
sequential_18/lstm_55/Shape_1Shape#sequential_18/lstm_55/transpose:y:0*
T0*
_output_shapes
:u
+sequential_18/lstm_55/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_55/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_55/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_55/strided_slice_1StridedSlice&sequential_18/lstm_55/Shape_1:output:04sequential_18/lstm_55/strided_slice_1/stack:output:06sequential_18/lstm_55/strided_slice_1/stack_1:output:06sequential_18/lstm_55/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_18/lstm_55/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_18/lstm_55/TensorArrayV2TensorListReserve:sequential_18/lstm_55/TensorArrayV2/element_shape:output:0.sequential_18/lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_18/lstm_55/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
=sequential_18/lstm_55/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_18/lstm_55/transpose:y:0Tsequential_18/lstm_55/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_18/lstm_55/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_55/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_55/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_55/strided_slice_2StridedSlice#sequential_18/lstm_55/transpose:y:04sequential_18/lstm_55/strided_slice_2/stack:output:06sequential_18/lstm_55/strided_slice_2/stack_1:output:06sequential_18/lstm_55/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
9sequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOpReadVariableOpBsequential_18_lstm_55_lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
*sequential_18/lstm_55/lstm_cell_472/MatMulMatMul.sequential_18/lstm_55/strided_slice_2:output:0Asequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOpDsequential_18_lstm_55_lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
,sequential_18/lstm_55/lstm_cell_472/MatMul_1MatMul$sequential_18/lstm_55/zeros:output:0Csequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_18/lstm_55/lstm_cell_472/addAddV24sequential_18/lstm_55/lstm_cell_472/MatMul:product:06sequential_18/lstm_55/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOpCsequential_18_lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_18/lstm_55/lstm_cell_472/BiasAddBiasAdd+sequential_18/lstm_55/lstm_cell_472/add:z:0Bsequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_18/lstm_55/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_18/lstm_55/lstm_cell_472/splitSplit<sequential_18/lstm_55/lstm_cell_472/split/split_dim:output:04sequential_18/lstm_55/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
+sequential_18/lstm_55/lstm_cell_472/SigmoidSigmoid2sequential_18/lstm_55/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
-sequential_18/lstm_55/lstm_cell_472/Sigmoid_1Sigmoid2sequential_18/lstm_55/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
'sequential_18/lstm_55/lstm_cell_472/mulMul1sequential_18/lstm_55/lstm_cell_472/Sigmoid_1:y:0&sequential_18/lstm_55/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
(sequential_18/lstm_55/lstm_cell_472/ReluRelu2sequential_18/lstm_55/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
)sequential_18/lstm_55/lstm_cell_472/mul_1Mul/sequential_18/lstm_55/lstm_cell_472/Sigmoid:y:06sequential_18/lstm_55/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
)sequential_18/lstm_55/lstm_cell_472/add_1AddV2+sequential_18/lstm_55/lstm_cell_472/mul:z:0-sequential_18/lstm_55/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_18/lstm_55/lstm_cell_472/Sigmoid_2Sigmoid2sequential_18/lstm_55/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2�
*sequential_18/lstm_55/lstm_cell_472/Relu_1Relu-sequential_18/lstm_55/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
)sequential_18/lstm_55/lstm_cell_472/mul_2Mul1sequential_18/lstm_55/lstm_cell_472/Sigmoid_2:y:08sequential_18/lstm_55/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3sequential_18/lstm_55/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
%sequential_18/lstm_55/TensorArrayV2_1TensorListReserve<sequential_18/lstm_55/TensorArrayV2_1/element_shape:output:0.sequential_18/lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_18/lstm_55/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_18/lstm_55/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_18/lstm_55/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_18/lstm_55/whileWhile1sequential_18/lstm_55/while/loop_counter:output:07sequential_18/lstm_55/while/maximum_iterations:output:0#sequential_18/lstm_55/time:output:0.sequential_18/lstm_55/TensorArrayV2_1:handle:0$sequential_18/lstm_55/zeros:output:0&sequential_18/lstm_55/zeros_1:output:0.sequential_18/lstm_55/strided_slice_1:output:0Msequential_18/lstm_55/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_18_lstm_55_lstm_cell_472_matmul_readvariableop_resourceDsequential_18_lstm_55_lstm_cell_472_matmul_1_readvariableop_resourceCsequential_18_lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
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
(sequential_18_lstm_55_while_body_2858801*4
cond,R*
(sequential_18_lstm_55_while_cond_2858800*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Fsequential_18/lstm_55/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
8sequential_18/lstm_55/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_18/lstm_55/while:output:3Osequential_18/lstm_55/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0~
+sequential_18/lstm_55/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_18/lstm_55/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_55/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_55/strided_slice_3StridedSliceAsequential_18/lstm_55/TensorArrayV2Stack/TensorListStack:tensor:04sequential_18/lstm_55/strided_slice_3/stack:output:06sequential_18/lstm_55/strided_slice_3/stack_1:output:06sequential_18/lstm_55/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask{
&sequential_18/lstm_55/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_18/lstm_55/transpose_1	TransposeAsequential_18/lstm_55/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_18/lstm_55/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_18/lstm_55/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_18/lstm_56/ShapeShape%sequential_18/lstm_55/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_18/lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_18/lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_18/lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_18/lstm_56/strided_sliceStridedSlice$sequential_18/lstm_56/Shape:output:02sequential_18/lstm_56/strided_slice/stack:output:04sequential_18/lstm_56/strided_slice/stack_1:output:04sequential_18/lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_18/lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"sequential_18/lstm_56/zeros/packedPack,sequential_18/lstm_56/strided_slice:output:0-sequential_18/lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_18/lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_56/zerosFill+sequential_18/lstm_56/zeros/packed:output:0*sequential_18/lstm_56/zeros/Const:output:0*
T0*'
_output_shapes
:���������
h
&sequential_18/lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_18/lstm_56/zeros_1/packedPack,sequential_18/lstm_56/strided_slice:output:0/sequential_18/lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_18/lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/lstm_56/zeros_1Fill-sequential_18/lstm_56/zeros_1/packed:output:0,sequential_18/lstm_56/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
y
$sequential_18/lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_18/lstm_56/transpose	Transpose%sequential_18/lstm_55/transpose_1:y:0-sequential_18/lstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:���������2p
sequential_18/lstm_56/Shape_1Shape#sequential_18/lstm_56/transpose:y:0*
T0*
_output_shapes
:u
+sequential_18/lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_56/strided_slice_1StridedSlice&sequential_18/lstm_56/Shape_1:output:04sequential_18/lstm_56/strided_slice_1/stack:output:06sequential_18/lstm_56/strided_slice_1/stack_1:output:06sequential_18/lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_18/lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_18/lstm_56/TensorArrayV2TensorListReserve:sequential_18/lstm_56/TensorArrayV2/element_shape:output:0.sequential_18/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_18/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
=sequential_18/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_18/lstm_56/transpose:y:0Tsequential_18/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_18/lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_18/lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_56/strided_slice_2StridedSlice#sequential_18/lstm_56/transpose:y:04sequential_18/lstm_56/strided_slice_2/stack:output:06sequential_18/lstm_56/strided_slice_2/stack_1:output:06sequential_18/lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
9sequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOpReadVariableOpBsequential_18_lstm_56_lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
*sequential_18/lstm_56/lstm_cell_473/MatMulMatMul.sequential_18/lstm_56/strided_slice_2:output:0Asequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;sequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOpDsequential_18_lstm_56_lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
,sequential_18/lstm_56/lstm_cell_473/MatMul_1MatMul$sequential_18/lstm_56/zeros:output:0Csequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
'sequential_18/lstm_56/lstm_cell_473/addAddV24sequential_18/lstm_56/lstm_cell_473/MatMul:product:06sequential_18/lstm_56/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
:sequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOpCsequential_18_lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
+sequential_18/lstm_56/lstm_cell_473/BiasAddBiasAdd+sequential_18/lstm_56/lstm_cell_473/add:z:0Bsequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(u
3sequential_18/lstm_56/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_18/lstm_56/lstm_cell_473/splitSplit<sequential_18/lstm_56/lstm_cell_473/split/split_dim:output:04sequential_18/lstm_56/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
+sequential_18/lstm_56/lstm_cell_473/SigmoidSigmoid2sequential_18/lstm_56/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
-sequential_18/lstm_56/lstm_cell_473/Sigmoid_1Sigmoid2sequential_18/lstm_56/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
'sequential_18/lstm_56/lstm_cell_473/mulMul1sequential_18/lstm_56/lstm_cell_473/Sigmoid_1:y:0&sequential_18/lstm_56/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
(sequential_18/lstm_56/lstm_cell_473/ReluRelu2sequential_18/lstm_56/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
)sequential_18/lstm_56/lstm_cell_473/mul_1Mul/sequential_18/lstm_56/lstm_cell_473/Sigmoid:y:06sequential_18/lstm_56/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
)sequential_18/lstm_56/lstm_cell_473/add_1AddV2+sequential_18/lstm_56/lstm_cell_473/mul:z:0-sequential_18/lstm_56/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_18/lstm_56/lstm_cell_473/Sigmoid_2Sigmoid2sequential_18/lstm_56/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
�
*sequential_18/lstm_56/lstm_cell_473/Relu_1Relu-sequential_18/lstm_56/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
)sequential_18/lstm_56/lstm_cell_473/mul_2Mul1sequential_18/lstm_56/lstm_cell_473/Sigmoid_2:y:08sequential_18/lstm_56/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3sequential_18/lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
%sequential_18/lstm_56/TensorArrayV2_1TensorListReserve<sequential_18/lstm_56/TensorArrayV2_1/element_shape:output:0.sequential_18/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_18/lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_18/lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_18/lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_18/lstm_56/whileWhile1sequential_18/lstm_56/while/loop_counter:output:07sequential_18/lstm_56/while/maximum_iterations:output:0#sequential_18/lstm_56/time:output:0.sequential_18/lstm_56/TensorArrayV2_1:handle:0$sequential_18/lstm_56/zeros:output:0&sequential_18/lstm_56/zeros_1:output:0.sequential_18/lstm_56/strided_slice_1:output:0Msequential_18/lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_18_lstm_56_lstm_cell_473_matmul_readvariableop_resourceDsequential_18_lstm_56_lstm_cell_473_matmul_1_readvariableop_resourceCsequential_18_lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
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
(sequential_18_lstm_56_while_body_2858940*4
cond,R*
(sequential_18_lstm_56_while_cond_2858939*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Fsequential_18/lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
8sequential_18/lstm_56/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_18/lstm_56/while:output:3Osequential_18/lstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0~
+sequential_18/lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_18/lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_18/lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_18/lstm_56/strided_slice_3StridedSliceAsequential_18/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:04sequential_18/lstm_56/strided_slice_3/stack:output:06sequential_18/lstm_56/strided_slice_3/stack_1:output:06sequential_18/lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask{
&sequential_18/lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_18/lstm_56/transpose_1	TransposeAsequential_18/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_18/lstm_56/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
q
sequential_18/lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_18/dense_18/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_18/dense_18/MatMulMatMul.sequential_18/lstm_56/strided_slice_3:output:04sequential_18/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_18/dense_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_18/dense_18/BiasAddBiasAdd'sequential_18/dense_18/MatMul:product:05sequential_18/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_18/dense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_18/dense_18/BiasAdd/ReadVariableOp-^sequential_18/dense_18/MatMul/ReadVariableOp;^sequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp:^sequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOp<^sequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp^sequential_18/lstm_54/while;^sequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp:^sequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOp<^sequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp^sequential_18/lstm_55/while;^sequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp:^sequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOp<^sequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp^sequential_18/lstm_56/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_18/dense_18/BiasAdd/ReadVariableOp-sequential_18/dense_18/BiasAdd/ReadVariableOp2\
,sequential_18/dense_18/MatMul/ReadVariableOp,sequential_18/dense_18/MatMul/ReadVariableOp2x
:sequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp:sequential_18/lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp2v
9sequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOp9sequential_18/lstm_54/lstm_cell_471/MatMul/ReadVariableOp2z
;sequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp;sequential_18/lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp2:
sequential_18/lstm_54/whilesequential_18/lstm_54/while2x
:sequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp:sequential_18/lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp2v
9sequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOp9sequential_18/lstm_55/lstm_cell_472/MatMul/ReadVariableOp2z
;sequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp;sequential_18/lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp2:
sequential_18/lstm_55/whilesequential_18/lstm_55/while2x
:sequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp:sequential_18/lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp2v
9sequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOp9sequential_18/lstm_56/lstm_cell_473/MatMul/ReadVariableOp2z
;sequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp;sequential_18/lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp2:
sequential_18/lstm_56/whilesequential_18/lstm_56/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_54_input
�J
�
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862814

inputs?
,lstm_cell_471_matmul_readvariableop_resource:	�A
.lstm_cell_471_matmul_1_readvariableop_resource:	d�<
-lstm_cell_471_biasadd_readvariableop_resource:	�
identity��$lstm_cell_471/BiasAdd/ReadVariableOp�#lstm_cell_471/MatMul/ReadVariableOp�%lstm_cell_471/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_471/MatMul/ReadVariableOpReadVariableOp,lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_471/MatMulMatMulstrided_slice_2:output:0+lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_471/MatMul_1MatMulzeros:output:0-lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_471/addAddV2lstm_cell_471/MatMul:product:0 lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_471/BiasAddBiasAddlstm_cell_471/add:z:0,lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_471/splitSplit&lstm_cell_471/split/split_dim:output:0lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_471/SigmoidSigmoidlstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_1Sigmoidlstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_471/mulMullstm_cell_471/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_471/ReluRelulstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_1Mullstm_cell_471/Sigmoid:y:0 lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_471/add_1AddV2lstm_cell_471/mul:z:0lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_471/Sigmoid_2Sigmoidlstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_471/Relu_1Relulstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_471/mul_2Mullstm_cell_471/Sigmoid_2:y:0"lstm_cell_471/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_471_matmul_readvariableop_resource.lstm_cell_471_matmul_1_readvariableop_resource-lstm_cell_471_biasadd_readvariableop_resource*
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
while_body_2862730*
condR
while_cond_2862729*K
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
NoOpNoOp%^lstm_cell_471/BiasAdd/ReadVariableOp$^lstm_cell_471/MatMul/ReadVariableOp&^lstm_cell_471/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_471/BiasAdd/ReadVariableOp$lstm_cell_471/BiasAdd/ReadVariableOp2J
#lstm_cell_471/MatMul/ReadVariableOp#lstm_cell_471/MatMul/ReadVariableOp2N
%lstm_cell_471/MatMul_1/ReadVariableOp%lstm_cell_471/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�R
�
(sequential_18_lstm_55_while_body_2858801H
Dsequential_18_lstm_55_while_sequential_18_lstm_55_while_loop_counterN
Jsequential_18_lstm_55_while_sequential_18_lstm_55_while_maximum_iterations+
'sequential_18_lstm_55_while_placeholder-
)sequential_18_lstm_55_while_placeholder_1-
)sequential_18_lstm_55_while_placeholder_2-
)sequential_18_lstm_55_while_placeholder_3G
Csequential_18_lstm_55_while_sequential_18_lstm_55_strided_slice_1_0�
sequential_18_lstm_55_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_55_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_18_lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0:	d�_
Lsequential_18_lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0:	2�Z
Ksequential_18_lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0:	�(
$sequential_18_lstm_55_while_identity*
&sequential_18_lstm_55_while_identity_1*
&sequential_18_lstm_55_while_identity_2*
&sequential_18_lstm_55_while_identity_3*
&sequential_18_lstm_55_while_identity_4*
&sequential_18_lstm_55_while_identity_5E
Asequential_18_lstm_55_while_sequential_18_lstm_55_strided_slice_1�
}sequential_18_lstm_55_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_55_tensorarrayunstack_tensorlistfromtensor[
Hsequential_18_lstm_55_while_lstm_cell_472_matmul_readvariableop_resource:	d�]
Jsequential_18_lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource:	2�X
Isequential_18_lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource:	���@sequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp�?sequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp�Asequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp�
Msequential_18/lstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_18/lstm_55/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_18_lstm_55_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_55_tensorarrayunstack_tensorlistfromtensor_0'sequential_18_lstm_55_while_placeholderVsequential_18/lstm_55/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
?sequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOpReadVariableOpJsequential_18_lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
0sequential_18/lstm_55/while/lstm_cell_472/MatMulMatMulFsequential_18/lstm_55/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOpLsequential_18_lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
2sequential_18/lstm_55/while/lstm_cell_472/MatMul_1MatMul)sequential_18_lstm_55_while_placeholder_2Isequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_18/lstm_55/while/lstm_cell_472/addAddV2:sequential_18/lstm_55/while/lstm_cell_472/MatMul:product:0<sequential_18/lstm_55/while/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOpKsequential_18_lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_18/lstm_55/while/lstm_cell_472/BiasAddBiasAdd1sequential_18/lstm_55/while/lstm_cell_472/add:z:0Hsequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_18/lstm_55/while/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_18/lstm_55/while/lstm_cell_472/splitSplitBsequential_18/lstm_55/while/lstm_cell_472/split/split_dim:output:0:sequential_18/lstm_55/while/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
1sequential_18/lstm_55/while/lstm_cell_472/SigmoidSigmoid8sequential_18/lstm_55/while/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
3sequential_18/lstm_55/while/lstm_cell_472/Sigmoid_1Sigmoid8sequential_18/lstm_55/while/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
-sequential_18/lstm_55/while/lstm_cell_472/mulMul7sequential_18/lstm_55/while/lstm_cell_472/Sigmoid_1:y:0)sequential_18_lstm_55_while_placeholder_3*
T0*'
_output_shapes
:���������2�
.sequential_18/lstm_55/while/lstm_cell_472/ReluRelu8sequential_18/lstm_55/while/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
/sequential_18/lstm_55/while/lstm_cell_472/mul_1Mul5sequential_18/lstm_55/while/lstm_cell_472/Sigmoid:y:0<sequential_18/lstm_55/while/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
/sequential_18/lstm_55/while/lstm_cell_472/add_1AddV21sequential_18/lstm_55/while/lstm_cell_472/mul:z:03sequential_18/lstm_55/while/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
3sequential_18/lstm_55/while/lstm_cell_472/Sigmoid_2Sigmoid8sequential_18/lstm_55/while/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2�
0sequential_18/lstm_55/while/lstm_cell_472/Relu_1Relu3sequential_18/lstm_55/while/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_18/lstm_55/while/lstm_cell_472/mul_2Mul7sequential_18/lstm_55/while/lstm_cell_472/Sigmoid_2:y:0>sequential_18/lstm_55/while/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
@sequential_18/lstm_55/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_18_lstm_55_while_placeholder_1'sequential_18_lstm_55_while_placeholder3sequential_18/lstm_55/while/lstm_cell_472/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_18/lstm_55/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_18/lstm_55/while/addAddV2'sequential_18_lstm_55_while_placeholder*sequential_18/lstm_55/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_18/lstm_55/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_18/lstm_55/while/add_1AddV2Dsequential_18_lstm_55_while_sequential_18_lstm_55_while_loop_counter,sequential_18/lstm_55/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_18/lstm_55/while/IdentityIdentity%sequential_18/lstm_55/while/add_1:z:0!^sequential_18/lstm_55/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_55/while/Identity_1IdentityJsequential_18_lstm_55_while_sequential_18_lstm_55_while_maximum_iterations!^sequential_18/lstm_55/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_55/while/Identity_2Identity#sequential_18/lstm_55/while/add:z:0!^sequential_18/lstm_55/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_55/while/Identity_3IdentityPsequential_18/lstm_55/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_18/lstm_55/while/NoOp*
T0*
_output_shapes
: �
&sequential_18/lstm_55/while/Identity_4Identity3sequential_18/lstm_55/while/lstm_cell_472/mul_2:z:0!^sequential_18/lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_18/lstm_55/while/Identity_5Identity3sequential_18/lstm_55/while/lstm_cell_472/add_1:z:0!^sequential_18/lstm_55/while/NoOp*
T0*'
_output_shapes
:���������2�
 sequential_18/lstm_55/while/NoOpNoOpA^sequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp@^sequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOpB^sequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_18_lstm_55_while_identity-sequential_18/lstm_55/while/Identity:output:0"Y
&sequential_18_lstm_55_while_identity_1/sequential_18/lstm_55/while/Identity_1:output:0"Y
&sequential_18_lstm_55_while_identity_2/sequential_18/lstm_55/while/Identity_2:output:0"Y
&sequential_18_lstm_55_while_identity_3/sequential_18/lstm_55/while/Identity_3:output:0"Y
&sequential_18_lstm_55_while_identity_4/sequential_18/lstm_55/while/Identity_4:output:0"Y
&sequential_18_lstm_55_while_identity_5/sequential_18/lstm_55/while/Identity_5:output:0"�
Isequential_18_lstm_55_while_lstm_cell_472_biasadd_readvariableop_resourceKsequential_18_lstm_55_while_lstm_cell_472_biasadd_readvariableop_resource_0"�
Jsequential_18_lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resourceLsequential_18_lstm_55_while_lstm_cell_472_matmul_1_readvariableop_resource_0"�
Hsequential_18_lstm_55_while_lstm_cell_472_matmul_readvariableop_resourceJsequential_18_lstm_55_while_lstm_cell_472_matmul_readvariableop_resource_0"�
Asequential_18_lstm_55_while_sequential_18_lstm_55_strided_slice_1Csequential_18_lstm_55_while_sequential_18_lstm_55_strided_slice_1_0"�
}sequential_18_lstm_55_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_55_tensorarrayunstack_tensorlistfromtensorsequential_18_lstm_55_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_55_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
@sequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp@sequential_18/lstm_55/while/lstm_cell_472/BiasAdd/ReadVariableOp2�
?sequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp?sequential_18/lstm_55/while/lstm_cell_472/MatMul/ReadVariableOp2�
Asequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOpAsequential_18/lstm_55/while/lstm_cell_472/MatMul_1/ReadVariableOp: 
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
while_body_2860002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_473_2860026_0:2(/
while_lstm_cell_473_2860028_0:
(+
while_lstm_cell_473_2860030_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_473_2860026:2(-
while_lstm_cell_473_2860028:
()
while_lstm_cell_473_2860030:(��+while/lstm_cell_473/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_473/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_473_2860026_0while_lstm_cell_473_2860028_0while_lstm_cell_473_2860030_0*
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859943�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_473/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_473/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_473/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_473_2860026while_lstm_cell_473_2860026_0"<
while_lstm_cell_473_2860028while_lstm_cell_473_2860028_0"<
while_lstm_cell_473_2860030while_lstm_cell_473_2860030_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_473/StatefulPartitionedCall+while/lstm_cell_473/StatefulPartitionedCall: 
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
while_body_2863962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
�
#__inference__traced_restore_2864632
file_prefix2
 assignvariableop_dense_18_kernel:
.
 assignvariableop_1_dense_18_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_54_lstm_cell_54_kernel:	�K
8assignvariableop_8_lstm_54_lstm_cell_54_recurrent_kernel:	d�;
,assignvariableop_9_lstm_54_lstm_cell_54_bias:	�B
/assignvariableop_10_lstm_55_lstm_cell_55_kernel:	d�L
9assignvariableop_11_lstm_55_lstm_cell_55_recurrent_kernel:	2�<
-assignvariableop_12_lstm_55_lstm_cell_55_bias:	�A
/assignvariableop_13_lstm_56_lstm_cell_56_kernel:2(K
9assignvariableop_14_lstm_56_lstm_cell_56_recurrent_kernel:
(;
-assignvariableop_15_lstm_56_lstm_cell_56_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_18_kernel_m:
6
(assignvariableop_19_adam_dense_18_bias_m:I
6assignvariableop_20_adam_lstm_54_lstm_cell_54_kernel_m:	�S
@assignvariableop_21_adam_lstm_54_lstm_cell_54_recurrent_kernel_m:	d�C
4assignvariableop_22_adam_lstm_54_lstm_cell_54_bias_m:	�I
6assignvariableop_23_adam_lstm_55_lstm_cell_55_kernel_m:	d�S
@assignvariableop_24_adam_lstm_55_lstm_cell_55_recurrent_kernel_m:	2�C
4assignvariableop_25_adam_lstm_55_lstm_cell_55_bias_m:	�H
6assignvariableop_26_adam_lstm_56_lstm_cell_56_kernel_m:2(R
@assignvariableop_27_adam_lstm_56_lstm_cell_56_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_56_lstm_cell_56_bias_m:(<
*assignvariableop_29_adam_dense_18_kernel_v:
6
(assignvariableop_30_adam_dense_18_bias_v:I
6assignvariableop_31_adam_lstm_54_lstm_cell_54_kernel_v:	�S
@assignvariableop_32_adam_lstm_54_lstm_cell_54_recurrent_kernel_v:	d�C
4assignvariableop_33_adam_lstm_54_lstm_cell_54_bias_v:	�I
6assignvariableop_34_adam_lstm_55_lstm_cell_55_kernel_v:	d�S
@assignvariableop_35_adam_lstm_55_lstm_cell_55_recurrent_kernel_v:	2�C
4assignvariableop_36_adam_lstm_55_lstm_cell_55_bias_v:	�H
6assignvariableop_37_adam_lstm_56_lstm_cell_56_kernel_v:2(R
@assignvariableop_38_adam_lstm_56_lstm_cell_56_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_56_lstm_cell_56_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_54_lstm_cell_54_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_54_lstm_cell_54_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_54_lstm_cell_54_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_55_lstm_cell_55_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_55_lstm_cell_55_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_55_lstm_cell_55_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_56_lstm_cell_56_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_56_lstm_cell_56_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_56_lstm_cell_56_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_18_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_18_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_54_lstm_cell_54_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_54_lstm_cell_54_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_54_lstm_cell_54_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_55_lstm_cell_55_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_55_lstm_cell_55_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_55_lstm_cell_55_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_56_lstm_cell_56_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_56_lstm_cell_56_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_56_lstm_cell_56_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_18_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_18_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_54_lstm_cell_54_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_54_lstm_cell_54_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_54_lstm_cell_54_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_55_lstm_cell_55_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_55_lstm_cell_55_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_55_lstm_cell_55_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_56_lstm_cell_56_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_56_lstm_cell_56_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_56_lstm_cell_56_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864359

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
�
�
/__inference_lstm_cell_472_layer_call_fn_2864180

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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859447o
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
�V
�
 __inference__traced_save_2864502
file_prefix.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_54_lstm_cell_54_kernel_read_readvariableopD
@savev2_lstm_54_lstm_cell_54_recurrent_kernel_read_readvariableop8
4savev2_lstm_54_lstm_cell_54_bias_read_readvariableop:
6savev2_lstm_55_lstm_cell_55_kernel_read_readvariableopD
@savev2_lstm_55_lstm_cell_55_recurrent_kernel_read_readvariableop8
4savev2_lstm_55_lstm_cell_55_bias_read_readvariableop:
6savev2_lstm_56_lstm_cell_56_kernel_read_readvariableopD
@savev2_lstm_56_lstm_cell_56_recurrent_kernel_read_readvariableop8
4savev2_lstm_56_lstm_cell_56_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableopA
=savev2_adam_lstm_54_lstm_cell_54_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_54_lstm_cell_54_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_54_lstm_cell_54_bias_m_read_readvariableopA
=savev2_adam_lstm_55_lstm_cell_55_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_55_lstm_cell_55_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_55_lstm_cell_55_bias_m_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_56_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_56_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableopA
=savev2_adam_lstm_54_lstm_cell_54_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_54_lstm_cell_54_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_54_lstm_cell_54_bias_v_read_readvariableopA
=savev2_adam_lstm_55_lstm_cell_55_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_55_lstm_cell_55_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_55_lstm_cell_55_bias_v_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_56_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_56_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_54_lstm_cell_54_kernel_read_readvariableop@savev2_lstm_54_lstm_cell_54_recurrent_kernel_read_readvariableop4savev2_lstm_54_lstm_cell_54_bias_read_readvariableop6savev2_lstm_55_lstm_cell_55_kernel_read_readvariableop@savev2_lstm_55_lstm_cell_55_recurrent_kernel_read_readvariableop4savev2_lstm_55_lstm_cell_55_bias_read_readvariableop6savev2_lstm_56_lstm_cell_56_kernel_read_readvariableop@savev2_lstm_56_lstm_cell_56_recurrent_kernel_read_readvariableop4savev2_lstm_56_lstm_cell_56_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop=savev2_adam_lstm_54_lstm_cell_54_kernel_m_read_readvariableopGsavev2_adam_lstm_54_lstm_cell_54_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_54_lstm_cell_54_bias_m_read_readvariableop=savev2_adam_lstm_55_lstm_cell_55_kernel_m_read_readvariableopGsavev2_adam_lstm_55_lstm_cell_55_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_55_lstm_cell_55_bias_m_read_readvariableop=savev2_adam_lstm_56_lstm_cell_56_kernel_m_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_56_lstm_cell_56_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop=savev2_adam_lstm_54_lstm_cell_54_kernel_v_read_readvariableopGsavev2_adam_lstm_54_lstm_cell_54_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_54_lstm_cell_54_bias_v_read_readvariableop=savev2_adam_lstm_55_lstm_cell_55_kernel_v_read_readvariableopGsavev2_adam_lstm_55_lstm_cell_55_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_55_lstm_cell_55_bias_v_read_readvariableop=savev2_adam_lstm_56_lstm_cell_56_kernel_v_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_56_lstm_cell_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�J
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863903

inputs>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2863819*
condR
while_cond_2863818*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859447

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
�#
�
while_body_2859652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_472_2859676_0:	d�0
while_lstm_cell_472_2859678_0:	2�,
while_lstm_cell_472_2859680_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_472_2859676:	d�.
while_lstm_cell_472_2859678:	2�*
while_lstm_cell_472_2859680:	���+while/lstm_cell_472/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_472/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_472_2859676_0while_lstm_cell_472_2859678_0while_lstm_cell_472_2859680_0*
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2859593�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_472/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_472/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_472/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_472/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_472_2859676while_lstm_cell_472_2859676_0"<
while_lstm_cell_472_2859678while_lstm_cell_472_2859678_0"<
while_lstm_cell_472_2859680while_lstm_cell_472_2859680_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_472/StatefulPartitionedCall+while/lstm_cell_472/StatefulPartitionedCall: 
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
lstm_54_while_cond_2861829,
(lstm_54_while_lstm_54_while_loop_counter2
.lstm_54_while_lstm_54_while_maximum_iterations
lstm_54_while_placeholder
lstm_54_while_placeholder_1
lstm_54_while_placeholder_2
lstm_54_while_placeholder_3.
*lstm_54_while_less_lstm_54_strided_slice_1E
Alstm_54_while_lstm_54_while_cond_2861829___redundant_placeholder0E
Alstm_54_while_lstm_54_while_cond_2861829___redundant_placeholder1E
Alstm_54_while_lstm_54_while_cond_2861829___redundant_placeholder2E
Alstm_54_while_lstm_54_while_cond_2861829___redundant_placeholder3
lstm_54_while_identity
�
lstm_54/while/LessLesslstm_54_while_placeholder*lstm_54_while_less_lstm_54_strided_slice_1*
T0*
_output_shapes
: [
lstm_54/while/IdentityIdentitylstm_54/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_54_while_identitylstm_54/while/Identity:output:0*(
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
while_cond_2863675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2863675___redundant_placeholder05
1while_while_cond_2863675___redundant_placeholder15
1while_while_cond_2863675___redundant_placeholder25
1while_while_cond_2863675___redundant_placeholder3
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
while_cond_2860660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2860660___redundant_placeholder05
1while_while_cond_2860660___redundant_placeholder15
1while_while_cond_2860660___redundant_placeholder25
1while_while_cond_2860660___redundant_placeholder3
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
�
�
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2859797

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
�
�
*__inference_dense_18_layer_call_fn_2864055

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
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547o
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

�
/__inference_sequential_18_layer_call_fn_2861195
lstm_54_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861143o
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
_user_specified_namelstm_54_input
�8
�
while_body_2860445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_473_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_473_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_473_matmul_readvariableop_resource:2(F
4while_lstm_cell_473_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_473_biasadd_readvariableop_resource:(��*while/lstm_cell_473/BiasAdd/ReadVariableOp�)while/lstm_cell_473/MatMul/ReadVariableOp�+while/lstm_cell_473/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_473/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_473/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_473/addAddV2$while/lstm_cell_473/MatMul:product:0&while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_473/BiasAddBiasAddwhile/lstm_cell_473/add:z:02while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_473/splitSplit,while/lstm_cell_473/split/split_dim:output:0$while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_473/SigmoidSigmoid"while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_1Sigmoid"while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mulMul!while/lstm_cell_473/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_473/ReluRelu"while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_1Mulwhile/lstm_cell_473/Sigmoid:y:0&while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/add_1AddV2while/lstm_cell_473/mul:z:0while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_473/Sigmoid_2Sigmoid"while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_473/Relu_1Reluwhile/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_473/mul_2Mul!while/lstm_cell_473/Sigmoid_2:y:0(while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_473/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_473/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_473/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_473/BiasAdd/ReadVariableOp*^while/lstm_cell_473/MatMul/ReadVariableOp,^while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_473_biasadd_readvariableop_resource5while_lstm_cell_473_biasadd_readvariableop_resource_0"n
4while_lstm_cell_473_matmul_1_readvariableop_resource6while_lstm_cell_473_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_473_matmul_readvariableop_resource4while_lstm_cell_473_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_473/BiasAdd/ReadVariableOp*while/lstm_cell_473/BiasAdd/ReadVariableOp2V
)while/lstm_cell_473/MatMul/ReadVariableOp)while/lstm_cell_473/MatMul/ReadVariableOp2Z
+while/lstm_cell_473/MatMul_1/ReadVariableOp+while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860910

inputs?
,lstm_cell_472_matmul_readvariableop_resource:	d�A
.lstm_cell_472_matmul_1_readvariableop_resource:	2�<
-lstm_cell_472_biasadd_readvariableop_resource:	�
identity��$lstm_cell_472/BiasAdd/ReadVariableOp�#lstm_cell_472/MatMul/ReadVariableOp�%lstm_cell_472/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_472/MatMul/ReadVariableOpReadVariableOp,lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_472/MatMulMatMulstrided_slice_2:output:0+lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_472/MatMul_1MatMulzeros:output:0-lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_472/addAddV2lstm_cell_472/MatMul:product:0 lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_472/BiasAddBiasAddlstm_cell_472/add:z:0,lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_472/splitSplit&lstm_cell_472/split/split_dim:output:0lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_472/SigmoidSigmoidlstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_1Sigmoidlstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_472/mulMullstm_cell_472/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_472/ReluRelulstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_1Mullstm_cell_472/Sigmoid:y:0 lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_472/add_1AddV2lstm_cell_472/mul:z:0lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_472/Sigmoid_2Sigmoidlstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_472/Relu_1Relulstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_472/mul_2Mullstm_cell_472/Sigmoid_2:y:0"lstm_cell_472/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_472_matmul_readvariableop_resource.lstm_cell_472_matmul_1_readvariableop_resource-lstm_cell_472_biasadd_readvariableop_resource*
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
while_body_2860826*
condR
while_cond_2860825*K
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
NoOpNoOp%^lstm_cell_472/BiasAdd/ReadVariableOp$^lstm_cell_472/MatMul/ReadVariableOp&^lstm_cell_472/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_472/BiasAdd/ReadVariableOp$lstm_cell_472/BiasAdd/ReadVariableOp2J
#lstm_cell_472/MatMul/ReadVariableOp#lstm_cell_472/MatMul/ReadVariableOp2N
%lstm_cell_472/MatMul_1/ReadVariableOp%lstm_cell_472/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864163

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
�
while_body_2862587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_55_layer_call_fn_2862825
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2859530|
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
�J
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860529

inputs>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2860445*
condR
while_cond_2860444*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
J__inference_sequential_18_layer_call_and_return_conditional_losses_2862198

inputsG
4lstm_54_lstm_cell_471_matmul_readvariableop_resource:	�I
6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource:	d�D
5lstm_54_lstm_cell_471_biasadd_readvariableop_resource:	�G
4lstm_55_lstm_cell_472_matmul_readvariableop_resource:	d�I
6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource:	2�D
5lstm_55_lstm_cell_472_biasadd_readvariableop_resource:	�F
4lstm_56_lstm_cell_473_matmul_readvariableop_resource:2(H
6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource:
(C
5lstm_56_lstm_cell_473_biasadd_readvariableop_resource:(9
'dense_18_matmul_readvariableop_resource:
6
(dense_18_biasadd_readvariableop_resource:
identity��dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp�+lstm_54/lstm_cell_471/MatMul/ReadVariableOp�-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp�lstm_54/while�,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp�+lstm_55/lstm_cell_472/MatMul/ReadVariableOp�-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp�lstm_55/while�,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp�+lstm_56/lstm_cell_473/MatMul/ReadVariableOp�-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp�lstm_56/whileC
lstm_54/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_sliceStridedSlicelstm_54/Shape:output:0$lstm_54/strided_slice/stack:output:0&lstm_54/strided_slice/stack_1:output:0&lstm_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_54/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_54/zeros/packedPacklstm_54/strided_slice:output:0lstm_54/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_54/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_54/zerosFilllstm_54/zeros/packed:output:0lstm_54/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_54/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_54/zeros_1/packedPacklstm_54/strided_slice:output:0!lstm_54/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_54/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_54/zeros_1Filllstm_54/zeros_1/packed:output:0lstm_54/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_54/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_54/transpose	Transposeinputslstm_54/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_54/Shape_1Shapelstm_54/transpose:y:0*
T0*
_output_shapes
:g
lstm_54/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_54/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_1StridedSlicelstm_54/Shape_1:output:0&lstm_54/strided_slice_1/stack:output:0(lstm_54/strided_slice_1/stack_1:output:0(lstm_54/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_54/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_54/TensorArrayV2TensorListReserve,lstm_54/TensorArrayV2/element_shape:output:0 lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_54/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_54/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_54/transpose:y:0Flstm_54/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_54/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_54/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_2StridedSlicelstm_54/transpose:y:0&lstm_54/strided_slice_2/stack:output:0(lstm_54/strided_slice_2/stack_1:output:0(lstm_54/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_54/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4lstm_54_lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_54/lstm_cell_471/MatMulMatMul lstm_54/strided_slice_2:output:03lstm_54/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_54/lstm_cell_471/MatMul_1MatMullstm_54/zeros:output:05lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_54/lstm_cell_471/addAddV2&lstm_54/lstm_cell_471/MatMul:product:0(lstm_54/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_54/lstm_cell_471/BiasAddBiasAddlstm_54/lstm_cell_471/add:z:04lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_54/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_54/lstm_cell_471/splitSplit.lstm_54/lstm_cell_471/split/split_dim:output:0&lstm_54/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_54/lstm_cell_471/SigmoidSigmoid$lstm_54/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/Sigmoid_1Sigmoid$lstm_54/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mulMul#lstm_54/lstm_cell_471/Sigmoid_1:y:0lstm_54/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_54/lstm_cell_471/ReluRelu$lstm_54/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mul_1Mul!lstm_54/lstm_cell_471/Sigmoid:y:0(lstm_54/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/add_1AddV2lstm_54/lstm_cell_471/mul:z:0lstm_54/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/Sigmoid_2Sigmoid$lstm_54/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_54/lstm_cell_471/Relu_1Relulstm_54/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mul_2Mul#lstm_54/lstm_cell_471/Sigmoid_2:y:0*lstm_54/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_54/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_54/TensorArrayV2_1TensorListReserve.lstm_54/TensorArrayV2_1/element_shape:output:0 lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_54/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_54/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_54/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_54/whileWhile#lstm_54/while/loop_counter:output:0)lstm_54/while/maximum_iterations:output:0lstm_54/time:output:0 lstm_54/TensorArrayV2_1:handle:0lstm_54/zeros:output:0lstm_54/zeros_1:output:0 lstm_54/strided_slice_1:output:0?lstm_54/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_54_lstm_cell_471_matmul_readvariableop_resource6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource5lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
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
lstm_54_while_body_2861830*&
condR
lstm_54_while_cond_2861829*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_54/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_54/TensorArrayV2Stack/TensorListStackTensorListStacklstm_54/while:output:3Alstm_54/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_54/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_54/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_3StridedSlice3lstm_54/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_54/strided_slice_3/stack:output:0(lstm_54/strided_slice_3/stack_1:output:0(lstm_54/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_54/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_54/transpose_1	Transpose3lstm_54/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_54/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_54/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_55/ShapeShapelstm_54/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_sliceStridedSlicelstm_55/Shape:output:0$lstm_55/strided_slice/stack:output:0&lstm_55/strided_slice/stack_1:output:0&lstm_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_55/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_55/zeros/packedPacklstm_55/strided_slice:output:0lstm_55/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_55/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_55/zerosFilllstm_55/zeros/packed:output:0lstm_55/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_55/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_55/zeros_1/packedPacklstm_55/strided_slice:output:0!lstm_55/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_55/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_55/zeros_1Filllstm_55/zeros_1/packed:output:0lstm_55/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_55/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_55/transpose	Transposelstm_54/transpose_1:y:0lstm_55/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_55/Shape_1Shapelstm_55/transpose:y:0*
T0*
_output_shapes
:g
lstm_55/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_55/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_1StridedSlicelstm_55/Shape_1:output:0&lstm_55/strided_slice_1/stack:output:0(lstm_55/strided_slice_1/stack_1:output:0(lstm_55/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_55/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_55/TensorArrayV2TensorListReserve,lstm_55/TensorArrayV2/element_shape:output:0 lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_55/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_55/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_55/transpose:y:0Flstm_55/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_55/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_55/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_2StridedSlicelstm_55/transpose:y:0&lstm_55/strided_slice_2/stack:output:0(lstm_55/strided_slice_2/stack_1:output:0(lstm_55/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_55/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4lstm_55_lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_55/lstm_cell_472/MatMulMatMul lstm_55/strided_slice_2:output:03lstm_55/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_55/lstm_cell_472/MatMul_1MatMullstm_55/zeros:output:05lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_55/lstm_cell_472/addAddV2&lstm_55/lstm_cell_472/MatMul:product:0(lstm_55/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_55/lstm_cell_472/BiasAddBiasAddlstm_55/lstm_cell_472/add:z:04lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_55/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_55/lstm_cell_472/splitSplit.lstm_55/lstm_cell_472/split/split_dim:output:0&lstm_55/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_55/lstm_cell_472/SigmoidSigmoid$lstm_55/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/Sigmoid_1Sigmoid$lstm_55/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mulMul#lstm_55/lstm_cell_472/Sigmoid_1:y:0lstm_55/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_55/lstm_cell_472/ReluRelu$lstm_55/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mul_1Mul!lstm_55/lstm_cell_472/Sigmoid:y:0(lstm_55/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/add_1AddV2lstm_55/lstm_cell_472/mul:z:0lstm_55/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/Sigmoid_2Sigmoid$lstm_55/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_55/lstm_cell_472/Relu_1Relulstm_55/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mul_2Mul#lstm_55/lstm_cell_472/Sigmoid_2:y:0*lstm_55/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_55/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_55/TensorArrayV2_1TensorListReserve.lstm_55/TensorArrayV2_1/element_shape:output:0 lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_55/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_55/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_55/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_55/whileWhile#lstm_55/while/loop_counter:output:0)lstm_55/while/maximum_iterations:output:0lstm_55/time:output:0 lstm_55/TensorArrayV2_1:handle:0lstm_55/zeros:output:0lstm_55/zeros_1:output:0 lstm_55/strided_slice_1:output:0?lstm_55/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_55_lstm_cell_472_matmul_readvariableop_resource6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource5lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
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
lstm_55_while_body_2861969*&
condR
lstm_55_while_cond_2861968*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_55/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_55/TensorArrayV2Stack/TensorListStackTensorListStacklstm_55/while:output:3Alstm_55/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_55/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_55/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_3StridedSlice3lstm_55/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_55/strided_slice_3/stack:output:0(lstm_55/strided_slice_3/stack_1:output:0(lstm_55/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_55/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_55/transpose_1	Transpose3lstm_55/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_55/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_55/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_56/ShapeShapelstm_55/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_56/transpose	Transposelstm_55/transpose_1:y:0lstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:g
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_56/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_56/lstm_cell_473/MatMulMatMul lstm_56/strided_slice_2:output:03lstm_56/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_56/lstm_cell_473/MatMul_1MatMullstm_56/zeros:output:05lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_56/lstm_cell_473/addAddV2&lstm_56/lstm_cell_473/MatMul:product:0(lstm_56/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_56/lstm_cell_473/BiasAddBiasAddlstm_56/lstm_cell_473/add:z:04lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_56/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_56/lstm_cell_473/splitSplit.lstm_56/lstm_cell_473/split/split_dim:output:0&lstm_56/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_56/lstm_cell_473/SigmoidSigmoid$lstm_56/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/Sigmoid_1Sigmoid$lstm_56/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mulMul#lstm_56/lstm_cell_473/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_56/lstm_cell_473/ReluRelu$lstm_56/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mul_1Mul!lstm_56/lstm_cell_473/Sigmoid:y:0(lstm_56/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/add_1AddV2lstm_56/lstm_cell_473/mul:z:0lstm_56/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/Sigmoid_2Sigmoid$lstm_56/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_56/lstm_cell_473/Relu_1Relulstm_56/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mul_2Mul#lstm_56/lstm_cell_473/Sigmoid_2:y:0*lstm_56/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_56_lstm_cell_473_matmul_readvariableop_resource6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource5lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
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
lstm_56_while_body_2862108*&
condR
lstm_56_while_cond_2862107*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_18/MatMulMatMul lstm_56/strided_slice_3:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp-^lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp,^lstm_54/lstm_cell_471/MatMul/ReadVariableOp.^lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp^lstm_54/while-^lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp,^lstm_55/lstm_cell_472/MatMul/ReadVariableOp.^lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp^lstm_55/while-^lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp,^lstm_56/lstm_cell_473/MatMul/ReadVariableOp.^lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp^lstm_56/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2\
,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp2Z
+lstm_54/lstm_cell_471/MatMul/ReadVariableOp+lstm_54/lstm_cell_471/MatMul/ReadVariableOp2^
-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp2
lstm_54/whilelstm_54/while2\
,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp2Z
+lstm_55/lstm_cell_472/MatMul/ReadVariableOp+lstm_55/lstm_cell_472/MatMul/ReadVariableOp2^
-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp2
lstm_55/whilelstm_55/while2\
,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp2Z
+lstm_56/lstm_cell_473/MatMul/ReadVariableOp+lstm_56/lstm_cell_473/MatMul/ReadVariableOp2^
-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863760
inputs_0>
,lstm_cell_473_matmul_readvariableop_resource:2(@
.lstm_cell_473_matmul_1_readvariableop_resource:
(;
-lstm_cell_473_biasadd_readvariableop_resource:(
identity��$lstm_cell_473/BiasAdd/ReadVariableOp�#lstm_cell_473/MatMul/ReadVariableOp�%lstm_cell_473/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_473/MatMul/ReadVariableOpReadVariableOp,lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_473/MatMulMatMulstrided_slice_2:output:0+lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_473/MatMul_1MatMulzeros:output:0-lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_473/addAddV2lstm_cell_473/MatMul:product:0 lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_473/BiasAddBiasAddlstm_cell_473/add:z:0,lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_473/splitSplit&lstm_cell_473/split/split_dim:output:0lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_473/SigmoidSigmoidlstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_1Sigmoidlstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_473/mulMullstm_cell_473/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_473/ReluRelulstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_1Mullstm_cell_473/Sigmoid:y:0 lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_473/add_1AddV2lstm_cell_473/mul:z:0lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_473/Sigmoid_2Sigmoidlstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_473/Relu_1Relulstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_473/mul_2Mullstm_cell_473/Sigmoid_2:y:0"lstm_cell_473/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_473_matmul_readvariableop_resource.lstm_cell_473_matmul_1_readvariableop_resource-lstm_cell_473_biasadd_readvariableop_resource*
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
while_body_2863676*
condR
while_cond_2863675*K
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
NoOpNoOp%^lstm_cell_473/BiasAdd/ReadVariableOp$^lstm_cell_473/MatMul/ReadVariableOp&^lstm_cell_473/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_473/BiasAdd/ReadVariableOp$lstm_cell_473/BiasAdd/ReadVariableOp2J
#lstm_cell_473/MatMul/ReadVariableOp#lstm_cell_473/MatMul/ReadVariableOp2N
%lstm_cell_473/MatMul_1/ReadVariableOp%lstm_cell_473/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864131

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
�
�
(sequential_18_lstm_55_while_cond_2858800H
Dsequential_18_lstm_55_while_sequential_18_lstm_55_while_loop_counterN
Jsequential_18_lstm_55_while_sequential_18_lstm_55_while_maximum_iterations+
'sequential_18_lstm_55_while_placeholder-
)sequential_18_lstm_55_while_placeholder_1-
)sequential_18_lstm_55_while_placeholder_2-
)sequential_18_lstm_55_while_placeholder_3J
Fsequential_18_lstm_55_while_less_sequential_18_lstm_55_strided_slice_1a
]sequential_18_lstm_55_while_sequential_18_lstm_55_while_cond_2858800___redundant_placeholder0a
]sequential_18_lstm_55_while_sequential_18_lstm_55_while_cond_2858800___redundant_placeholder1a
]sequential_18_lstm_55_while_sequential_18_lstm_55_while_cond_2858800___redundant_placeholder2a
]sequential_18_lstm_55_while_sequential_18_lstm_55_while_cond_2858800___redundant_placeholder3(
$sequential_18_lstm_55_while_identity
�
 sequential_18/lstm_55/while/LessLess'sequential_18_lstm_55_while_placeholderFsequential_18_lstm_55_while_less_sequential_18_lstm_55_strided_slice_1*
T0*
_output_shapes
: w
$sequential_18/lstm_55/while/IdentityIdentity$sequential_18/lstm_55/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_18_lstm_55_while_identity-sequential_18/lstm_55/while/Identity:output:0*(
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
��
�
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861771

inputsG
4lstm_54_lstm_cell_471_matmul_readvariableop_resource:	�I
6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource:	d�D
5lstm_54_lstm_cell_471_biasadd_readvariableop_resource:	�G
4lstm_55_lstm_cell_472_matmul_readvariableop_resource:	d�I
6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource:	2�D
5lstm_55_lstm_cell_472_biasadd_readvariableop_resource:	�F
4lstm_56_lstm_cell_473_matmul_readvariableop_resource:2(H
6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource:
(C
5lstm_56_lstm_cell_473_biasadd_readvariableop_resource:(9
'dense_18_matmul_readvariableop_resource:
6
(dense_18_biasadd_readvariableop_resource:
identity��dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp�+lstm_54/lstm_cell_471/MatMul/ReadVariableOp�-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp�lstm_54/while�,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp�+lstm_55/lstm_cell_472/MatMul/ReadVariableOp�-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp�lstm_55/while�,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp�+lstm_56/lstm_cell_473/MatMul/ReadVariableOp�-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp�lstm_56/whileC
lstm_54/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_sliceStridedSlicelstm_54/Shape:output:0$lstm_54/strided_slice/stack:output:0&lstm_54/strided_slice/stack_1:output:0&lstm_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_54/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_54/zeros/packedPacklstm_54/strided_slice:output:0lstm_54/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_54/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_54/zerosFilllstm_54/zeros/packed:output:0lstm_54/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_54/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_54/zeros_1/packedPacklstm_54/strided_slice:output:0!lstm_54/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_54/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_54/zeros_1Filllstm_54/zeros_1/packed:output:0lstm_54/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_54/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_54/transpose	Transposeinputslstm_54/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_54/Shape_1Shapelstm_54/transpose:y:0*
T0*
_output_shapes
:g
lstm_54/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_54/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_1StridedSlicelstm_54/Shape_1:output:0&lstm_54/strided_slice_1/stack:output:0(lstm_54/strided_slice_1/stack_1:output:0(lstm_54/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_54/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_54/TensorArrayV2TensorListReserve,lstm_54/TensorArrayV2/element_shape:output:0 lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_54/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_54/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_54/transpose:y:0Flstm_54/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_54/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_54/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_2StridedSlicelstm_54/transpose:y:0&lstm_54/strided_slice_2/stack:output:0(lstm_54/strided_slice_2/stack_1:output:0(lstm_54/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_54/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4lstm_54_lstm_cell_471_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_54/lstm_cell_471/MatMulMatMul lstm_54/strided_slice_2:output:03lstm_54/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_54/lstm_cell_471/MatMul_1MatMullstm_54/zeros:output:05lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_54/lstm_cell_471/addAddV2&lstm_54/lstm_cell_471/MatMul:product:0(lstm_54/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_54/lstm_cell_471/BiasAddBiasAddlstm_54/lstm_cell_471/add:z:04lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_54/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_54/lstm_cell_471/splitSplit.lstm_54/lstm_cell_471/split/split_dim:output:0&lstm_54/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_54/lstm_cell_471/SigmoidSigmoid$lstm_54/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/Sigmoid_1Sigmoid$lstm_54/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mulMul#lstm_54/lstm_cell_471/Sigmoid_1:y:0lstm_54/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_54/lstm_cell_471/ReluRelu$lstm_54/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mul_1Mul!lstm_54/lstm_cell_471/Sigmoid:y:0(lstm_54/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/add_1AddV2lstm_54/lstm_cell_471/mul:z:0lstm_54/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/Sigmoid_2Sigmoid$lstm_54/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_54/lstm_cell_471/Relu_1Relulstm_54/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_54/lstm_cell_471/mul_2Mul#lstm_54/lstm_cell_471/Sigmoid_2:y:0*lstm_54/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_54/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_54/TensorArrayV2_1TensorListReserve.lstm_54/TensorArrayV2_1/element_shape:output:0 lstm_54/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_54/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_54/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_54/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_54/whileWhile#lstm_54/while/loop_counter:output:0)lstm_54/while/maximum_iterations:output:0lstm_54/time:output:0 lstm_54/TensorArrayV2_1:handle:0lstm_54/zeros:output:0lstm_54/zeros_1:output:0 lstm_54/strided_slice_1:output:0?lstm_54/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_54_lstm_cell_471_matmul_readvariableop_resource6lstm_54_lstm_cell_471_matmul_1_readvariableop_resource5lstm_54_lstm_cell_471_biasadd_readvariableop_resource*
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
lstm_54_while_body_2861403*&
condR
lstm_54_while_cond_2861402*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_54/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_54/TensorArrayV2Stack/TensorListStackTensorListStacklstm_54/while:output:3Alstm_54/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_54/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_54/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_54/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_54/strided_slice_3StridedSlice3lstm_54/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_54/strided_slice_3/stack:output:0(lstm_54/strided_slice_3/stack_1:output:0(lstm_54/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_54/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_54/transpose_1	Transpose3lstm_54/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_54/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_54/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_55/ShapeShapelstm_54/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_sliceStridedSlicelstm_55/Shape:output:0$lstm_55/strided_slice/stack:output:0&lstm_55/strided_slice/stack_1:output:0&lstm_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_55/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_55/zeros/packedPacklstm_55/strided_slice:output:0lstm_55/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_55/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_55/zerosFilllstm_55/zeros/packed:output:0lstm_55/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_55/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_55/zeros_1/packedPacklstm_55/strided_slice:output:0!lstm_55/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_55/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_55/zeros_1Filllstm_55/zeros_1/packed:output:0lstm_55/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_55/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_55/transpose	Transposelstm_54/transpose_1:y:0lstm_55/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_55/Shape_1Shapelstm_55/transpose:y:0*
T0*
_output_shapes
:g
lstm_55/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_55/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_1StridedSlicelstm_55/Shape_1:output:0&lstm_55/strided_slice_1/stack:output:0(lstm_55/strided_slice_1/stack_1:output:0(lstm_55/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_55/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_55/TensorArrayV2TensorListReserve,lstm_55/TensorArrayV2/element_shape:output:0 lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_55/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_55/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_55/transpose:y:0Flstm_55/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_55/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_55/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_2StridedSlicelstm_55/transpose:y:0&lstm_55/strided_slice_2/stack:output:0(lstm_55/strided_slice_2/stack_1:output:0(lstm_55/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_55/lstm_cell_472/MatMul/ReadVariableOpReadVariableOp4lstm_55_lstm_cell_472_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_55/lstm_cell_472/MatMulMatMul lstm_55/strided_slice_2:output:03lstm_55/lstm_cell_472/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOpReadVariableOp6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_55/lstm_cell_472/MatMul_1MatMullstm_55/zeros:output:05lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_55/lstm_cell_472/addAddV2&lstm_55/lstm_cell_472/MatMul:product:0(lstm_55/lstm_cell_472/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOpReadVariableOp5lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_55/lstm_cell_472/BiasAddBiasAddlstm_55/lstm_cell_472/add:z:04lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_55/lstm_cell_472/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_55/lstm_cell_472/splitSplit.lstm_55/lstm_cell_472/split/split_dim:output:0&lstm_55/lstm_cell_472/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_55/lstm_cell_472/SigmoidSigmoid$lstm_55/lstm_cell_472/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/Sigmoid_1Sigmoid$lstm_55/lstm_cell_472/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mulMul#lstm_55/lstm_cell_472/Sigmoid_1:y:0lstm_55/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_55/lstm_cell_472/ReluRelu$lstm_55/lstm_cell_472/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mul_1Mul!lstm_55/lstm_cell_472/Sigmoid:y:0(lstm_55/lstm_cell_472/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/add_1AddV2lstm_55/lstm_cell_472/mul:z:0lstm_55/lstm_cell_472/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/Sigmoid_2Sigmoid$lstm_55/lstm_cell_472/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_55/lstm_cell_472/Relu_1Relulstm_55/lstm_cell_472/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_55/lstm_cell_472/mul_2Mul#lstm_55/lstm_cell_472/Sigmoid_2:y:0*lstm_55/lstm_cell_472/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_55/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_55/TensorArrayV2_1TensorListReserve.lstm_55/TensorArrayV2_1/element_shape:output:0 lstm_55/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_55/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_55/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_55/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_55/whileWhile#lstm_55/while/loop_counter:output:0)lstm_55/while/maximum_iterations:output:0lstm_55/time:output:0 lstm_55/TensorArrayV2_1:handle:0lstm_55/zeros:output:0lstm_55/zeros_1:output:0 lstm_55/strided_slice_1:output:0?lstm_55/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_55_lstm_cell_472_matmul_readvariableop_resource6lstm_55_lstm_cell_472_matmul_1_readvariableop_resource5lstm_55_lstm_cell_472_biasadd_readvariableop_resource*
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
lstm_55_while_body_2861542*&
condR
lstm_55_while_cond_2861541*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_55/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_55/TensorArrayV2Stack/TensorListStackTensorListStacklstm_55/while:output:3Alstm_55/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_55/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_55/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_55/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_55/strided_slice_3StridedSlice3lstm_55/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_55/strided_slice_3/stack:output:0(lstm_55/strided_slice_3/stack_1:output:0(lstm_55/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_55/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_55/transpose_1	Transpose3lstm_55/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_55/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_55/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_56/ShapeShapelstm_55/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_56/transpose	Transposelstm_55/transpose_1:y:0lstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:g
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_56/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_473_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_56/lstm_cell_473/MatMulMatMul lstm_56/strided_slice_2:output:03lstm_56/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_56/lstm_cell_473/MatMul_1MatMullstm_56/zeros:output:05lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_56/lstm_cell_473/addAddV2&lstm_56/lstm_cell_473/MatMul:product:0(lstm_56/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_56/lstm_cell_473/BiasAddBiasAddlstm_56/lstm_cell_473/add:z:04lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_56/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_56/lstm_cell_473/splitSplit.lstm_56/lstm_cell_473/split/split_dim:output:0&lstm_56/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_56/lstm_cell_473/SigmoidSigmoid$lstm_56/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/Sigmoid_1Sigmoid$lstm_56/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mulMul#lstm_56/lstm_cell_473/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_56/lstm_cell_473/ReluRelu$lstm_56/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mul_1Mul!lstm_56/lstm_cell_473/Sigmoid:y:0(lstm_56/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/add_1AddV2lstm_56/lstm_cell_473/mul:z:0lstm_56/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/Sigmoid_2Sigmoid$lstm_56/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_56/lstm_cell_473/Relu_1Relulstm_56/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_56/lstm_cell_473/mul_2Mul#lstm_56/lstm_cell_473/Sigmoid_2:y:0*lstm_56/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_56_lstm_cell_473_matmul_readvariableop_resource6lstm_56_lstm_cell_473_matmul_1_readvariableop_resource5lstm_56_lstm_cell_473_biasadd_readvariableop_resource*
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
lstm_56_while_body_2861681*&
condR
lstm_56_while_cond_2861680*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_18/MatMulMatMul lstm_56/strided_slice_3:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp-^lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp,^lstm_54/lstm_cell_471/MatMul/ReadVariableOp.^lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp^lstm_54/while-^lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp,^lstm_55/lstm_cell_472/MatMul/ReadVariableOp.^lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp^lstm_55/while-^lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp,^lstm_56/lstm_cell_473/MatMul/ReadVariableOp.^lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp^lstm_56/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2\
,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp,lstm_54/lstm_cell_471/BiasAdd/ReadVariableOp2Z
+lstm_54/lstm_cell_471/MatMul/ReadVariableOp+lstm_54/lstm_cell_471/MatMul/ReadVariableOp2^
-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp-lstm_54/lstm_cell_471/MatMul_1/ReadVariableOp2
lstm_54/whilelstm_54/while2\
,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp,lstm_55/lstm_cell_472/BiasAdd/ReadVariableOp2Z
+lstm_55/lstm_cell_472/MatMul/ReadVariableOp+lstm_55/lstm_cell_472/MatMul/ReadVariableOp2^
-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp-lstm_55/lstm_cell_472/MatMul_1/ReadVariableOp2
lstm_55/whilelstm_55/while2\
,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp,lstm_56/lstm_cell_473/BiasAdd/ReadVariableOp2Z
+lstm_56/lstm_cell_473/MatMul/ReadVariableOp+lstm_56/lstm_cell_473/MatMul/ReadVariableOp2^
-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp-lstm_56/lstm_cell_473/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_2862916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2862916___redundant_placeholder05
1while_while_cond_2862916___redundant_placeholder15
1while_while_cond_2862916___redundant_placeholder25
1while_while_cond_2862916___redundant_placeholder3
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
�A
�

lstm_56_while_body_2861681,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0:2(P
>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0:
(K
=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0:(
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
:lstm_56_while_lstm_cell_473_matmul_readvariableop_resource:2(N
<lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource:
(I
;lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource:(��2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp�1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp�3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp�
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_56/while/lstm_cell_473/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOpReadVariableOp>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_56/while/lstm_cell_473/MatMul_1MatMullstm_56_while_placeholder_2;lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_56/while/lstm_cell_473/addAddV2,lstm_56/while/lstm_cell_473/MatMul:product:0.lstm_56/while/lstm_cell_473/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_56/while/lstm_cell_473/BiasAddBiasAdd#lstm_56/while/lstm_cell_473/add:z:0:lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_56/while/lstm_cell_473/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_56/while/lstm_cell_473/splitSplit4lstm_56/while/lstm_cell_473/split/split_dim:output:0,lstm_56/while/lstm_cell_473/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_56/while/lstm_cell_473/SigmoidSigmoid*lstm_56/while/lstm_cell_473/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_56/while/lstm_cell_473/Sigmoid_1Sigmoid*lstm_56/while/lstm_cell_473/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_56/while/lstm_cell_473/mulMul)lstm_56/while/lstm_cell_473/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_56/while/lstm_cell_473/ReluRelu*lstm_56/while/lstm_cell_473/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/mul_1Mul'lstm_56/while/lstm_cell_473/Sigmoid:y:0.lstm_56/while/lstm_cell_473/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/add_1AddV2#lstm_56/while/lstm_cell_473/mul:z:0%lstm_56/while/lstm_cell_473/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_56/while/lstm_cell_473/Sigmoid_2Sigmoid*lstm_56/while/lstm_cell_473/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_56/while/lstm_cell_473/Relu_1Relu%lstm_56/while/lstm_cell_473/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_56/while/lstm_cell_473/mul_2Mul)lstm_56/while/lstm_cell_473/Sigmoid_2:y:00lstm_56/while/lstm_cell_473/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder%lstm_56/while/lstm_cell_473/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations^lstm_56/while/NoOp*
T0*
_output_shapes
: q
lstm_56/while/Identity_2Identitylstm_56/while/add:z:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_56/while/NoOp*
T0*
_output_shapes
: �
lstm_56/while/Identity_4Identity%lstm_56/while/lstm_cell_473/mul_2:z:0^lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_56/while/Identity_5Identity%lstm_56/while/lstm_cell_473/add_1:z:0^lstm_56/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_56/while/NoOpNoOp3^lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2^lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp4^lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"|
;lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource=lstm_56_while_lstm_cell_473_biasadd_readvariableop_resource_0"~
<lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource>lstm_56_while_lstm_cell_473_matmul_1_readvariableop_resource_0"z
:lstm_56_while_lstm_cell_473_matmul_readvariableop_resource<lstm_56_while_lstm_cell_473_matmul_readvariableop_resource_0"�
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2lstm_56/while/lstm_cell_473/BiasAdd/ReadVariableOp2f
1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp1lstm_56/while/lstm_cell_473/MatMul/ReadVariableOp2j
3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp3lstm_56/while/lstm_cell_473/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861225
lstm_54_input"
lstm_54_2861198:	�"
lstm_54_2861200:	d�
lstm_54_2861202:	�"
lstm_55_2861205:	d�"
lstm_55_2861207:	2�
lstm_55_2861209:	�!
lstm_56_2861212:2(!
lstm_56_2861214:
(
lstm_56_2861216:("
dense_18_2861219:

dense_18_2861221:
identity�� dense_18/StatefulPartitionedCall�lstm_54/StatefulPartitionedCall�lstm_55/StatefulPartitionedCall�lstm_56/StatefulPartitionedCall�
lstm_54/StatefulPartitionedCallStatefulPartitionedCalllstm_54_inputlstm_54_2861198lstm_54_2861200lstm_54_2861202*
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2860229�
lstm_55/StatefulPartitionedCallStatefulPartitionedCall(lstm_54/StatefulPartitionedCall:output:0lstm_55_2861205lstm_55_2861207lstm_55_2861209*
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2860379�
lstm_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_55/StatefulPartitionedCall:output:0lstm_56_2861212lstm_56_2861214lstm_56_2861216*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2860529�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_18_2861219dense_18_2861221*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2860547x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_54/StatefulPartitionedCall ^lstm_55/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_54/StatefulPartitionedCalllstm_54/StatefulPartitionedCall2B
lstm_55/StatefulPartitionedCalllstm_55/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_54_input
�
�
/__inference_lstm_cell_471_layer_call_fn_2864099

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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2859243o
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
while_body_2860145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_471_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_471_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_471_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_471_matmul_readvariableop_resource:	�G
4while_lstm_cell_471_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_471_biasadd_readvariableop_resource:	���*while/lstm_cell_471/BiasAdd/ReadVariableOp�)while/lstm_cell_471/MatMul/ReadVariableOp�+while/lstm_cell_471/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_471/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_471_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_471/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_471/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_471/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_471_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_471/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_471/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_471/addAddV2$while/lstm_cell_471/MatMul:product:0&while/lstm_cell_471/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_471/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_471_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_471/BiasAddBiasAddwhile/lstm_cell_471/add:z:02while/lstm_cell_471/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_471/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_471/splitSplit,while/lstm_cell_471/split/split_dim:output:0$while/lstm_cell_471/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_471/SigmoidSigmoid"while/lstm_cell_471/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_1Sigmoid"while/lstm_cell_471/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mulMul!while/lstm_cell_471/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_471/ReluRelu"while/lstm_cell_471/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_1Mulwhile/lstm_cell_471/Sigmoid:y:0&while/lstm_cell_471/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/add_1AddV2while/lstm_cell_471/mul:z:0while/lstm_cell_471/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_471/Sigmoid_2Sigmoid"while/lstm_cell_471/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_471/Relu_1Reluwhile/lstm_cell_471/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_471/mul_2Mul!while/lstm_cell_471/Sigmoid_2:y:0(while/lstm_cell_471/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_471/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_471/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_471/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_471/BiasAdd/ReadVariableOp*^while/lstm_cell_471/MatMul/ReadVariableOp,^while/lstm_cell_471/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_471_biasadd_readvariableop_resource5while_lstm_cell_471_biasadd_readvariableop_resource_0"n
4while_lstm_cell_471_matmul_1_readvariableop_resource6while_lstm_cell_471_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_471_matmul_readvariableop_resource4while_lstm_cell_471_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_471/BiasAdd/ReadVariableOp*while/lstm_cell_471/BiasAdd/ReadVariableOp2V
)while/lstm_cell_471/MatMul/ReadVariableOp)while/lstm_cell_471/MatMul/ReadVariableOp2Z
+while/lstm_cell_471/MatMul_1/ReadVariableOp+while/lstm_cell_471/MatMul_1/ReadVariableOp: 
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
lstm_54_input:
serving_default_lstm_54_input:0���������<
dense_180
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
2dense_18/kernel
:2dense_18/bias
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
.:,	�2lstm_54/lstm_cell_54/kernel
8:6	d�2%lstm_54/lstm_cell_54/recurrent_kernel
(:&�2lstm_54/lstm_cell_54/bias
.:,	d�2lstm_55/lstm_cell_55/kernel
8:6	2�2%lstm_55/lstm_cell_55/recurrent_kernel
(:&�2lstm_55/lstm_cell_55/bias
-:+2(2lstm_56/lstm_cell_56/kernel
7:5
(2%lstm_56/lstm_cell_56/recurrent_kernel
':%(2lstm_56/lstm_cell_56/bias
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
2Adam/dense_18/kernel/m
 :2Adam/dense_18/bias/m
3:1	�2"Adam/lstm_54/lstm_cell_54/kernel/m
=:;	d�2,Adam/lstm_54/lstm_cell_54/recurrent_kernel/m
-:+�2 Adam/lstm_54/lstm_cell_54/bias/m
3:1	d�2"Adam/lstm_55/lstm_cell_55/kernel/m
=:;	2�2,Adam/lstm_55/lstm_cell_55/recurrent_kernel/m
-:+�2 Adam/lstm_55/lstm_cell_55/bias/m
2:02(2"Adam/lstm_56/lstm_cell_56/kernel/m
<::
(2,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m
,:*(2 Adam/lstm_56/lstm_cell_56/bias/m
&:$
2Adam/dense_18/kernel/v
 :2Adam/dense_18/bias/v
3:1	�2"Adam/lstm_54/lstm_cell_54/kernel/v
=:;	d�2,Adam/lstm_54/lstm_cell_54/recurrent_kernel/v
-:+�2 Adam/lstm_54/lstm_cell_54/bias/v
3:1	d�2"Adam/lstm_55/lstm_cell_55/kernel/v
=:;	2�2,Adam/lstm_55/lstm_cell_55/recurrent_kernel/v
-:+�2 Adam/lstm_55/lstm_cell_55/bias/v
2:02(2"Adam/lstm_56/lstm_cell_56/kernel/v
<::
(2,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v
,:*(2 Adam/lstm_56/lstm_cell_56/bias/v
�2�
/__inference_sequential_18_layer_call_fn_2860579
/__inference_sequential_18_layer_call_fn_2861317
/__inference_sequential_18_layer_call_fn_2861344
/__inference_sequential_18_layer_call_fn_2861195�
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861771
J__inference_sequential_18_layer_call_and_return_conditional_losses_2862198
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861225
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861255�
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
"__inference__wrapped_model_2859030lstm_54_input"�
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
)__inference_lstm_54_layer_call_fn_2862209
)__inference_lstm_54_layer_call_fn_2862220
)__inference_lstm_54_layer_call_fn_2862231
)__inference_lstm_54_layer_call_fn_2862242�
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862385
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862528
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862671
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862814�
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
)__inference_lstm_55_layer_call_fn_2862825
)__inference_lstm_55_layer_call_fn_2862836
)__inference_lstm_55_layer_call_fn_2862847
)__inference_lstm_55_layer_call_fn_2862858�
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863001
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863144
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863287
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863430�
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
)__inference_lstm_56_layer_call_fn_2863441
)__inference_lstm_56_layer_call_fn_2863452
)__inference_lstm_56_layer_call_fn_2863463
)__inference_lstm_56_layer_call_fn_2863474�
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863617
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863760
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863903
D__inference_lstm_56_layer_call_and_return_conditional_losses_2864046�
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
*__inference_dense_18_layer_call_fn_2864055�
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
E__inference_dense_18_layer_call_and_return_conditional_losses_2864065�
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
%__inference_signature_wrapper_2861290lstm_54_input"�
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
/__inference_lstm_cell_471_layer_call_fn_2864082
/__inference_lstm_cell_471_layer_call_fn_2864099�
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864131
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864163�
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
/__inference_lstm_cell_472_layer_call_fn_2864180
/__inference_lstm_cell_472_layer_call_fn_2864197�
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864229
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864261�
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
/__inference_lstm_cell_473_layer_call_fn_2864278
/__inference_lstm_cell_473_layer_call_fn_2864295�
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864327
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864359�
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
"__inference__wrapped_model_2859030~-./012345!":�7
0�-
+�(
lstm_54_input���������
� "3�0
.
dense_18"�
dense_18����������
E__inference_dense_18_layer_call_and_return_conditional_losses_2864065\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_18_layer_call_fn_2864055O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862385�-./O�L
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862528�-./O�L
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862671q-./?�<
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
D__inference_lstm_54_layer_call_and_return_conditional_losses_2862814q-./?�<
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
)__inference_lstm_54_layer_call_fn_2862209}-./O�L
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
)__inference_lstm_54_layer_call_fn_2862220}-./O�L
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
)__inference_lstm_54_layer_call_fn_2862231d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_54_layer_call_fn_2862242d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863001�012O�L
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863144�012O�L
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863287q012?�<
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
D__inference_lstm_55_layer_call_and_return_conditional_losses_2863430q012?�<
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
)__inference_lstm_55_layer_call_fn_2862825}012O�L
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
)__inference_lstm_55_layer_call_fn_2862836}012O�L
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
)__inference_lstm_55_layer_call_fn_2862847d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_55_layer_call_fn_2862858d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863617}345O�L
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863760}345O�L
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2863903m345?�<
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2864046m345?�<
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
)__inference_lstm_56_layer_call_fn_2863441p345O�L
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
)__inference_lstm_56_layer_call_fn_2863452p345O�L
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
)__inference_lstm_56_layer_call_fn_2863463`345?�<
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
)__inference_lstm_56_layer_call_fn_2863474`345?�<
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864131�-./��}
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
J__inference_lstm_cell_471_layer_call_and_return_conditional_losses_2864163�-./��}
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
/__inference_lstm_cell_471_layer_call_fn_2864082�-./��}
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
/__inference_lstm_cell_471_layer_call_fn_2864099�-./��}
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864229�012��}
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
J__inference_lstm_cell_472_layer_call_and_return_conditional_losses_2864261�012��}
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
/__inference_lstm_cell_472_layer_call_fn_2864180�012��}
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
/__inference_lstm_cell_472_layer_call_fn_2864197�012��}
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864327�345��}
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
J__inference_lstm_cell_473_layer_call_and_return_conditional_losses_2864359�345��}
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
/__inference_lstm_cell_473_layer_call_fn_2864278�345��}
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
/__inference_lstm_cell_473_layer_call_fn_2864295�345��}
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861225x-./012345!"B�?
8�5
+�(
lstm_54_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861255x-./012345!"B�?
8�5
+�(
lstm_54_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_18_layer_call_and_return_conditional_losses_2861771q-./012345!";�8
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_2862198q-./012345!";�8
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
/__inference_sequential_18_layer_call_fn_2860579k-./012345!"B�?
8�5
+�(
lstm_54_input���������
p 

 
� "�����������
/__inference_sequential_18_layer_call_fn_2861195k-./012345!"B�?
8�5
+�(
lstm_54_input���������
p

 
� "�����������
/__inference_sequential_18_layer_call_fn_2861317d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_18_layer_call_fn_2861344d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_2861290�-./012345!"K�H
� 
A�>
<
lstm_54_input+�(
lstm_54_input���������"3�0
.
dense_18"�
dense_18���������