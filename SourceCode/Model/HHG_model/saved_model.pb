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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��-
|
dense_127/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_127/kernel
u
$dense_127/kernel/Read/ReadVariableOpReadVariableOpdense_127/kernel*
_output_shapes

:
*
dtype0
t
dense_127/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_127/bias
m
"dense_127/bias/Read/ReadVariableOpReadVariableOpdense_127/bias*
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
lstm_381/lstm_cell_381/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_381/lstm_cell_381/kernel
�
1lstm_381/lstm_cell_381/kernel/Read/ReadVariableOpReadVariableOplstm_381/lstm_cell_381/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_381/lstm_cell_381/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_381/lstm_cell_381/recurrent_kernel
�
;lstm_381/lstm_cell_381/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_381/lstm_cell_381/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_381/lstm_cell_381/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_381/lstm_cell_381/bias
�
/lstm_381/lstm_cell_381/bias/Read/ReadVariableOpReadVariableOplstm_381/lstm_cell_381/bias*
_output_shapes	
:�*
dtype0
�
lstm_382/lstm_cell_382/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_382/lstm_cell_382/kernel
�
1lstm_382/lstm_cell_382/kernel/Read/ReadVariableOpReadVariableOplstm_382/lstm_cell_382/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_382/lstm_cell_382/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_382/lstm_cell_382/recurrent_kernel
�
;lstm_382/lstm_cell_382/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_382/lstm_cell_382/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_382/lstm_cell_382/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_382/lstm_cell_382/bias
�
/lstm_382/lstm_cell_382/bias/Read/ReadVariableOpReadVariableOplstm_382/lstm_cell_382/bias*
_output_shapes	
:�*
dtype0
�
lstm_383/lstm_cell_383/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_383/lstm_cell_383/kernel
�
1lstm_383/lstm_cell_383/kernel/Read/ReadVariableOpReadVariableOplstm_383/lstm_cell_383/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_383/lstm_cell_383/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_383/lstm_cell_383/recurrent_kernel
�
;lstm_383/lstm_cell_383/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_383/lstm_cell_383/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_383/lstm_cell_383/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_383/lstm_cell_383/bias
�
/lstm_383/lstm_cell_383/bias/Read/ReadVariableOpReadVariableOplstm_383/lstm_cell_383/bias*
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
Adam/dense_127/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_127/kernel/m
�
+Adam/dense_127/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_127/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_127/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_127/bias/m
{
)Adam/dense_127/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_127/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_381/lstm_cell_381/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_381/lstm_cell_381/kernel/m
�
8Adam/lstm_381/lstm_cell_381/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_381/lstm_cell_381/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_381/lstm_cell_381/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_381/lstm_cell_381/recurrent_kernel/m
�
BAdam/lstm_381/lstm_cell_381/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_381/lstm_cell_381/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_381/lstm_cell_381/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_381/lstm_cell_381/bias/m
�
6Adam/lstm_381/lstm_cell_381/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_381/lstm_cell_381/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_382/lstm_cell_382/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_382/lstm_cell_382/kernel/m
�
8Adam/lstm_382/lstm_cell_382/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_382/lstm_cell_382/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_382/lstm_cell_382/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_382/lstm_cell_382/recurrent_kernel/m
�
BAdam/lstm_382/lstm_cell_382/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_382/lstm_cell_382/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_382/lstm_cell_382/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_382/lstm_cell_382/bias/m
�
6Adam/lstm_382/lstm_cell_382/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_382/lstm_cell_382/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_383/lstm_cell_383/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_383/lstm_cell_383/kernel/m
�
8Adam/lstm_383/lstm_cell_383/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_383/lstm_cell_383/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_383/lstm_cell_383/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_383/lstm_cell_383/recurrent_kernel/m
�
BAdam/lstm_383/lstm_cell_383/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_383/lstm_cell_383/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_383/lstm_cell_383/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_383/lstm_cell_383/bias/m
�
6Adam/lstm_383/lstm_cell_383/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_383/lstm_cell_383/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_127/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_127/kernel/v
�
+Adam/dense_127/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_127/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_127/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_127/bias/v
{
)Adam/dense_127/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_127/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_381/lstm_cell_381/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_381/lstm_cell_381/kernel/v
�
8Adam/lstm_381/lstm_cell_381/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_381/lstm_cell_381/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_381/lstm_cell_381/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_381/lstm_cell_381/recurrent_kernel/v
�
BAdam/lstm_381/lstm_cell_381/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_381/lstm_cell_381/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_381/lstm_cell_381/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_381/lstm_cell_381/bias/v
�
6Adam/lstm_381/lstm_cell_381/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_381/lstm_cell_381/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_382/lstm_cell_382/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_382/lstm_cell_382/kernel/v
�
8Adam/lstm_382/lstm_cell_382/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_382/lstm_cell_382/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_382/lstm_cell_382/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_382/lstm_cell_382/recurrent_kernel/v
�
BAdam/lstm_382/lstm_cell_382/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_382/lstm_cell_382/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_382/lstm_cell_382/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_382/lstm_cell_382/bias/v
�
6Adam/lstm_382/lstm_cell_382/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_382/lstm_cell_382/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_383/lstm_cell_383/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_383/lstm_cell_383/kernel/v
�
8Adam/lstm_383/lstm_cell_383/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_383/lstm_cell_383/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_383/lstm_cell_383/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_383/lstm_cell_383/recurrent_kernel/v
�
BAdam/lstm_383/lstm_cell_383/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_383/lstm_cell_383/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_383/lstm_cell_383/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_383/lstm_cell_383/bias/v
�
6Adam/lstm_383/lstm_cell_383/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_383/lstm_cell_383/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�A
value�AB�A B�A
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
\Z
VARIABLE_VALUEdense_127/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_127/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
YW
VARIABLE_VALUElstm_381/lstm_cell_381/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_381/lstm_cell_381/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_381/lstm_cell_381/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_382/lstm_cell_382/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_382/lstm_cell_382/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_382/lstm_cell_382/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_383/lstm_cell_383/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_383/lstm_cell_383/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_383/lstm_cell_383/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_127/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_127/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_381/lstm_cell_381/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_381/lstm_cell_381/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_381/lstm_cell_381/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_382/lstm_cell_382/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_382/lstm_cell_382/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_382/lstm_cell_382/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_383/lstm_cell_383/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_383/lstm_cell_383/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_383/lstm_cell_383/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_127/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_127/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_381/lstm_cell_381/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_381/lstm_cell_381/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_381/lstm_cell_381/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_382/lstm_cell_382/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_382/lstm_cell_382/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_382/lstm_cell_382/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_383/lstm_cell_383/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_383/lstm_cell_383/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_383/lstm_cell_383/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_381_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_381_inputlstm_381/lstm_cell_381/kernel'lstm_381/lstm_cell_381/recurrent_kernellstm_381/lstm_cell_381/biaslstm_382/lstm_cell_382/kernel'lstm_382/lstm_cell_382/recurrent_kernellstm_382/lstm_cell_382/biaslstm_383/lstm_cell_383/kernel'lstm_383/lstm_cell_383/recurrent_kernellstm_383/lstm_cell_383/biasdense_127/kerneldense_127/bias*
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
%__inference_signature_wrapper_3299080
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_127/kernel/Read/ReadVariableOp"dense_127/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_381/lstm_cell_381/kernel/Read/ReadVariableOp;lstm_381/lstm_cell_381/recurrent_kernel/Read/ReadVariableOp/lstm_381/lstm_cell_381/bias/Read/ReadVariableOp1lstm_382/lstm_cell_382/kernel/Read/ReadVariableOp;lstm_382/lstm_cell_382/recurrent_kernel/Read/ReadVariableOp/lstm_382/lstm_cell_382/bias/Read/ReadVariableOp1lstm_383/lstm_cell_383/kernel/Read/ReadVariableOp;lstm_383/lstm_cell_383/recurrent_kernel/Read/ReadVariableOp/lstm_383/lstm_cell_383/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_127/kernel/m/Read/ReadVariableOp)Adam/dense_127/bias/m/Read/ReadVariableOp8Adam/lstm_381/lstm_cell_381/kernel/m/Read/ReadVariableOpBAdam/lstm_381/lstm_cell_381/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_381/lstm_cell_381/bias/m/Read/ReadVariableOp8Adam/lstm_382/lstm_cell_382/kernel/m/Read/ReadVariableOpBAdam/lstm_382/lstm_cell_382/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_382/lstm_cell_382/bias/m/Read/ReadVariableOp8Adam/lstm_383/lstm_cell_383/kernel/m/Read/ReadVariableOpBAdam/lstm_383/lstm_cell_383/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_383/lstm_cell_383/bias/m/Read/ReadVariableOp+Adam/dense_127/kernel/v/Read/ReadVariableOp)Adam/dense_127/bias/v/Read/ReadVariableOp8Adam/lstm_381/lstm_cell_381/kernel/v/Read/ReadVariableOpBAdam/lstm_381/lstm_cell_381/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_381/lstm_cell_381/bias/v/Read/ReadVariableOp8Adam/lstm_382/lstm_cell_382/kernel/v/Read/ReadVariableOpBAdam/lstm_382/lstm_cell_382/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_382/lstm_cell_382/bias/v/Read/ReadVariableOp8Adam/lstm_383/lstm_cell_383/kernel/v/Read/ReadVariableOpBAdam/lstm_383/lstm_cell_383/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_383/lstm_cell_383/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3302292
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_127/kerneldense_127/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_381/lstm_cell_381/kernel'lstm_381/lstm_cell_381/recurrent_kernellstm_381/lstm_cell_381/biaslstm_382/lstm_cell_382/kernel'lstm_382/lstm_cell_382/recurrent_kernellstm_382/lstm_cell_382/biaslstm_383/lstm_cell_383/kernel'lstm_383/lstm_cell_383/recurrent_kernellstm_383/lstm_cell_383/biastotalcountAdam/dense_127/kernel/mAdam/dense_127/bias/m$Adam/lstm_381/lstm_cell_381/kernel/m.Adam/lstm_381/lstm_cell_381/recurrent_kernel/m"Adam/lstm_381/lstm_cell_381/bias/m$Adam/lstm_382/lstm_cell_382/kernel/m.Adam/lstm_382/lstm_cell_382/recurrent_kernel/m"Adam/lstm_382/lstm_cell_382/bias/m$Adam/lstm_383/lstm_cell_383/kernel/m.Adam/lstm_383/lstm_cell_383/recurrent_kernel/m"Adam/lstm_383/lstm_cell_383/bias/mAdam/dense_127/kernel/vAdam/dense_127/bias/v$Adam/lstm_381/lstm_cell_381/kernel/v.Adam/lstm_381/lstm_cell_381/recurrent_kernel/v"Adam/lstm_381/lstm_cell_381/bias/v$Adam/lstm_382/lstm_cell_382/kernel/v.Adam/lstm_382/lstm_cell_382/recurrent_kernel/v"Adam/lstm_382/lstm_cell_382/bias/v$Adam/lstm_383/lstm_cell_383/kernel/v.Adam/lstm_383/lstm_cell_383/recurrent_kernel/v"Adam/lstm_383/lstm_cell_383/bias/v*4
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
#__inference__traced_restore_3302422��+
�
�
*__inference_lstm_382_layer_call_fn_3300648

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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298700s
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
while_body_3301136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3297441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297441___redundant_placeholder05
1while_while_cond_3297441___redundant_placeholder15
1while_while_cond_3297441___redundant_placeholder25
1while_while_cond_3297441___redundant_placeholder3
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
while_cond_3300706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300706___redundant_placeholder05
1while_while_cond_3300706___redundant_placeholder15
1while_while_cond_3300706___redundant_placeholder25
1while_while_cond_3300706___redundant_placeholder3
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
while_body_3300091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302019

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
�

�
lstm_382_while_cond_3299758.
*lstm_382_while_lstm_382_while_loop_counter4
0lstm_382_while_lstm_382_while_maximum_iterations
lstm_382_while_placeholder 
lstm_382_while_placeholder_1 
lstm_382_while_placeholder_2 
lstm_382_while_placeholder_30
,lstm_382_while_less_lstm_382_strided_slice_1G
Clstm_382_while_lstm_382_while_cond_3299758___redundant_placeholder0G
Clstm_382_while_lstm_382_while_cond_3299758___redundant_placeholder1G
Clstm_382_while_lstm_382_while_cond_3299758___redundant_placeholder2G
Clstm_382_while_lstm_382_while_cond_3299758___redundant_placeholder3
lstm_382_while_identity
�
lstm_382/while/LessLesslstm_382_while_placeholder,lstm_382_while_less_lstm_382_strided_slice_1*
T0*
_output_shapes
: ]
lstm_382/while/IdentityIdentitylstm_382/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_382_while_identity lstm_382/while/Identity:output:0*(
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3297033

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
while_body_3300850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298019

inputs?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3297935*
condR
while_cond_3297934*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_381_layer_call_fn_3300032

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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298865s
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
while_cond_3300849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300849___redundant_placeholder05
1while_while_cond_3300849___redundant_placeholder15
1while_while_cond_3300849___redundant_placeholder25
1while_while_cond_3300849___redundant_placeholder3
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297383

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
�
�
/__inference_lstm_cell_544_layer_call_fn_3301970

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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297237o
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
�C
�

lstm_382_while_body_3299759.
*lstm_382_while_lstm_382_while_loop_counter4
0lstm_382_while_lstm_382_while_maximum_iterations
lstm_382_while_placeholder 
lstm_382_while_placeholder_1 
lstm_382_while_placeholder_2 
lstm_382_while_placeholder_3-
)lstm_382_while_lstm_382_strided_slice_1_0i
elstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0:	d�R
?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�M
>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
lstm_382_while_identity
lstm_382_while_identity_1
lstm_382_while_identity_2
lstm_382_while_identity_3
lstm_382_while_identity_4
lstm_382_while_identity_5+
'lstm_382_while_lstm_382_strided_slice_1g
clstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensorN
;lstm_382_while_lstm_cell_544_matmul_readvariableop_resource:	d�P
=lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource:	2�K
<lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource:	���3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp�2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp�4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp�
@lstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_382/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0lstm_382_while_placeholderIlstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_382/while/lstm_cell_544/MatMulMatMul9lstm_382/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_382/while/lstm_cell_544/MatMul_1MatMullstm_382_while_placeholder_2<lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_382/while/lstm_cell_544/addAddV2-lstm_382/while/lstm_cell_544/MatMul:product:0/lstm_382/while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_382/while/lstm_cell_544/BiasAddBiasAdd$lstm_382/while/lstm_cell_544/add:z:0;lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_382/while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_382/while/lstm_cell_544/splitSplit5lstm_382/while/lstm_cell_544/split/split_dim:output:0-lstm_382/while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_382/while/lstm_cell_544/SigmoidSigmoid+lstm_382/while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_382/while/lstm_cell_544/Sigmoid_1Sigmoid+lstm_382/while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_382/while/lstm_cell_544/mulMul*lstm_382/while/lstm_cell_544/Sigmoid_1:y:0lstm_382_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_382/while/lstm_cell_544/ReluRelu+lstm_382/while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/mul_1Mul(lstm_382/while/lstm_cell_544/Sigmoid:y:0/lstm_382/while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/add_1AddV2$lstm_382/while/lstm_cell_544/mul:z:0&lstm_382/while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_382/while/lstm_cell_544/Sigmoid_2Sigmoid+lstm_382/while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_382/while/lstm_cell_544/Relu_1Relu&lstm_382/while/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/mul_2Mul*lstm_382/while/lstm_cell_544/Sigmoid_2:y:01lstm_382/while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_382/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_382_while_placeholder_1lstm_382_while_placeholder&lstm_382/while/lstm_cell_544/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_382/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_382/while/addAddV2lstm_382_while_placeholderlstm_382/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_382/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_382/while/add_1AddV2*lstm_382_while_lstm_382_while_loop_counterlstm_382/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_382/while/IdentityIdentitylstm_382/while/add_1:z:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_1Identity0lstm_382_while_lstm_382_while_maximum_iterations^lstm_382/while/NoOp*
T0*
_output_shapes
: t
lstm_382/while/Identity_2Identitylstm_382/while/add:z:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_3IdentityClstm_382/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_4Identity&lstm_382/while/lstm_cell_544/mul_2:z:0^lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_382/while/Identity_5Identity&lstm_382/while/lstm_cell_544/add_1:z:0^lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_382/while/NoOpNoOp4^lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp3^lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp5^lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_382_while_identity lstm_382/while/Identity:output:0"?
lstm_382_while_identity_1"lstm_382/while/Identity_1:output:0"?
lstm_382_while_identity_2"lstm_382/while/Identity_2:output:0"?
lstm_382_while_identity_3"lstm_382/while/Identity_3:output:0"?
lstm_382_while_identity_4"lstm_382/while/Identity_4:output:0"?
lstm_382_while_identity_5"lstm_382/while/Identity_5:output:0"T
'lstm_382_while_lstm_382_strided_slice_1)lstm_382_while_lstm_382_strided_slice_1_0"~
<lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0"�
=lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0"|
;lstm_382_while_lstm_cell_544_matmul_readvariableop_resource=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0"�
clstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensorelstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp2h
2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp2l
4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_383_layer_call_fn_3301264

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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298535o
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
�T
�
*sequential_127_lstm_381_while_body_3296452L
Hsequential_127_lstm_381_while_sequential_127_lstm_381_while_loop_counterR
Nsequential_127_lstm_381_while_sequential_127_lstm_381_while_maximum_iterations-
)sequential_127_lstm_381_while_placeholder/
+sequential_127_lstm_381_while_placeholder_1/
+sequential_127_lstm_381_while_placeholder_2/
+sequential_127_lstm_381_while_placeholder_3K
Gsequential_127_lstm_381_while_sequential_127_lstm_381_strided_slice_1_0�
�sequential_127_lstm_381_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_381_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_127_lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0:	�a
Nsequential_127_lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�\
Msequential_127_lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0:	�*
&sequential_127_lstm_381_while_identity,
(sequential_127_lstm_381_while_identity_1,
(sequential_127_lstm_381_while_identity_2,
(sequential_127_lstm_381_while_identity_3,
(sequential_127_lstm_381_while_identity_4,
(sequential_127_lstm_381_while_identity_5I
Esequential_127_lstm_381_while_sequential_127_lstm_381_strided_slice_1�
�sequential_127_lstm_381_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_381_tensorarrayunstack_tensorlistfromtensor]
Jsequential_127_lstm_381_while_lstm_cell_543_matmul_readvariableop_resource:	�_
Lsequential_127_lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource:	d�Z
Ksequential_127_lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource:	���Bsequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp�Asequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp�Csequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp�
Osequential_127/lstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_127/lstm_381/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_127_lstm_381_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_381_tensorarrayunstack_tensorlistfromtensor_0)sequential_127_lstm_381_while_placeholderXsequential_127/lstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOpLsequential_127_lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_127/lstm_381/while/lstm_cell_543/MatMulMatMulHsequential_127/lstm_381/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOpNsequential_127_lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_127/lstm_381/while/lstm_cell_543/MatMul_1MatMul+sequential_127_lstm_381_while_placeholder_2Ksequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_127/lstm_381/while/lstm_cell_543/addAddV2<sequential_127/lstm_381/while/lstm_cell_543/MatMul:product:0>sequential_127/lstm_381/while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOpMsequential_127_lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_127/lstm_381/while/lstm_cell_543/BiasAddBiasAdd3sequential_127/lstm_381/while/lstm_cell_543/add:z:0Jsequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_127/lstm_381/while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_127/lstm_381/while/lstm_cell_543/splitSplitDsequential_127/lstm_381/while/lstm_cell_543/split/split_dim:output:0<sequential_127/lstm_381/while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_127/lstm_381/while/lstm_cell_543/SigmoidSigmoid:sequential_127/lstm_381/while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_127/lstm_381/while/lstm_cell_543/Sigmoid_1Sigmoid:sequential_127/lstm_381/while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_127/lstm_381/while/lstm_cell_543/mulMul9sequential_127/lstm_381/while/lstm_cell_543/Sigmoid_1:y:0+sequential_127_lstm_381_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_127/lstm_381/while/lstm_cell_543/ReluRelu:sequential_127/lstm_381/while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_127/lstm_381/while/lstm_cell_543/mul_1Mul7sequential_127/lstm_381/while/lstm_cell_543/Sigmoid:y:0>sequential_127/lstm_381/while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_127/lstm_381/while/lstm_cell_543/add_1AddV23sequential_127/lstm_381/while/lstm_cell_543/mul:z:05sequential_127/lstm_381/while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_127/lstm_381/while/lstm_cell_543/Sigmoid_2Sigmoid:sequential_127/lstm_381/while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_127/lstm_381/while/lstm_cell_543/Relu_1Relu5sequential_127/lstm_381/while/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_127/lstm_381/while/lstm_cell_543/mul_2Mul9sequential_127/lstm_381/while/lstm_cell_543/Sigmoid_2:y:0@sequential_127/lstm_381/while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_127/lstm_381/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_127_lstm_381_while_placeholder_1)sequential_127_lstm_381_while_placeholder5sequential_127/lstm_381/while/lstm_cell_543/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_127/lstm_381/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_127/lstm_381/while/addAddV2)sequential_127_lstm_381_while_placeholder,sequential_127/lstm_381/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_127/lstm_381/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_127/lstm_381/while/add_1AddV2Hsequential_127_lstm_381_while_sequential_127_lstm_381_while_loop_counter.sequential_127/lstm_381/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_127/lstm_381/while/IdentityIdentity'sequential_127/lstm_381/while/add_1:z:0#^sequential_127/lstm_381/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_381/while/Identity_1IdentityNsequential_127_lstm_381_while_sequential_127_lstm_381_while_maximum_iterations#^sequential_127/lstm_381/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_381/while/Identity_2Identity%sequential_127/lstm_381/while/add:z:0#^sequential_127/lstm_381/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_381/while/Identity_3IdentityRsequential_127/lstm_381/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_127/lstm_381/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_381/while/Identity_4Identity5sequential_127/lstm_381/while/lstm_cell_543/mul_2:z:0#^sequential_127/lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_127/lstm_381/while/Identity_5Identity5sequential_127/lstm_381/while/lstm_cell_543/add_1:z:0#^sequential_127/lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_127/lstm_381/while/NoOpNoOpC^sequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOpB^sequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOpD^sequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_127_lstm_381_while_identity/sequential_127/lstm_381/while/Identity:output:0"]
(sequential_127_lstm_381_while_identity_11sequential_127/lstm_381/while/Identity_1:output:0"]
(sequential_127_lstm_381_while_identity_21sequential_127/lstm_381/while/Identity_2:output:0"]
(sequential_127_lstm_381_while_identity_31sequential_127/lstm_381/while/Identity_3:output:0"]
(sequential_127_lstm_381_while_identity_41sequential_127/lstm_381/while/Identity_4:output:0"]
(sequential_127_lstm_381_while_identity_51sequential_127/lstm_381/while/Identity_5:output:0"�
Ksequential_127_lstm_381_while_lstm_cell_543_biasadd_readvariableop_resourceMsequential_127_lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0"�
Lsequential_127_lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resourceNsequential_127_lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0"�
Jsequential_127_lstm_381_while_lstm_cell_543_matmul_readvariableop_resourceLsequential_127_lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0"�
Esequential_127_lstm_381_while_sequential_127_lstm_381_strided_slice_1Gsequential_127_lstm_381_while_sequential_127_lstm_381_strided_slice_1_0"�
�sequential_127_lstm_381_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_381_tensorarrayunstack_tensorlistfromtensor�sequential_127_lstm_381_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_381_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOpBsequential_127/lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp2�
Asequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOpAsequential_127/lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp2�
Csequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOpCsequential_127/lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3301608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3301608___redundant_placeholder05
1while_while_cond_3301608___redundant_placeholder15
1while_while_cond_3301608___redundant_placeholder25
1while_while_cond_3301608___redundant_placeholder3
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
*__inference_lstm_382_layer_call_fn_3300637

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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298169s
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
*__inference_lstm_383_layer_call_fn_3301253

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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298319o
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
�
�
+__inference_dense_127_layer_call_fn_3301845

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
GPU 2J 8� *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337o
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
/__inference_lstm_cell_544_layer_call_fn_3301987

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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297383o
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

�
lstm_382_while_cond_3299331.
*lstm_382_while_lstm_382_while_loop_counter4
0lstm_382_while_lstm_382_while_maximum_iterations
lstm_382_while_placeholder 
lstm_382_while_placeholder_1 
lstm_382_while_placeholder_2 
lstm_382_while_placeholder_30
,lstm_382_while_less_lstm_382_strided_slice_1G
Clstm_382_while_lstm_382_while_cond_3299331___redundant_placeholder0G
Clstm_382_while_lstm_382_while_cond_3299331___redundant_placeholder1G
Clstm_382_while_lstm_382_while_cond_3299331___redundant_placeholder2G
Clstm_382_while_lstm_382_while_cond_3299331___redundant_placeholder3
lstm_382_while_identity
�
lstm_382/while/LessLesslstm_382_while_placeholder,lstm_382_while_less_lstm_382_strided_slice_1*
T0*
_output_shapes
: ]
lstm_382/while/IdentityIdentitylstm_382/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_382_while_identity lstm_382/while/Identity:output:0*(
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298535

inputs>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3298451*
condR
while_cond_3298450*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_3298615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3298615___redundant_placeholder05
1while_while_cond_3298615___redundant_placeholder15
1while_while_cond_3298615___redundant_placeholder25
1while_while_cond_3298615___redundant_placeholder3
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298319

inputs>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3298235*
condR
while_cond_3298234*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
lstm_383_while_cond_3299897.
*lstm_383_while_lstm_383_while_loop_counter4
0lstm_383_while_lstm_383_while_maximum_iterations
lstm_383_while_placeholder 
lstm_383_while_placeholder_1 
lstm_383_while_placeholder_2 
lstm_383_while_placeholder_30
,lstm_383_while_less_lstm_383_strided_slice_1G
Clstm_383_while_lstm_383_while_cond_3299897___redundant_placeholder0G
Clstm_383_while_lstm_383_while_cond_3299897___redundant_placeholder1G
Clstm_383_while_lstm_383_while_cond_3299897___redundant_placeholder2G
Clstm_383_while_lstm_383_while_cond_3299897___redundant_placeholder3
lstm_383_while_identity
�
lstm_383/while/LessLesslstm_383_while_placeholder,lstm_383_while_less_lstm_383_strided_slice_1*
T0*
_output_shapes
: ]
lstm_383/while/IdentityIdentitylstm_383/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_383_while_identity lstm_383/while/Identity:output:0*(
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
0__inference_sequential_127_layer_call_fn_3299107

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
GPU 2J 8� *T
fORM
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298344o
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
�8
�
while_body_3298616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300934
inputs_0?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3300850*
condR
while_cond_3300849*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_3297250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297250___redundant_placeholder05
1while_while_cond_3297250___redundant_placeholder15
1while_while_cond_3297250___redundant_placeholder25
1while_while_cond_3297250___redundant_placeholder3
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3297861

inputs'
lstm_cell_545_3297779:2('
lstm_cell_545_3297781:
(#
lstm_cell_545_3297783:(
identity��%lstm_cell_545/StatefulPartitionedCall�while;
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
%lstm_cell_545/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_545_3297779lstm_cell_545_3297781lstm_cell_545_3297783*
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297733n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_545_3297779lstm_cell_545_3297781lstm_cell_545_3297783*
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
while_body_3297792*
condR
while_cond_3297791*K
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
NoOpNoOp&^lstm_cell_545/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_545/StatefulPartitionedCall%lstm_cell_545/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�J
�
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300461

inputs?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3300377*
condR
while_cond_3300376*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3300520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�#
�
while_body_3296901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_543_3296925_0:	�0
while_lstm_cell_543_3296927_0:	d�,
while_lstm_cell_543_3296929_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_543_3296925:	�.
while_lstm_cell_543_3296927:	d�*
while_lstm_cell_543_3296929:	���+while/lstm_cell_543/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_543/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_543_3296925_0while_lstm_cell_543_3296927_0while_lstm_cell_543_3296929_0*
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3296887�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_543/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_543/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_543/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_543/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_543_3296925while_lstm_cell_543_3296925_0"<
while_lstm_cell_543_3296927while_lstm_cell_543_3296927_0"<
while_lstm_cell_543_3296929while_lstm_cell_543_3296929_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_543/StatefulPartitionedCall+while/lstm_cell_543/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302149

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
while_body_3298235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3297442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_544_3297466_0:	d�0
while_lstm_cell_544_3297468_0:	2�,
while_lstm_cell_544_3297470_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_544_3297466:	d�.
while_lstm_cell_544_3297468:	2�*
while_lstm_cell_544_3297470:	���+while/lstm_cell_544/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_544/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_544_3297466_0while_lstm_cell_544_3297468_0while_lstm_cell_544_3297470_0*
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297383�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_544/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_544/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_544/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_544/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_544_3297466while_lstm_cell_544_3297466_0"<
while_lstm_cell_544_3297468while_lstm_cell_544_3297468_0"<
while_lstm_cell_544_3297470while_lstm_cell_544_3297470_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_544/StatefulPartitionedCall+while/lstm_cell_544/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300604

inputs?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3300520*
condR
while_cond_3300519*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3298781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_127_layer_call_and_return_conditional_losses_3301855

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
while_cond_3300519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300519___redundant_placeholder05
1while_while_cond_3300519___redundant_placeholder15
1while_while_cond_3300519___redundant_placeholder25
1while_while_cond_3300519___redundant_placeholder3
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301953

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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302117

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
while_cond_3298234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3298234___redundant_placeholder05
1while_while_cond_3298234___redundant_placeholder15
1while_while_cond_3298234___redundant_placeholder25
1while_while_cond_3298234___redundant_placeholder3
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
�
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337

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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298169

inputs?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3298085*
condR
while_cond_3298084*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_381_layer_call_and_return_conditional_losses_3297161

inputs(
lstm_cell_543_3297079:	�(
lstm_cell_543_3297081:	d�$
lstm_cell_543_3297083:	�
identity��%lstm_cell_543/StatefulPartitionedCall�while;
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
%lstm_cell_543/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_543_3297079lstm_cell_543_3297081lstm_cell_543_3297083*
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3297033n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_543_3297079lstm_cell_543_3297081lstm_cell_543_3297083*
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
while_body_3297092*
condR
while_cond_3297091*K
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
NoOpNoOp&^lstm_cell_543/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_543/StatefulPartitionedCall%lstm_cell_543/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_3302422
file_prefix3
!assignvariableop_dense_127_kernel:
/
!assignvariableop_1_dense_127_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_381_lstm_cell_381_kernel:	�M
:assignvariableop_8_lstm_381_lstm_cell_381_recurrent_kernel:	d�=
.assignvariableop_9_lstm_381_lstm_cell_381_bias:	�D
1assignvariableop_10_lstm_382_lstm_cell_382_kernel:	d�N
;assignvariableop_11_lstm_382_lstm_cell_382_recurrent_kernel:	2�>
/assignvariableop_12_lstm_382_lstm_cell_382_bias:	�C
1assignvariableop_13_lstm_383_lstm_cell_383_kernel:2(M
;assignvariableop_14_lstm_383_lstm_cell_383_recurrent_kernel:
(=
/assignvariableop_15_lstm_383_lstm_cell_383_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_127_kernel_m:
7
)assignvariableop_19_adam_dense_127_bias_m:K
8assignvariableop_20_adam_lstm_381_lstm_cell_381_kernel_m:	�U
Bassignvariableop_21_adam_lstm_381_lstm_cell_381_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_381_lstm_cell_381_bias_m:	�K
8assignvariableop_23_adam_lstm_382_lstm_cell_382_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_382_lstm_cell_382_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_382_lstm_cell_382_bias_m:	�J
8assignvariableop_26_adam_lstm_383_lstm_cell_383_kernel_m:2(T
Bassignvariableop_27_adam_lstm_383_lstm_cell_383_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_383_lstm_cell_383_bias_m:(=
+assignvariableop_29_adam_dense_127_kernel_v:
7
)assignvariableop_30_adam_dense_127_bias_v:K
8assignvariableop_31_adam_lstm_381_lstm_cell_381_kernel_v:	�U
Bassignvariableop_32_adam_lstm_381_lstm_cell_381_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_381_lstm_cell_381_bias_v:	�K
8assignvariableop_34_adam_lstm_382_lstm_cell_382_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_382_lstm_cell_382_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_382_lstm_cell_382_bias_v:	�J
8assignvariableop_37_adam_lstm_383_lstm_cell_383_kernel_v:2(T
Bassignvariableop_38_adam_lstm_383_lstm_cell_383_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_383_lstm_cell_383_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_127_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_127_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_381_lstm_cell_381_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_381_lstm_cell_381_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_381_lstm_cell_381_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_382_lstm_cell_382_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_382_lstm_cell_382_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_382_lstm_cell_382_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_383_lstm_cell_383_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_383_lstm_cell_383_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_383_lstm_cell_383_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_127_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_127_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_381_lstm_cell_381_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_381_lstm_cell_381_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_381_lstm_cell_381_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_382_lstm_cell_382_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_382_lstm_cell_382_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_382_lstm_cell_382_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_383_lstm_cell_383_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_383_lstm_cell_383_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_383_lstm_cell_383_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_127_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_127_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_381_lstm_cell_381_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_381_lstm_cell_381_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_381_lstm_cell_381_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_382_lstm_cell_382_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_382_lstm_cell_382_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_382_lstm_cell_382_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_383_lstm_cell_383_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_383_lstm_cell_383_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_383_lstm_cell_383_bias_vIdentity_39:output:0"/device:CPU:0*
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
�8
�
while_body_3300707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3299080
lstm_381_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_381_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3296820o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�T
�
*sequential_127_lstm_382_while_body_3296591L
Hsequential_127_lstm_382_while_sequential_127_lstm_382_while_loop_counterR
Nsequential_127_lstm_382_while_sequential_127_lstm_382_while_maximum_iterations-
)sequential_127_lstm_382_while_placeholder/
+sequential_127_lstm_382_while_placeholder_1/
+sequential_127_lstm_382_while_placeholder_2/
+sequential_127_lstm_382_while_placeholder_3K
Gsequential_127_lstm_382_while_sequential_127_lstm_382_strided_slice_1_0�
�sequential_127_lstm_382_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_382_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_127_lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0:	d�a
Nsequential_127_lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�\
Msequential_127_lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0:	�*
&sequential_127_lstm_382_while_identity,
(sequential_127_lstm_382_while_identity_1,
(sequential_127_lstm_382_while_identity_2,
(sequential_127_lstm_382_while_identity_3,
(sequential_127_lstm_382_while_identity_4,
(sequential_127_lstm_382_while_identity_5I
Esequential_127_lstm_382_while_sequential_127_lstm_382_strided_slice_1�
�sequential_127_lstm_382_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_382_tensorarrayunstack_tensorlistfromtensor]
Jsequential_127_lstm_382_while_lstm_cell_544_matmul_readvariableop_resource:	d�_
Lsequential_127_lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource:	2�Z
Ksequential_127_lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource:	���Bsequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp�Asequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp�Csequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp�
Osequential_127/lstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_127/lstm_382/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_127_lstm_382_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_382_tensorarrayunstack_tensorlistfromtensor_0)sequential_127_lstm_382_while_placeholderXsequential_127/lstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOpLsequential_127_lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_127/lstm_382/while/lstm_cell_544/MatMulMatMulHsequential_127/lstm_382/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOpNsequential_127_lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_127/lstm_382/while/lstm_cell_544/MatMul_1MatMul+sequential_127_lstm_382_while_placeholder_2Ksequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_127/lstm_382/while/lstm_cell_544/addAddV2<sequential_127/lstm_382/while/lstm_cell_544/MatMul:product:0>sequential_127/lstm_382/while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOpMsequential_127_lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_127/lstm_382/while/lstm_cell_544/BiasAddBiasAdd3sequential_127/lstm_382/while/lstm_cell_544/add:z:0Jsequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_127/lstm_382/while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_127/lstm_382/while/lstm_cell_544/splitSplitDsequential_127/lstm_382/while/lstm_cell_544/split/split_dim:output:0<sequential_127/lstm_382/while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_127/lstm_382/while/lstm_cell_544/SigmoidSigmoid:sequential_127/lstm_382/while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_127/lstm_382/while/lstm_cell_544/Sigmoid_1Sigmoid:sequential_127/lstm_382/while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_127/lstm_382/while/lstm_cell_544/mulMul9sequential_127/lstm_382/while/lstm_cell_544/Sigmoid_1:y:0+sequential_127_lstm_382_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_127/lstm_382/while/lstm_cell_544/ReluRelu:sequential_127/lstm_382/while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_127/lstm_382/while/lstm_cell_544/mul_1Mul7sequential_127/lstm_382/while/lstm_cell_544/Sigmoid:y:0>sequential_127/lstm_382/while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_127/lstm_382/while/lstm_cell_544/add_1AddV23sequential_127/lstm_382/while/lstm_cell_544/mul:z:05sequential_127/lstm_382/while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_127/lstm_382/while/lstm_cell_544/Sigmoid_2Sigmoid:sequential_127/lstm_382/while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_127/lstm_382/while/lstm_cell_544/Relu_1Relu5sequential_127/lstm_382/while/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_127/lstm_382/while/lstm_cell_544/mul_2Mul9sequential_127/lstm_382/while/lstm_cell_544/Sigmoid_2:y:0@sequential_127/lstm_382/while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_127/lstm_382/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_127_lstm_382_while_placeholder_1)sequential_127_lstm_382_while_placeholder5sequential_127/lstm_382/while/lstm_cell_544/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_127/lstm_382/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_127/lstm_382/while/addAddV2)sequential_127_lstm_382_while_placeholder,sequential_127/lstm_382/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_127/lstm_382/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_127/lstm_382/while/add_1AddV2Hsequential_127_lstm_382_while_sequential_127_lstm_382_while_loop_counter.sequential_127/lstm_382/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_127/lstm_382/while/IdentityIdentity'sequential_127/lstm_382/while/add_1:z:0#^sequential_127/lstm_382/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_382/while/Identity_1IdentityNsequential_127_lstm_382_while_sequential_127_lstm_382_while_maximum_iterations#^sequential_127/lstm_382/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_382/while/Identity_2Identity%sequential_127/lstm_382/while/add:z:0#^sequential_127/lstm_382/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_382/while/Identity_3IdentityRsequential_127/lstm_382/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_127/lstm_382/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_382/while/Identity_4Identity5sequential_127/lstm_382/while/lstm_cell_544/mul_2:z:0#^sequential_127/lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_127/lstm_382/while/Identity_5Identity5sequential_127/lstm_382/while/lstm_cell_544/add_1:z:0#^sequential_127/lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_127/lstm_382/while/NoOpNoOpC^sequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOpB^sequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOpD^sequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_127_lstm_382_while_identity/sequential_127/lstm_382/while/Identity:output:0"]
(sequential_127_lstm_382_while_identity_11sequential_127/lstm_382/while/Identity_1:output:0"]
(sequential_127_lstm_382_while_identity_21sequential_127/lstm_382/while/Identity_2:output:0"]
(sequential_127_lstm_382_while_identity_31sequential_127/lstm_382/while/Identity_3:output:0"]
(sequential_127_lstm_382_while_identity_41sequential_127/lstm_382/while/Identity_4:output:0"]
(sequential_127_lstm_382_while_identity_51sequential_127/lstm_382/while/Identity_5:output:0"�
Ksequential_127_lstm_382_while_lstm_cell_544_biasadd_readvariableop_resourceMsequential_127_lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0"�
Lsequential_127_lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resourceNsequential_127_lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0"�
Jsequential_127_lstm_382_while_lstm_cell_544_matmul_readvariableop_resourceLsequential_127_lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0"�
Esequential_127_lstm_382_while_sequential_127_lstm_382_strided_slice_1Gsequential_127_lstm_382_while_sequential_127_lstm_382_strided_slice_1_0"�
�sequential_127_lstm_382_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_382_tensorarrayunstack_tensorlistfromtensor�sequential_127_lstm_382_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_382_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOpBsequential_127/lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp2�
Asequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOpAsequential_127/lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp2�
Csequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOpCsequential_127/lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297237

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
�
�
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298344

inputs#
lstm_381_3298020:	�#
lstm_381_3298022:	d�
lstm_381_3298024:	�#
lstm_382_3298170:	d�#
lstm_382_3298172:	2�
lstm_382_3298174:	�"
lstm_383_3298320:2("
lstm_383_3298322:
(
lstm_383_3298324:(#
dense_127_3298338:

dense_127_3298340:
identity��!dense_127/StatefulPartitionedCall� lstm_381/StatefulPartitionedCall� lstm_382/StatefulPartitionedCall� lstm_383/StatefulPartitionedCall�
 lstm_381/StatefulPartitionedCallStatefulPartitionedCallinputslstm_381_3298020lstm_381_3298022lstm_381_3298024*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298019�
 lstm_382/StatefulPartitionedCallStatefulPartitionedCall)lstm_381/StatefulPartitionedCall:output:0lstm_382_3298170lstm_382_3298172lstm_382_3298174*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298169�
 lstm_383/StatefulPartitionedCallStatefulPartitionedCall)lstm_382/StatefulPartitionedCall:output:0lstm_383_3298320lstm_383_3298322lstm_383_3298324*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298319�
!dense_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_383/StatefulPartitionedCall:output:0dense_127_3298338dense_127_3298340*
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
GPU 2J 8� *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337y
IdentityIdentity*dense_127/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_127/StatefulPartitionedCall!^lstm_381/StatefulPartitionedCall!^lstm_382/StatefulPartitionedCall!^lstm_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2D
 lstm_381/StatefulPartitionedCall lstm_381/StatefulPartitionedCall2D
 lstm_382/StatefulPartitionedCall lstm_382/StatefulPartitionedCall2D
 lstm_383/StatefulPartitionedCall lstm_383/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*sequential_127_lstm_382_while_cond_3296590L
Hsequential_127_lstm_382_while_sequential_127_lstm_382_while_loop_counterR
Nsequential_127_lstm_382_while_sequential_127_lstm_382_while_maximum_iterations-
)sequential_127_lstm_382_while_placeholder/
+sequential_127_lstm_382_while_placeholder_1/
+sequential_127_lstm_382_while_placeholder_2/
+sequential_127_lstm_382_while_placeholder_3N
Jsequential_127_lstm_382_while_less_sequential_127_lstm_382_strided_slice_1e
asequential_127_lstm_382_while_sequential_127_lstm_382_while_cond_3296590___redundant_placeholder0e
asequential_127_lstm_382_while_sequential_127_lstm_382_while_cond_3296590___redundant_placeholder1e
asequential_127_lstm_382_while_sequential_127_lstm_382_while_cond_3296590___redundant_placeholder2e
asequential_127_lstm_382_while_sequential_127_lstm_382_while_cond_3296590___redundant_placeholder3*
&sequential_127_lstm_382_while_identity
�
"sequential_127/lstm_382/while/LessLess)sequential_127_lstm_382_while_placeholderJsequential_127_lstm_382_while_less_sequential_127_lstm_382_strided_slice_1*
T0*
_output_shapes
: {
&sequential_127/lstm_382/while/IdentityIdentity&sequential_127/lstm_382/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_127_lstm_382_while_identity/sequential_127/lstm_382/while/Identity:output:0*(
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
while_cond_3298780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3298780___redundant_placeholder05
1while_while_cond_3298780___redundant_placeholder15
1while_while_cond_3298780___redundant_placeholder25
1while_while_cond_3298780___redundant_placeholder3
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
while_body_3297092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_543_3297116_0:	�0
while_lstm_cell_543_3297118_0:	d�,
while_lstm_cell_543_3297120_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_543_3297116:	�.
while_lstm_cell_543_3297118:	d�*
while_lstm_cell_543_3297120:	���+while/lstm_cell_543/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_543/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_543_3297116_0while_lstm_cell_543_3297118_0while_lstm_cell_543_3297120_0*
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3297033�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_543/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_543/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_543/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_543/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_543_3297116while_lstm_cell_543_3297116_0"<
while_lstm_cell_543_3297118while_lstm_cell_543_3297118_0"<
while_lstm_cell_543_3297120while_lstm_cell_543_3297120_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_543/StatefulPartitionedCall+while/lstm_cell_543/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299045
lstm_381_input#
lstm_381_3299018:	�#
lstm_381_3299020:	d�
lstm_381_3299022:	�#
lstm_382_3299025:	d�#
lstm_382_3299027:	2�
lstm_382_3299029:	�"
lstm_383_3299032:2("
lstm_383_3299034:
(
lstm_383_3299036:(#
dense_127_3299039:

dense_127_3299041:
identity��!dense_127/StatefulPartitionedCall� lstm_381/StatefulPartitionedCall� lstm_382/StatefulPartitionedCall� lstm_383/StatefulPartitionedCall�
 lstm_381/StatefulPartitionedCallStatefulPartitionedCalllstm_381_inputlstm_381_3299018lstm_381_3299020lstm_381_3299022*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298865�
 lstm_382/StatefulPartitionedCallStatefulPartitionedCall)lstm_381/StatefulPartitionedCall:output:0lstm_382_3299025lstm_382_3299027lstm_382_3299029*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298700�
 lstm_383/StatefulPartitionedCallStatefulPartitionedCall)lstm_382/StatefulPartitionedCall:output:0lstm_383_3299032lstm_383_3299034lstm_383_3299036*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298535�
!dense_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_383/StatefulPartitionedCall:output:0dense_127_3299039dense_127_3299041*
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
GPU 2J 8� *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337y
IdentityIdentity*dense_127/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_127/StatefulPartitionedCall!^lstm_381/StatefulPartitionedCall!^lstm_382/StatefulPartitionedCall!^lstm_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2D
 lstm_381/StatefulPartitionedCall lstm_381/StatefulPartitionedCall2D
 lstm_382/StatefulPartitionedCall lstm_382/StatefulPartitionedCall2D
 lstm_383/StatefulPartitionedCall lstm_383/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�
�
*__inference_lstm_381_layer_call_fn_3299999
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3296970|
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
�
while_body_3297935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300791
inputs_0?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3300707*
condR
while_cond_3300706*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_3301751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3301751___redundant_placeholder05
1while_while_cond_3301751___redundant_placeholder15
1while_while_cond_3301751___redundant_placeholder25
1while_while_cond_3301751___redundant_placeholder3
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
0__inference_sequential_127_layer_call_fn_3298369
lstm_381_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_381_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *T
fORM
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298344o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�
�
*sequential_127_lstm_383_while_cond_3296729L
Hsequential_127_lstm_383_while_sequential_127_lstm_383_while_loop_counterR
Nsequential_127_lstm_383_while_sequential_127_lstm_383_while_maximum_iterations-
)sequential_127_lstm_383_while_placeholder/
+sequential_127_lstm_383_while_placeholder_1/
+sequential_127_lstm_383_while_placeholder_2/
+sequential_127_lstm_383_while_placeholder_3N
Jsequential_127_lstm_383_while_less_sequential_127_lstm_383_strided_slice_1e
asequential_127_lstm_383_while_sequential_127_lstm_383_while_cond_3296729___redundant_placeholder0e
asequential_127_lstm_383_while_sequential_127_lstm_383_while_cond_3296729___redundant_placeholder1e
asequential_127_lstm_383_while_sequential_127_lstm_383_while_cond_3296729___redundant_placeholder2e
asequential_127_lstm_383_while_sequential_127_lstm_383_while_cond_3296729___redundant_placeholder3*
&sequential_127_lstm_383_while_identity
�
"sequential_127/lstm_383/while/LessLess)sequential_127_lstm_383_while_placeholderJsequential_127_lstm_383_while_less_sequential_127_lstm_383_strided_slice_1*
T0*
_output_shapes
: {
&sequential_127/lstm_383/while/IdentityIdentity&sequential_127/lstm_383/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_127_lstm_383_while_identity/sequential_127/lstm_383/while/Identity:output:0*(
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3297320

inputs(
lstm_cell_544_3297238:	d�(
lstm_cell_544_3297240:	2�$
lstm_cell_544_3297242:	�
identity��%lstm_cell_544/StatefulPartitionedCall�while;
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
%lstm_cell_544/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_544_3297238lstm_cell_544_3297240lstm_cell_544_3297242*
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297237n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_544_3297238lstm_cell_544_3297240lstm_cell_544_3297242*
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
while_body_3297251*
condR
while_cond_3297250*K
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
NoOpNoOp&^lstm_cell_544/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_544/StatefulPartitionedCall%lstm_cell_544/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�8
�
while_body_3300993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_383_while_body_3299471.
*lstm_383_while_lstm_383_while_loop_counter4
0lstm_383_while_lstm_383_while_maximum_iterations
lstm_383_while_placeholder 
lstm_383_while_placeholder_1 
lstm_383_while_placeholder_2 
lstm_383_while_placeholder_3-
)lstm_383_while_lstm_383_strided_slice_1_0i
elstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0:2(Q
?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(L
>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0:(
lstm_383_while_identity
lstm_383_while_identity_1
lstm_383_while_identity_2
lstm_383_while_identity_3
lstm_383_while_identity_4
lstm_383_while_identity_5+
'lstm_383_while_lstm_383_strided_slice_1g
clstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensorM
;lstm_383_while_lstm_cell_545_matmul_readvariableop_resource:2(O
=lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource:
(J
<lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource:(��3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp�2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp�4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp�
@lstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_383/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0lstm_383_while_placeholderIlstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_383/while/lstm_cell_545/MatMulMatMul9lstm_383/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_383/while/lstm_cell_545/MatMul_1MatMullstm_383_while_placeholder_2<lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_383/while/lstm_cell_545/addAddV2-lstm_383/while/lstm_cell_545/MatMul:product:0/lstm_383/while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_383/while/lstm_cell_545/BiasAddBiasAdd$lstm_383/while/lstm_cell_545/add:z:0;lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_383/while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_383/while/lstm_cell_545/splitSplit5lstm_383/while/lstm_cell_545/split/split_dim:output:0-lstm_383/while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_383/while/lstm_cell_545/SigmoidSigmoid+lstm_383/while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_383/while/lstm_cell_545/Sigmoid_1Sigmoid+lstm_383/while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_383/while/lstm_cell_545/mulMul*lstm_383/while/lstm_cell_545/Sigmoid_1:y:0lstm_383_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_383/while/lstm_cell_545/ReluRelu+lstm_383/while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/mul_1Mul(lstm_383/while/lstm_cell_545/Sigmoid:y:0/lstm_383/while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/add_1AddV2$lstm_383/while/lstm_cell_545/mul:z:0&lstm_383/while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_383/while/lstm_cell_545/Sigmoid_2Sigmoid+lstm_383/while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_383/while/lstm_cell_545/Relu_1Relu&lstm_383/while/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/mul_2Mul*lstm_383/while/lstm_cell_545/Sigmoid_2:y:01lstm_383/while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_383/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_383_while_placeholder_1lstm_383_while_placeholder&lstm_383/while/lstm_cell_545/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_383/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_383/while/addAddV2lstm_383_while_placeholderlstm_383/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_383/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_383/while/add_1AddV2*lstm_383_while_lstm_383_while_loop_counterlstm_383/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_383/while/IdentityIdentitylstm_383/while/add_1:z:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_1Identity0lstm_383_while_lstm_383_while_maximum_iterations^lstm_383/while/NoOp*
T0*
_output_shapes
: t
lstm_383/while/Identity_2Identitylstm_383/while/add:z:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_3IdentityClstm_383/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_4Identity&lstm_383/while/lstm_cell_545/mul_2:z:0^lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_383/while/Identity_5Identity&lstm_383/while/lstm_cell_545/add_1:z:0^lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_383/while/NoOpNoOp4^lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp3^lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp5^lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_383_while_identity lstm_383/while/Identity:output:0"?
lstm_383_while_identity_1"lstm_383/while/Identity_1:output:0"?
lstm_383_while_identity_2"lstm_383/while/Identity_2:output:0"?
lstm_383_while_identity_3"lstm_383/while/Identity_3:output:0"?
lstm_383_while_identity_4"lstm_383/while/Identity_4:output:0"?
lstm_383_while_identity_5"lstm_383/while/Identity_5:output:0"T
'lstm_383_while_lstm_383_strided_slice_1)lstm_383_while_lstm_383_strided_slice_1_0"~
<lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0"�
=lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0"|
;lstm_383_while_lstm_cell_545_matmul_readvariableop_resource=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0"�
clstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensorelstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp2h
2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp2l
4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3301466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3301465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3301465___redundant_placeholder05
1while_while_cond_3301465___redundant_placeholder15
1while_while_cond_3301465___redundant_placeholder25
1while_while_cond_3301465___redundant_placeholder3
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301550
inputs_0>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3301466*
condR
while_cond_3301465*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302051

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
while_cond_3296900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3296900___redundant_placeholder05
1while_while_cond_3296900___redundant_placeholder15
1while_while_cond_3296900___redundant_placeholder25
1while_while_cond_3296900___redundant_placeholder3
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
/__inference_lstm_cell_543_layer_call_fn_3301889

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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3297033o
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
�
�
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3296887

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
�J
�
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301693

inputs>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3301609*
condR
while_cond_3301608*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�#
�
while_body_3297251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_544_3297275_0:	d�0
while_lstm_cell_544_3297277_0:	2�,
while_lstm_cell_544_3297279_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_544_3297275:	d�.
while_lstm_cell_544_3297277:	2�*
while_lstm_cell_544_3297279:	���+while/lstm_cell_544/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_544/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_544_3297275_0while_lstm_cell_544_3297277_0while_lstm_cell_544_3297279_0*
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297237�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_544/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_544/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_544/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_544/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_544_3297275while_lstm_cell_544_3297275_0"<
while_lstm_cell_544_3297277while_lstm_cell_544_3297277_0"<
while_lstm_cell_544_3297279while_lstm_cell_544_3297279_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_544/StatefulPartitionedCall+while/lstm_cell_544/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_382_layer_call_fn_3300626
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3297511|
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
while_body_3301609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3297601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_545_3297625_0:2(/
while_lstm_cell_545_3297627_0:
(+
while_lstm_cell_545_3297629_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_545_3297625:2(-
while_lstm_cell_545_3297627:
()
while_lstm_cell_545_3297629:(��+while/lstm_cell_545/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_545/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_545_3297625_0while_lstm_cell_545_3297627_0while_lstm_cell_545_3297629_0*
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297587�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_545/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_545/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_545/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_545_3297625while_lstm_cell_545_3297625_0"<
while_lstm_cell_545_3297627while_lstm_cell_545_3297627_0"<
while_lstm_cell_545_3297629while_lstm_cell_545_3297629_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_545/StatefulPartitionedCall+while/lstm_cell_545/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
��
�
"__inference__wrapped_model_3296820
lstm_381_inputW
Dsequential_127_lstm_381_lstm_cell_543_matmul_readvariableop_resource:	�Y
Fsequential_127_lstm_381_lstm_cell_543_matmul_1_readvariableop_resource:	d�T
Esequential_127_lstm_381_lstm_cell_543_biasadd_readvariableop_resource:	�W
Dsequential_127_lstm_382_lstm_cell_544_matmul_readvariableop_resource:	d�Y
Fsequential_127_lstm_382_lstm_cell_544_matmul_1_readvariableop_resource:	2�T
Esequential_127_lstm_382_lstm_cell_544_biasadd_readvariableop_resource:	�V
Dsequential_127_lstm_383_lstm_cell_545_matmul_readvariableop_resource:2(X
Fsequential_127_lstm_383_lstm_cell_545_matmul_1_readvariableop_resource:
(S
Esequential_127_lstm_383_lstm_cell_545_biasadd_readvariableop_resource:(I
7sequential_127_dense_127_matmul_readvariableop_resource:
F
8sequential_127_dense_127_biasadd_readvariableop_resource:
identity��/sequential_127/dense_127/BiasAdd/ReadVariableOp�.sequential_127/dense_127/MatMul/ReadVariableOp�<sequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp�;sequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOp�=sequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp�sequential_127/lstm_381/while�<sequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp�;sequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOp�=sequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp�sequential_127/lstm_382/while�<sequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp�;sequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOp�=sequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp�sequential_127/lstm_383/while[
sequential_127/lstm_381/ShapeShapelstm_381_input*
T0*
_output_shapes
:u
+sequential_127/lstm_381/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_127/lstm_381/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_127/lstm_381/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_127/lstm_381/strided_sliceStridedSlice&sequential_127/lstm_381/Shape:output:04sequential_127/lstm_381/strided_slice/stack:output:06sequential_127/lstm_381/strided_slice/stack_1:output:06sequential_127/lstm_381/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_127/lstm_381/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_127/lstm_381/zeros/packedPack.sequential_127/lstm_381/strided_slice:output:0/sequential_127/lstm_381/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_127/lstm_381/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_381/zerosFill-sequential_127/lstm_381/zeros/packed:output:0,sequential_127/lstm_381/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_127/lstm_381/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_127/lstm_381/zeros_1/packedPack.sequential_127/lstm_381/strided_slice:output:01sequential_127/lstm_381/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_127/lstm_381/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_381/zeros_1Fill/sequential_127/lstm_381/zeros_1/packed:output:0.sequential_127/lstm_381/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_127/lstm_381/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_127/lstm_381/transpose	Transposelstm_381_input/sequential_127/lstm_381/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_127/lstm_381/Shape_1Shape%sequential_127/lstm_381/transpose:y:0*
T0*
_output_shapes
:w
-sequential_127/lstm_381/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_381/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_381/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_381/strided_slice_1StridedSlice(sequential_127/lstm_381/Shape_1:output:06sequential_127/lstm_381/strided_slice_1/stack:output:08sequential_127/lstm_381/strided_slice_1/stack_1:output:08sequential_127/lstm_381/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_127/lstm_381/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_127/lstm_381/TensorArrayV2TensorListReserve<sequential_127/lstm_381/TensorArrayV2/element_shape:output:00sequential_127/lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_127/lstm_381/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_127/lstm_381/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_127/lstm_381/transpose:y:0Vsequential_127/lstm_381/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_127/lstm_381/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_381/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_381/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_381/strided_slice_2StridedSlice%sequential_127/lstm_381/transpose:y:06sequential_127/lstm_381/strided_slice_2/stack:output:08sequential_127/lstm_381/strided_slice_2/stack_1:output:08sequential_127/lstm_381/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOpReadVariableOpDsequential_127_lstm_381_lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_127/lstm_381/lstm_cell_543/MatMulMatMul0sequential_127/lstm_381/strided_slice_2:output:0Csequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOpFsequential_127_lstm_381_lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_127/lstm_381/lstm_cell_543/MatMul_1MatMul&sequential_127/lstm_381/zeros:output:0Esequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_127/lstm_381/lstm_cell_543/addAddV26sequential_127/lstm_381/lstm_cell_543/MatMul:product:08sequential_127/lstm_381/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOpEsequential_127_lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_127/lstm_381/lstm_cell_543/BiasAddBiasAdd-sequential_127/lstm_381/lstm_cell_543/add:z:0Dsequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_127/lstm_381/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_127/lstm_381/lstm_cell_543/splitSplit>sequential_127/lstm_381/lstm_cell_543/split/split_dim:output:06sequential_127/lstm_381/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_127/lstm_381/lstm_cell_543/SigmoidSigmoid4sequential_127/lstm_381/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_127/lstm_381/lstm_cell_543/Sigmoid_1Sigmoid4sequential_127/lstm_381/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_127/lstm_381/lstm_cell_543/mulMul3sequential_127/lstm_381/lstm_cell_543/Sigmoid_1:y:0(sequential_127/lstm_381/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_127/lstm_381/lstm_cell_543/ReluRelu4sequential_127/lstm_381/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_127/lstm_381/lstm_cell_543/mul_1Mul1sequential_127/lstm_381/lstm_cell_543/Sigmoid:y:08sequential_127/lstm_381/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_127/lstm_381/lstm_cell_543/add_1AddV2-sequential_127/lstm_381/lstm_cell_543/mul:z:0/sequential_127/lstm_381/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_127/lstm_381/lstm_cell_543/Sigmoid_2Sigmoid4sequential_127/lstm_381/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_127/lstm_381/lstm_cell_543/Relu_1Relu/sequential_127/lstm_381/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_127/lstm_381/lstm_cell_543/mul_2Mul3sequential_127/lstm_381/lstm_cell_543/Sigmoid_2:y:0:sequential_127/lstm_381/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_127/lstm_381/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_127/lstm_381/TensorArrayV2_1TensorListReserve>sequential_127/lstm_381/TensorArrayV2_1/element_shape:output:00sequential_127/lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_127/lstm_381/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_127/lstm_381/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_127/lstm_381/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_127/lstm_381/whileWhile3sequential_127/lstm_381/while/loop_counter:output:09sequential_127/lstm_381/while/maximum_iterations:output:0%sequential_127/lstm_381/time:output:00sequential_127/lstm_381/TensorArrayV2_1:handle:0&sequential_127/lstm_381/zeros:output:0(sequential_127/lstm_381/zeros_1:output:00sequential_127/lstm_381/strided_slice_1:output:0Osequential_127/lstm_381/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_127_lstm_381_lstm_cell_543_matmul_readvariableop_resourceFsequential_127_lstm_381_lstm_cell_543_matmul_1_readvariableop_resourceEsequential_127_lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_127_lstm_381_while_body_3296452*6
cond.R,
*sequential_127_lstm_381_while_cond_3296451*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_127/lstm_381/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_127/lstm_381/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_127/lstm_381/while:output:3Qsequential_127/lstm_381/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_127/lstm_381/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_127/lstm_381/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_381/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_381/strided_slice_3StridedSliceCsequential_127/lstm_381/TensorArrayV2Stack/TensorListStack:tensor:06sequential_127/lstm_381/strided_slice_3/stack:output:08sequential_127/lstm_381/strided_slice_3/stack_1:output:08sequential_127/lstm_381/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_127/lstm_381/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_127/lstm_381/transpose_1	TransposeCsequential_127/lstm_381/TensorArrayV2Stack/TensorListStack:tensor:01sequential_127/lstm_381/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_127/lstm_381/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_127/lstm_382/ShapeShape'sequential_127/lstm_381/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_127/lstm_382/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_127/lstm_382/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_127/lstm_382/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_127/lstm_382/strided_sliceStridedSlice&sequential_127/lstm_382/Shape:output:04sequential_127/lstm_382/strided_slice/stack:output:06sequential_127/lstm_382/strided_slice/stack_1:output:06sequential_127/lstm_382/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_127/lstm_382/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_127/lstm_382/zeros/packedPack.sequential_127/lstm_382/strided_slice:output:0/sequential_127/lstm_382/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_127/lstm_382/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_382/zerosFill-sequential_127/lstm_382/zeros/packed:output:0,sequential_127/lstm_382/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_127/lstm_382/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_127/lstm_382/zeros_1/packedPack.sequential_127/lstm_382/strided_slice:output:01sequential_127/lstm_382/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_127/lstm_382/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_382/zeros_1Fill/sequential_127/lstm_382/zeros_1/packed:output:0.sequential_127/lstm_382/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_127/lstm_382/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_127/lstm_382/transpose	Transpose'sequential_127/lstm_381/transpose_1:y:0/sequential_127/lstm_382/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_127/lstm_382/Shape_1Shape%sequential_127/lstm_382/transpose:y:0*
T0*
_output_shapes
:w
-sequential_127/lstm_382/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_382/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_382/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_382/strided_slice_1StridedSlice(sequential_127/lstm_382/Shape_1:output:06sequential_127/lstm_382/strided_slice_1/stack:output:08sequential_127/lstm_382/strided_slice_1/stack_1:output:08sequential_127/lstm_382/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_127/lstm_382/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_127/lstm_382/TensorArrayV2TensorListReserve<sequential_127/lstm_382/TensorArrayV2/element_shape:output:00sequential_127/lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_127/lstm_382/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_127/lstm_382/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_127/lstm_382/transpose:y:0Vsequential_127/lstm_382/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_127/lstm_382/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_382/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_382/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_382/strided_slice_2StridedSlice%sequential_127/lstm_382/transpose:y:06sequential_127/lstm_382/strided_slice_2/stack:output:08sequential_127/lstm_382/strided_slice_2/stack_1:output:08sequential_127/lstm_382/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOpReadVariableOpDsequential_127_lstm_382_lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_127/lstm_382/lstm_cell_544/MatMulMatMul0sequential_127/lstm_382/strided_slice_2:output:0Csequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOpFsequential_127_lstm_382_lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_127/lstm_382/lstm_cell_544/MatMul_1MatMul&sequential_127/lstm_382/zeros:output:0Esequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_127/lstm_382/lstm_cell_544/addAddV26sequential_127/lstm_382/lstm_cell_544/MatMul:product:08sequential_127/lstm_382/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOpEsequential_127_lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_127/lstm_382/lstm_cell_544/BiasAddBiasAdd-sequential_127/lstm_382/lstm_cell_544/add:z:0Dsequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_127/lstm_382/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_127/lstm_382/lstm_cell_544/splitSplit>sequential_127/lstm_382/lstm_cell_544/split/split_dim:output:06sequential_127/lstm_382/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_127/lstm_382/lstm_cell_544/SigmoidSigmoid4sequential_127/lstm_382/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_127/lstm_382/lstm_cell_544/Sigmoid_1Sigmoid4sequential_127/lstm_382/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_127/lstm_382/lstm_cell_544/mulMul3sequential_127/lstm_382/lstm_cell_544/Sigmoid_1:y:0(sequential_127/lstm_382/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_127/lstm_382/lstm_cell_544/ReluRelu4sequential_127/lstm_382/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_127/lstm_382/lstm_cell_544/mul_1Mul1sequential_127/lstm_382/lstm_cell_544/Sigmoid:y:08sequential_127/lstm_382/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_127/lstm_382/lstm_cell_544/add_1AddV2-sequential_127/lstm_382/lstm_cell_544/mul:z:0/sequential_127/lstm_382/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_127/lstm_382/lstm_cell_544/Sigmoid_2Sigmoid4sequential_127/lstm_382/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_127/lstm_382/lstm_cell_544/Relu_1Relu/sequential_127/lstm_382/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_127/lstm_382/lstm_cell_544/mul_2Mul3sequential_127/lstm_382/lstm_cell_544/Sigmoid_2:y:0:sequential_127/lstm_382/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_127/lstm_382/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_127/lstm_382/TensorArrayV2_1TensorListReserve>sequential_127/lstm_382/TensorArrayV2_1/element_shape:output:00sequential_127/lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_127/lstm_382/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_127/lstm_382/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_127/lstm_382/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_127/lstm_382/whileWhile3sequential_127/lstm_382/while/loop_counter:output:09sequential_127/lstm_382/while/maximum_iterations:output:0%sequential_127/lstm_382/time:output:00sequential_127/lstm_382/TensorArrayV2_1:handle:0&sequential_127/lstm_382/zeros:output:0(sequential_127/lstm_382/zeros_1:output:00sequential_127/lstm_382/strided_slice_1:output:0Osequential_127/lstm_382/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_127_lstm_382_lstm_cell_544_matmul_readvariableop_resourceFsequential_127_lstm_382_lstm_cell_544_matmul_1_readvariableop_resourceEsequential_127_lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_127_lstm_382_while_body_3296591*6
cond.R,
*sequential_127_lstm_382_while_cond_3296590*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_127/lstm_382/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_127/lstm_382/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_127/lstm_382/while:output:3Qsequential_127/lstm_382/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_127/lstm_382/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_127/lstm_382/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_382/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_382/strided_slice_3StridedSliceCsequential_127/lstm_382/TensorArrayV2Stack/TensorListStack:tensor:06sequential_127/lstm_382/strided_slice_3/stack:output:08sequential_127/lstm_382/strided_slice_3/stack_1:output:08sequential_127/lstm_382/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_127/lstm_382/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_127/lstm_382/transpose_1	TransposeCsequential_127/lstm_382/TensorArrayV2Stack/TensorListStack:tensor:01sequential_127/lstm_382/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_127/lstm_382/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_127/lstm_383/ShapeShape'sequential_127/lstm_382/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_127/lstm_383/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_127/lstm_383/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_127/lstm_383/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_127/lstm_383/strided_sliceStridedSlice&sequential_127/lstm_383/Shape:output:04sequential_127/lstm_383/strided_slice/stack:output:06sequential_127/lstm_383/strided_slice/stack_1:output:06sequential_127/lstm_383/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_127/lstm_383/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_127/lstm_383/zeros/packedPack.sequential_127/lstm_383/strided_slice:output:0/sequential_127/lstm_383/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_127/lstm_383/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_383/zerosFill-sequential_127/lstm_383/zeros/packed:output:0,sequential_127/lstm_383/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_127/lstm_383/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_127/lstm_383/zeros_1/packedPack.sequential_127/lstm_383/strided_slice:output:01sequential_127/lstm_383/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_127/lstm_383/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_127/lstm_383/zeros_1Fill/sequential_127/lstm_383/zeros_1/packed:output:0.sequential_127/lstm_383/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_127/lstm_383/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_127/lstm_383/transpose	Transpose'sequential_127/lstm_382/transpose_1:y:0/sequential_127/lstm_383/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_127/lstm_383/Shape_1Shape%sequential_127/lstm_383/transpose:y:0*
T0*
_output_shapes
:w
-sequential_127/lstm_383/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_383/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_383/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_383/strided_slice_1StridedSlice(sequential_127/lstm_383/Shape_1:output:06sequential_127/lstm_383/strided_slice_1/stack:output:08sequential_127/lstm_383/strided_slice_1/stack_1:output:08sequential_127/lstm_383/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_127/lstm_383/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_127/lstm_383/TensorArrayV2TensorListReserve<sequential_127/lstm_383/TensorArrayV2/element_shape:output:00sequential_127/lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_127/lstm_383/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_127/lstm_383/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_127/lstm_383/transpose:y:0Vsequential_127/lstm_383/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_127/lstm_383/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_383/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_127/lstm_383/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_383/strided_slice_2StridedSlice%sequential_127/lstm_383/transpose:y:06sequential_127/lstm_383/strided_slice_2/stack:output:08sequential_127/lstm_383/strided_slice_2/stack_1:output:08sequential_127/lstm_383/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOpReadVariableOpDsequential_127_lstm_383_lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_127/lstm_383/lstm_cell_545/MatMulMatMul0sequential_127/lstm_383/strided_slice_2:output:0Csequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOpFsequential_127_lstm_383_lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_127/lstm_383/lstm_cell_545/MatMul_1MatMul&sequential_127/lstm_383/zeros:output:0Esequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_127/lstm_383/lstm_cell_545/addAddV26sequential_127/lstm_383/lstm_cell_545/MatMul:product:08sequential_127/lstm_383/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOpEsequential_127_lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_127/lstm_383/lstm_cell_545/BiasAddBiasAdd-sequential_127/lstm_383/lstm_cell_545/add:z:0Dsequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_127/lstm_383/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_127/lstm_383/lstm_cell_545/splitSplit>sequential_127/lstm_383/lstm_cell_545/split/split_dim:output:06sequential_127/lstm_383/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_127/lstm_383/lstm_cell_545/SigmoidSigmoid4sequential_127/lstm_383/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_127/lstm_383/lstm_cell_545/Sigmoid_1Sigmoid4sequential_127/lstm_383/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_127/lstm_383/lstm_cell_545/mulMul3sequential_127/lstm_383/lstm_cell_545/Sigmoid_1:y:0(sequential_127/lstm_383/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_127/lstm_383/lstm_cell_545/ReluRelu4sequential_127/lstm_383/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_127/lstm_383/lstm_cell_545/mul_1Mul1sequential_127/lstm_383/lstm_cell_545/Sigmoid:y:08sequential_127/lstm_383/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_127/lstm_383/lstm_cell_545/add_1AddV2-sequential_127/lstm_383/lstm_cell_545/mul:z:0/sequential_127/lstm_383/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_127/lstm_383/lstm_cell_545/Sigmoid_2Sigmoid4sequential_127/lstm_383/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_127/lstm_383/lstm_cell_545/Relu_1Relu/sequential_127/lstm_383/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_127/lstm_383/lstm_cell_545/mul_2Mul3sequential_127/lstm_383/lstm_cell_545/Sigmoid_2:y:0:sequential_127/lstm_383/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_127/lstm_383/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_127/lstm_383/TensorArrayV2_1TensorListReserve>sequential_127/lstm_383/TensorArrayV2_1/element_shape:output:00sequential_127/lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_127/lstm_383/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_127/lstm_383/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_127/lstm_383/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_127/lstm_383/whileWhile3sequential_127/lstm_383/while/loop_counter:output:09sequential_127/lstm_383/while/maximum_iterations:output:0%sequential_127/lstm_383/time:output:00sequential_127/lstm_383/TensorArrayV2_1:handle:0&sequential_127/lstm_383/zeros:output:0(sequential_127/lstm_383/zeros_1:output:00sequential_127/lstm_383/strided_slice_1:output:0Osequential_127/lstm_383/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_127_lstm_383_lstm_cell_545_matmul_readvariableop_resourceFsequential_127_lstm_383_lstm_cell_545_matmul_1_readvariableop_resourceEsequential_127_lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_127_lstm_383_while_body_3296730*6
cond.R,
*sequential_127_lstm_383_while_cond_3296729*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_127/lstm_383/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_127/lstm_383/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_127/lstm_383/while:output:3Qsequential_127/lstm_383/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_127/lstm_383/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_127/lstm_383/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_127/lstm_383/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_127/lstm_383/strided_slice_3StridedSliceCsequential_127/lstm_383/TensorArrayV2Stack/TensorListStack:tensor:06sequential_127/lstm_383/strided_slice_3/stack:output:08sequential_127/lstm_383/strided_slice_3/stack_1:output:08sequential_127/lstm_383/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_127/lstm_383/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_127/lstm_383/transpose_1	TransposeCsequential_127/lstm_383/TensorArrayV2Stack/TensorListStack:tensor:01sequential_127/lstm_383/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_127/lstm_383/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_127/dense_127/MatMul/ReadVariableOpReadVariableOp7sequential_127_dense_127_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_127/dense_127/MatMulMatMul0sequential_127/lstm_383/strided_slice_3:output:06sequential_127/dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_127/dense_127/BiasAdd/ReadVariableOpReadVariableOp8sequential_127_dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_127/dense_127/BiasAddBiasAdd)sequential_127/dense_127/MatMul:product:07sequential_127/dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_127/dense_127/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_127/dense_127/BiasAdd/ReadVariableOp/^sequential_127/dense_127/MatMul/ReadVariableOp=^sequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp<^sequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOp>^sequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp^sequential_127/lstm_381/while=^sequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp<^sequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOp>^sequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp^sequential_127/lstm_382/while=^sequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp<^sequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOp>^sequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp^sequential_127/lstm_383/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_127/dense_127/BiasAdd/ReadVariableOp/sequential_127/dense_127/BiasAdd/ReadVariableOp2`
.sequential_127/dense_127/MatMul/ReadVariableOp.sequential_127/dense_127/MatMul/ReadVariableOp2|
<sequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp<sequential_127/lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp2z
;sequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOp;sequential_127/lstm_381/lstm_cell_543/MatMul/ReadVariableOp2~
=sequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp=sequential_127/lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp2>
sequential_127/lstm_381/whilesequential_127/lstm_381/while2|
<sequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp<sequential_127/lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp2z
;sequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOp;sequential_127/lstm_382/lstm_cell_544/MatMul/ReadVariableOp2~
=sequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp=sequential_127/lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp2>
sequential_127/lstm_382/whilesequential_127/lstm_382/while2|
<sequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp<sequential_127/lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp2z
;sequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOp;sequential_127/lstm_383/lstm_cell_545/MatMul/ReadVariableOp2~
=sequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp=sequential_127/lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp2>
sequential_127/lstm_383/whilesequential_127/lstm_383/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�8
�
while_body_3298085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_544_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_544_matmul_readvariableop_resource:	d�G
4while_lstm_cell_544_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_544_biasadd_readvariableop_resource:	���*while/lstm_cell_544/BiasAdd/ReadVariableOp�)while/lstm_cell_544/MatMul/ReadVariableOp�+while/lstm_cell_544/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_544/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_544/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_544/addAddV2$while/lstm_cell_544/MatMul:product:0&while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_544/BiasAddBiasAddwhile/lstm_cell_544/add:z:02while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_544/splitSplit,while/lstm_cell_544/split/split_dim:output:0$while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_544/SigmoidSigmoid"while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_1Sigmoid"while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mulMul!while/lstm_cell_544/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_544/ReluRelu"while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_1Mulwhile/lstm_cell_544/Sigmoid:y:0&while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/add_1AddV2while/lstm_cell_544/mul:z:0while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_544/Sigmoid_2Sigmoid"while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_544/Relu_1Reluwhile/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_544/mul_2Mul!while/lstm_cell_544/Sigmoid_2:y:0(while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_544/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_544/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_544/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_544/BiasAdd/ReadVariableOp*^while/lstm_cell_544/MatMul/ReadVariableOp,^while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_544_biasadd_readvariableop_resource5while_lstm_cell_544_biasadd_readvariableop_resource_0"n
4while_lstm_cell_544_matmul_1_readvariableop_resource6while_lstm_cell_544_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_544_matmul_readvariableop_resource4while_lstm_cell_544_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_544/BiasAdd/ReadVariableOp*while/lstm_cell_544/BiasAdd/ReadVariableOp2V
)while/lstm_cell_544/MatMul/ReadVariableOp)while/lstm_cell_544/MatMul/ReadVariableOp2Z
+while/lstm_cell_544/MatMul_1/ReadVariableOp+while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3301135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3301135___redundant_placeholder05
1while_while_cond_3301135___redundant_placeholder15
1while_while_cond_3301135___redundant_placeholder25
1while_while_cond_3301135___redundant_placeholder3
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
�C
�

lstm_381_while_body_3299620.
*lstm_381_while_lstm_381_while_loop_counter4
0lstm_381_while_lstm_381_while_maximum_iterations
lstm_381_while_placeholder 
lstm_381_while_placeholder_1 
lstm_381_while_placeholder_2 
lstm_381_while_placeholder_3-
)lstm_381_while_lstm_381_strided_slice_1_0i
elstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0:	�R
?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�M
>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
lstm_381_while_identity
lstm_381_while_identity_1
lstm_381_while_identity_2
lstm_381_while_identity_3
lstm_381_while_identity_4
lstm_381_while_identity_5+
'lstm_381_while_lstm_381_strided_slice_1g
clstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensorN
;lstm_381_while_lstm_cell_543_matmul_readvariableop_resource:	�P
=lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource:	d�K
<lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource:	���3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp�2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp�4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp�
@lstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_381/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0lstm_381_while_placeholderIlstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_381/while/lstm_cell_543/MatMulMatMul9lstm_381/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_381/while/lstm_cell_543/MatMul_1MatMullstm_381_while_placeholder_2<lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_381/while/lstm_cell_543/addAddV2-lstm_381/while/lstm_cell_543/MatMul:product:0/lstm_381/while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_381/while/lstm_cell_543/BiasAddBiasAdd$lstm_381/while/lstm_cell_543/add:z:0;lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_381/while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_381/while/lstm_cell_543/splitSplit5lstm_381/while/lstm_cell_543/split/split_dim:output:0-lstm_381/while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_381/while/lstm_cell_543/SigmoidSigmoid+lstm_381/while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_381/while/lstm_cell_543/Sigmoid_1Sigmoid+lstm_381/while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_381/while/lstm_cell_543/mulMul*lstm_381/while/lstm_cell_543/Sigmoid_1:y:0lstm_381_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_381/while/lstm_cell_543/ReluRelu+lstm_381/while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/mul_1Mul(lstm_381/while/lstm_cell_543/Sigmoid:y:0/lstm_381/while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/add_1AddV2$lstm_381/while/lstm_cell_543/mul:z:0&lstm_381/while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_381/while/lstm_cell_543/Sigmoid_2Sigmoid+lstm_381/while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_381/while/lstm_cell_543/Relu_1Relu&lstm_381/while/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/mul_2Mul*lstm_381/while/lstm_cell_543/Sigmoid_2:y:01lstm_381/while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_381/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_381_while_placeholder_1lstm_381_while_placeholder&lstm_381/while/lstm_cell_543/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_381/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_381/while/addAddV2lstm_381_while_placeholderlstm_381/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_381/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_381/while/add_1AddV2*lstm_381_while_lstm_381_while_loop_counterlstm_381/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_381/while/IdentityIdentitylstm_381/while/add_1:z:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_1Identity0lstm_381_while_lstm_381_while_maximum_iterations^lstm_381/while/NoOp*
T0*
_output_shapes
: t
lstm_381/while/Identity_2Identitylstm_381/while/add:z:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_3IdentityClstm_381/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_4Identity&lstm_381/while/lstm_cell_543/mul_2:z:0^lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_381/while/Identity_5Identity&lstm_381/while/lstm_cell_543/add_1:z:0^lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_381/while/NoOpNoOp4^lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp3^lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp5^lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_381_while_identity lstm_381/while/Identity:output:0"?
lstm_381_while_identity_1"lstm_381/while/Identity_1:output:0"?
lstm_381_while_identity_2"lstm_381/while/Identity_2:output:0"?
lstm_381_while_identity_3"lstm_381/while/Identity_3:output:0"?
lstm_381_while_identity_4"lstm_381/while/Identity_4:output:0"?
lstm_381_while_identity_5"lstm_381/while/Identity_5:output:0"T
'lstm_381_while_lstm_381_strided_slice_1)lstm_381_while_lstm_381_strided_slice_1_0"~
<lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0"�
=lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0"|
;lstm_381_while_lstm_cell_543_matmul_readvariableop_resource=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0"�
clstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensorelstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp2h
2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp2l
4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3297511

inputs(
lstm_cell_544_3297429:	d�(
lstm_cell_544_3297431:	2�$
lstm_cell_544_3297433:	�
identity��%lstm_cell_544/StatefulPartitionedCall�while;
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
%lstm_cell_544/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_544_3297429lstm_cell_544_3297431lstm_cell_544_3297433*
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3297383n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_544_3297429lstm_cell_544_3297431lstm_cell_544_3297433*
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
while_body_3297442*
condR
while_cond_3297441*K
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
NoOpNoOp&^lstm_cell_544/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_544/StatefulPartitionedCall%lstm_cell_544/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�W
�
 __inference__traced_save_3302292
file_prefix/
+savev2_dense_127_kernel_read_readvariableop-
)savev2_dense_127_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_381_lstm_cell_381_kernel_read_readvariableopF
Bsavev2_lstm_381_lstm_cell_381_recurrent_kernel_read_readvariableop:
6savev2_lstm_381_lstm_cell_381_bias_read_readvariableop<
8savev2_lstm_382_lstm_cell_382_kernel_read_readvariableopF
Bsavev2_lstm_382_lstm_cell_382_recurrent_kernel_read_readvariableop:
6savev2_lstm_382_lstm_cell_382_bias_read_readvariableop<
8savev2_lstm_383_lstm_cell_383_kernel_read_readvariableopF
Bsavev2_lstm_383_lstm_cell_383_recurrent_kernel_read_readvariableop:
6savev2_lstm_383_lstm_cell_383_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_127_kernel_m_read_readvariableop4
0savev2_adam_dense_127_bias_m_read_readvariableopC
?savev2_adam_lstm_381_lstm_cell_381_kernel_m_read_readvariableopM
Isavev2_adam_lstm_381_lstm_cell_381_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_381_lstm_cell_381_bias_m_read_readvariableopC
?savev2_adam_lstm_382_lstm_cell_382_kernel_m_read_readvariableopM
Isavev2_adam_lstm_382_lstm_cell_382_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_382_lstm_cell_382_bias_m_read_readvariableopC
?savev2_adam_lstm_383_lstm_cell_383_kernel_m_read_readvariableopM
Isavev2_adam_lstm_383_lstm_cell_383_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_383_lstm_cell_383_bias_m_read_readvariableop6
2savev2_adam_dense_127_kernel_v_read_readvariableop4
0savev2_adam_dense_127_bias_v_read_readvariableopC
?savev2_adam_lstm_381_lstm_cell_381_kernel_v_read_readvariableopM
Isavev2_adam_lstm_381_lstm_cell_381_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_381_lstm_cell_381_bias_v_read_readvariableopC
?savev2_adam_lstm_382_lstm_cell_382_kernel_v_read_readvariableopM
Isavev2_adam_lstm_382_lstm_cell_382_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_382_lstm_cell_382_bias_v_read_readvariableopC
?savev2_adam_lstm_383_lstm_cell_383_kernel_v_read_readvariableopM
Isavev2_adam_lstm_383_lstm_cell_383_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_383_lstm_cell_383_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_127_kernel_read_readvariableop)savev2_dense_127_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_381_lstm_cell_381_kernel_read_readvariableopBsavev2_lstm_381_lstm_cell_381_recurrent_kernel_read_readvariableop6savev2_lstm_381_lstm_cell_381_bias_read_readvariableop8savev2_lstm_382_lstm_cell_382_kernel_read_readvariableopBsavev2_lstm_382_lstm_cell_382_recurrent_kernel_read_readvariableop6savev2_lstm_382_lstm_cell_382_bias_read_readvariableop8savev2_lstm_383_lstm_cell_383_kernel_read_readvariableopBsavev2_lstm_383_lstm_cell_383_recurrent_kernel_read_readvariableop6savev2_lstm_383_lstm_cell_383_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_127_kernel_m_read_readvariableop0savev2_adam_dense_127_bias_m_read_readvariableop?savev2_adam_lstm_381_lstm_cell_381_kernel_m_read_readvariableopIsavev2_adam_lstm_381_lstm_cell_381_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_381_lstm_cell_381_bias_m_read_readvariableop?savev2_adam_lstm_382_lstm_cell_382_kernel_m_read_readvariableopIsavev2_adam_lstm_382_lstm_cell_382_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_382_lstm_cell_382_bias_m_read_readvariableop?savev2_adam_lstm_383_lstm_cell_383_kernel_m_read_readvariableopIsavev2_adam_lstm_383_lstm_cell_383_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_383_lstm_cell_383_bias_m_read_readvariableop2savev2_adam_dense_127_kernel_v_read_readvariableop0savev2_adam_dense_127_bias_v_read_readvariableop?savev2_adam_lstm_381_lstm_cell_381_kernel_v_read_readvariableopIsavev2_adam_lstm_381_lstm_cell_381_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_381_lstm_cell_381_bias_v_read_readvariableop?savev2_adam_lstm_382_lstm_cell_382_kernel_v_read_readvariableopIsavev2_adam_lstm_382_lstm_cell_382_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_382_lstm_cell_382_bias_v_read_readvariableop?savev2_adam_lstm_383_lstm_cell_383_kernel_v_read_readvariableopIsavev2_adam_lstm_383_lstm_cell_383_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_383_lstm_cell_383_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�8
�
while_body_3301752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301220

inputs?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3301136*
condR
while_cond_3301135*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_383_layer_call_fn_3301231
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3297670o
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297733

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
while_cond_3300376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300376___redundant_placeholder05
1while_while_cond_3300376___redundant_placeholder15
1while_while_cond_3300376___redundant_placeholder25
1while_while_cond_3300376___redundant_placeholder3
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

�
0__inference_sequential_127_layer_call_fn_3299134

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
GPU 2J 8� *T
fORM
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298933o
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
lstm_381_while_cond_3299619.
*lstm_381_while_lstm_381_while_loop_counter4
0lstm_381_while_lstm_381_while_maximum_iterations
lstm_381_while_placeholder 
lstm_381_while_placeholder_1 
lstm_381_while_placeholder_2 
lstm_381_while_placeholder_30
,lstm_381_while_less_lstm_381_strided_slice_1G
Clstm_381_while_lstm_381_while_cond_3299619___redundant_placeholder0G
Clstm_381_while_lstm_381_while_cond_3299619___redundant_placeholder1G
Clstm_381_while_lstm_381_while_cond_3299619___redundant_placeholder2G
Clstm_381_while_lstm_381_while_cond_3299619___redundant_placeholder3
lstm_381_while_identity
�
lstm_381/while/LessLesslstm_381_while_placeholder,lstm_381_while_less_lstm_381_strided_slice_1*
T0*
_output_shapes
: ]
lstm_381/while/IdentityIdentitylstm_381/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_381_while_identity lstm_381/while/Identity:output:0*(
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
�C
�

lstm_382_while_body_3299332.
*lstm_382_while_lstm_382_while_loop_counter4
0lstm_382_while_lstm_382_while_maximum_iterations
lstm_382_while_placeholder 
lstm_382_while_placeholder_1 
lstm_382_while_placeholder_2 
lstm_382_while_placeholder_3-
)lstm_382_while_lstm_382_strided_slice_1_0i
elstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0:	d�R
?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0:	2�M
>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0:	�
lstm_382_while_identity
lstm_382_while_identity_1
lstm_382_while_identity_2
lstm_382_while_identity_3
lstm_382_while_identity_4
lstm_382_while_identity_5+
'lstm_382_while_lstm_382_strided_slice_1g
clstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensorN
;lstm_382_while_lstm_cell_544_matmul_readvariableop_resource:	d�P
=lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource:	2�K
<lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource:	���3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp�2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp�4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp�
@lstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_382/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0lstm_382_while_placeholderIlstm_382/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_382/while/lstm_cell_544/MatMulMatMul9lstm_382/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_382/while/lstm_cell_544/MatMul_1MatMullstm_382_while_placeholder_2<lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_382/while/lstm_cell_544/addAddV2-lstm_382/while/lstm_cell_544/MatMul:product:0/lstm_382/while/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_382/while/lstm_cell_544/BiasAddBiasAdd$lstm_382/while/lstm_cell_544/add:z:0;lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_382/while/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_382/while/lstm_cell_544/splitSplit5lstm_382/while/lstm_cell_544/split/split_dim:output:0-lstm_382/while/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_382/while/lstm_cell_544/SigmoidSigmoid+lstm_382/while/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_382/while/lstm_cell_544/Sigmoid_1Sigmoid+lstm_382/while/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_382/while/lstm_cell_544/mulMul*lstm_382/while/lstm_cell_544/Sigmoid_1:y:0lstm_382_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_382/while/lstm_cell_544/ReluRelu+lstm_382/while/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/mul_1Mul(lstm_382/while/lstm_cell_544/Sigmoid:y:0/lstm_382/while/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/add_1AddV2$lstm_382/while/lstm_cell_544/mul:z:0&lstm_382/while/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_382/while/lstm_cell_544/Sigmoid_2Sigmoid+lstm_382/while/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_382/while/lstm_cell_544/Relu_1Relu&lstm_382/while/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_382/while/lstm_cell_544/mul_2Mul*lstm_382/while/lstm_cell_544/Sigmoid_2:y:01lstm_382/while/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_382/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_382_while_placeholder_1lstm_382_while_placeholder&lstm_382/while/lstm_cell_544/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_382/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_382/while/addAddV2lstm_382_while_placeholderlstm_382/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_382/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_382/while/add_1AddV2*lstm_382_while_lstm_382_while_loop_counterlstm_382/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_382/while/IdentityIdentitylstm_382/while/add_1:z:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_1Identity0lstm_382_while_lstm_382_while_maximum_iterations^lstm_382/while/NoOp*
T0*
_output_shapes
: t
lstm_382/while/Identity_2Identitylstm_382/while/add:z:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_3IdentityClstm_382/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_382/while/NoOp*
T0*
_output_shapes
: �
lstm_382/while/Identity_4Identity&lstm_382/while/lstm_cell_544/mul_2:z:0^lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_382/while/Identity_5Identity&lstm_382/while/lstm_cell_544/add_1:z:0^lstm_382/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_382/while/NoOpNoOp4^lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp3^lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp5^lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_382_while_identity lstm_382/while/Identity:output:0"?
lstm_382_while_identity_1"lstm_382/while/Identity_1:output:0"?
lstm_382_while_identity_2"lstm_382/while/Identity_2:output:0"?
lstm_382_while_identity_3"lstm_382/while/Identity_3:output:0"?
lstm_382_while_identity_4"lstm_382/while/Identity_4:output:0"?
lstm_382_while_identity_5"lstm_382/while/Identity_5:output:0"T
'lstm_382_while_lstm_382_strided_slice_1)lstm_382_while_lstm_382_strided_slice_1_0"~
<lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource>lstm_382_while_lstm_cell_544_biasadd_readvariableop_resource_0"�
=lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource?lstm_382_while_lstm_cell_544_matmul_1_readvariableop_resource_0"|
;lstm_382_while_lstm_cell_544_matmul_readvariableop_resource=lstm_382_while_lstm_cell_544_matmul_readvariableop_resource_0"�
clstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensorelstm_382_while_tensorarrayv2read_tensorlistgetitem_lstm_382_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp3lstm_382/while/lstm_cell_544/BiasAdd/ReadVariableOp2h
2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp2lstm_382/while/lstm_cell_544/MatMul/ReadVariableOp2l
4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp4lstm_382/while/lstm_cell_544/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
��
�
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299561

inputsH
5lstm_381_lstm_cell_543_matmul_readvariableop_resource:	�J
7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource:	d�E
6lstm_381_lstm_cell_543_biasadd_readvariableop_resource:	�H
5lstm_382_lstm_cell_544_matmul_readvariableop_resource:	d�J
7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource:	2�E
6lstm_382_lstm_cell_544_biasadd_readvariableop_resource:	�G
5lstm_383_lstm_cell_545_matmul_readvariableop_resource:2(I
7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource:
(D
6lstm_383_lstm_cell_545_biasadd_readvariableop_resource:(:
(dense_127_matmul_readvariableop_resource:
7
)dense_127_biasadd_readvariableop_resource:
identity�� dense_127/BiasAdd/ReadVariableOp�dense_127/MatMul/ReadVariableOp�-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp�,lstm_381/lstm_cell_543/MatMul/ReadVariableOp�.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp�lstm_381/while�-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp�,lstm_382/lstm_cell_544/MatMul/ReadVariableOp�.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp�lstm_382/while�-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp�,lstm_383/lstm_cell_545/MatMul/ReadVariableOp�.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp�lstm_383/whileD
lstm_381/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_381/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_381/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_381/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_sliceStridedSlicelstm_381/Shape:output:0%lstm_381/strided_slice/stack:output:0'lstm_381/strided_slice/stack_1:output:0'lstm_381/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_381/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_381/zeros/packedPacklstm_381/strided_slice:output:0 lstm_381/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_381/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_381/zerosFilllstm_381/zeros/packed:output:0lstm_381/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_381/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_381/zeros_1/packedPacklstm_381/strided_slice:output:0"lstm_381/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_381/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_381/zeros_1Fill lstm_381/zeros_1/packed:output:0lstm_381/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_381/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_381/transpose	Transposeinputs lstm_381/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_381/Shape_1Shapelstm_381/transpose:y:0*
T0*
_output_shapes
:h
lstm_381/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_381/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_1StridedSlicelstm_381/Shape_1:output:0'lstm_381/strided_slice_1/stack:output:0)lstm_381/strided_slice_1/stack_1:output:0)lstm_381/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_381/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_381/TensorArrayV2TensorListReserve-lstm_381/TensorArrayV2/element_shape:output:0!lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_381/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_381/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_381/transpose:y:0Glstm_381/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_381/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_381/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_2StridedSlicelstm_381/transpose:y:0'lstm_381/strided_slice_2/stack:output:0)lstm_381/strided_slice_2/stack_1:output:0)lstm_381/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_381/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp5lstm_381_lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_381/lstm_cell_543/MatMulMatMul!lstm_381/strided_slice_2:output:04lstm_381/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_381/lstm_cell_543/MatMul_1MatMullstm_381/zeros:output:06lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_381/lstm_cell_543/addAddV2'lstm_381/lstm_cell_543/MatMul:product:0)lstm_381/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp6lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_381/lstm_cell_543/BiasAddBiasAddlstm_381/lstm_cell_543/add:z:05lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_381/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_381/lstm_cell_543/splitSplit/lstm_381/lstm_cell_543/split/split_dim:output:0'lstm_381/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_381/lstm_cell_543/SigmoidSigmoid%lstm_381/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_381/lstm_cell_543/Sigmoid_1Sigmoid%lstm_381/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mulMul$lstm_381/lstm_cell_543/Sigmoid_1:y:0lstm_381/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_381/lstm_cell_543/ReluRelu%lstm_381/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mul_1Mul"lstm_381/lstm_cell_543/Sigmoid:y:0)lstm_381/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/add_1AddV2lstm_381/lstm_cell_543/mul:z:0 lstm_381/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_381/lstm_cell_543/Sigmoid_2Sigmoid%lstm_381/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_381/lstm_cell_543/Relu_1Relu lstm_381/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mul_2Mul$lstm_381/lstm_cell_543/Sigmoid_2:y:0+lstm_381/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_381/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_381/TensorArrayV2_1TensorListReserve/lstm_381/TensorArrayV2_1/element_shape:output:0!lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_381/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_381/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_381/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_381/whileWhile$lstm_381/while/loop_counter:output:0*lstm_381/while/maximum_iterations:output:0lstm_381/time:output:0!lstm_381/TensorArrayV2_1:handle:0lstm_381/zeros:output:0lstm_381/zeros_1:output:0!lstm_381/strided_slice_1:output:0@lstm_381/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_381_lstm_cell_543_matmul_readvariableop_resource7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource6lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_381_while_body_3299193*'
condR
lstm_381_while_cond_3299192*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_381/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_381/TensorArrayV2Stack/TensorListStackTensorListStacklstm_381/while:output:3Blstm_381/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_381/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_381/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_3StridedSlice4lstm_381/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_381/strided_slice_3/stack:output:0)lstm_381/strided_slice_3/stack_1:output:0)lstm_381/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_381/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_381/transpose_1	Transpose4lstm_381/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_381/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_381/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_382/ShapeShapelstm_381/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_382/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_382/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_382/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_sliceStridedSlicelstm_382/Shape:output:0%lstm_382/strided_slice/stack:output:0'lstm_382/strided_slice/stack_1:output:0'lstm_382/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_382/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_382/zeros/packedPacklstm_382/strided_slice:output:0 lstm_382/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_382/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_382/zerosFilllstm_382/zeros/packed:output:0lstm_382/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_382/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_382/zeros_1/packedPacklstm_382/strided_slice:output:0"lstm_382/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_382/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_382/zeros_1Fill lstm_382/zeros_1/packed:output:0lstm_382/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_382/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_382/transpose	Transposelstm_381/transpose_1:y:0 lstm_382/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_382/Shape_1Shapelstm_382/transpose:y:0*
T0*
_output_shapes
:h
lstm_382/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_382/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_1StridedSlicelstm_382/Shape_1:output:0'lstm_382/strided_slice_1/stack:output:0)lstm_382/strided_slice_1/stack_1:output:0)lstm_382/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_382/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_382/TensorArrayV2TensorListReserve-lstm_382/TensorArrayV2/element_shape:output:0!lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_382/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_382/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_382/transpose:y:0Glstm_382/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_382/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_382/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_2StridedSlicelstm_382/transpose:y:0'lstm_382/strided_slice_2/stack:output:0)lstm_382/strided_slice_2/stack_1:output:0)lstm_382/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_382/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp5lstm_382_lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_382/lstm_cell_544/MatMulMatMul!lstm_382/strided_slice_2:output:04lstm_382/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_382/lstm_cell_544/MatMul_1MatMullstm_382/zeros:output:06lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_382/lstm_cell_544/addAddV2'lstm_382/lstm_cell_544/MatMul:product:0)lstm_382/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp6lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_382/lstm_cell_544/BiasAddBiasAddlstm_382/lstm_cell_544/add:z:05lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_382/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_382/lstm_cell_544/splitSplit/lstm_382/lstm_cell_544/split/split_dim:output:0'lstm_382/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_382/lstm_cell_544/SigmoidSigmoid%lstm_382/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_382/lstm_cell_544/Sigmoid_1Sigmoid%lstm_382/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mulMul$lstm_382/lstm_cell_544/Sigmoid_1:y:0lstm_382/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_382/lstm_cell_544/ReluRelu%lstm_382/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mul_1Mul"lstm_382/lstm_cell_544/Sigmoid:y:0)lstm_382/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/add_1AddV2lstm_382/lstm_cell_544/mul:z:0 lstm_382/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_382/lstm_cell_544/Sigmoid_2Sigmoid%lstm_382/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_382/lstm_cell_544/Relu_1Relu lstm_382/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mul_2Mul$lstm_382/lstm_cell_544/Sigmoid_2:y:0+lstm_382/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_382/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_382/TensorArrayV2_1TensorListReserve/lstm_382/TensorArrayV2_1/element_shape:output:0!lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_382/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_382/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_382/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_382/whileWhile$lstm_382/while/loop_counter:output:0*lstm_382/while/maximum_iterations:output:0lstm_382/time:output:0!lstm_382/TensorArrayV2_1:handle:0lstm_382/zeros:output:0lstm_382/zeros_1:output:0!lstm_382/strided_slice_1:output:0@lstm_382/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_382_lstm_cell_544_matmul_readvariableop_resource7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource6lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_382_while_body_3299332*'
condR
lstm_382_while_cond_3299331*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_382/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_382/TensorArrayV2Stack/TensorListStackTensorListStacklstm_382/while:output:3Blstm_382/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_382/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_382/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_3StridedSlice4lstm_382/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_382/strided_slice_3/stack:output:0)lstm_382/strided_slice_3/stack_1:output:0)lstm_382/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_382/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_382/transpose_1	Transpose4lstm_382/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_382/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_382/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_383/ShapeShapelstm_382/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_383/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_383/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_383/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_sliceStridedSlicelstm_383/Shape:output:0%lstm_383/strided_slice/stack:output:0'lstm_383/strided_slice/stack_1:output:0'lstm_383/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_383/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_383/zeros/packedPacklstm_383/strided_slice:output:0 lstm_383/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_383/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_383/zerosFilllstm_383/zeros/packed:output:0lstm_383/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_383/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_383/zeros_1/packedPacklstm_383/strided_slice:output:0"lstm_383/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_383/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_383/zeros_1Fill lstm_383/zeros_1/packed:output:0lstm_383/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_383/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_383/transpose	Transposelstm_382/transpose_1:y:0 lstm_383/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_383/Shape_1Shapelstm_383/transpose:y:0*
T0*
_output_shapes
:h
lstm_383/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_383/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_1StridedSlicelstm_383/Shape_1:output:0'lstm_383/strided_slice_1/stack:output:0)lstm_383/strided_slice_1/stack_1:output:0)lstm_383/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_383/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_383/TensorArrayV2TensorListReserve-lstm_383/TensorArrayV2/element_shape:output:0!lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_383/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_383/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_383/transpose:y:0Glstm_383/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_383/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_383/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_2StridedSlicelstm_383/transpose:y:0'lstm_383/strided_slice_2/stack:output:0)lstm_383/strided_slice_2/stack_1:output:0)lstm_383/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_383/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp5lstm_383_lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_383/lstm_cell_545/MatMulMatMul!lstm_383/strided_slice_2:output:04lstm_383/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_383/lstm_cell_545/MatMul_1MatMullstm_383/zeros:output:06lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_383/lstm_cell_545/addAddV2'lstm_383/lstm_cell_545/MatMul:product:0)lstm_383/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp6lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_383/lstm_cell_545/BiasAddBiasAddlstm_383/lstm_cell_545/add:z:05lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_383/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_383/lstm_cell_545/splitSplit/lstm_383/lstm_cell_545/split/split_dim:output:0'lstm_383/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_383/lstm_cell_545/SigmoidSigmoid%lstm_383/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_383/lstm_cell_545/Sigmoid_1Sigmoid%lstm_383/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mulMul$lstm_383/lstm_cell_545/Sigmoid_1:y:0lstm_383/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_383/lstm_cell_545/ReluRelu%lstm_383/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mul_1Mul"lstm_383/lstm_cell_545/Sigmoid:y:0)lstm_383/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/add_1AddV2lstm_383/lstm_cell_545/mul:z:0 lstm_383/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_383/lstm_cell_545/Sigmoid_2Sigmoid%lstm_383/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_383/lstm_cell_545/Relu_1Relu lstm_383/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mul_2Mul$lstm_383/lstm_cell_545/Sigmoid_2:y:0+lstm_383/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_383/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_383/TensorArrayV2_1TensorListReserve/lstm_383/TensorArrayV2_1/element_shape:output:0!lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_383/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_383/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_383/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_383/whileWhile$lstm_383/while/loop_counter:output:0*lstm_383/while/maximum_iterations:output:0lstm_383/time:output:0!lstm_383/TensorArrayV2_1:handle:0lstm_383/zeros:output:0lstm_383/zeros_1:output:0!lstm_383/strided_slice_1:output:0@lstm_383/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_383_lstm_cell_545_matmul_readvariableop_resource7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource6lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_383_while_body_3299471*'
condR
lstm_383_while_cond_3299470*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_383/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_383/TensorArrayV2Stack/TensorListStackTensorListStacklstm_383/while:output:3Blstm_383/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_383/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_383/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_3StridedSlice4lstm_383/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_383/strided_slice_3/stack:output:0)lstm_383/strided_slice_3/stack_1:output:0)lstm_383/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_383/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_383/transpose_1	Transpose4lstm_383/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_383/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_383/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_127/MatMul/ReadVariableOpReadVariableOp(dense_127_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_127/MatMulMatMul!lstm_383/strided_slice_3:output:0'dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_127/BiasAdd/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_127/BiasAddBiasAdddense_127/MatMul:product:0(dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_127/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_127/BiasAdd/ReadVariableOp ^dense_127/MatMul/ReadVariableOp.^lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp-^lstm_381/lstm_cell_543/MatMul/ReadVariableOp/^lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp^lstm_381/while.^lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp-^lstm_382/lstm_cell_544/MatMul/ReadVariableOp/^lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp^lstm_382/while.^lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp-^lstm_383/lstm_cell_545/MatMul/ReadVariableOp/^lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp^lstm_383/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_127/BiasAdd/ReadVariableOp dense_127/BiasAdd/ReadVariableOp2B
dense_127/MatMul/ReadVariableOpdense_127/MatMul/ReadVariableOp2^
-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp2\
,lstm_381/lstm_cell_543/MatMul/ReadVariableOp,lstm_381/lstm_cell_543/MatMul/ReadVariableOp2`
.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp2 
lstm_381/whilelstm_381/while2^
-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp2\
,lstm_382/lstm_cell_544/MatMul/ReadVariableOp,lstm_382/lstm_cell_544/MatMul/ReadVariableOp2`
.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp2 
lstm_382/whilelstm_382/while2^
-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp2\
,lstm_383/lstm_cell_545/MatMul/ReadVariableOp,lstm_383/lstm_cell_545/MatMul/ReadVariableOp2`
.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp2 
lstm_383/whilelstm_383/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3300377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3297670

inputs'
lstm_cell_545_3297588:2('
lstm_cell_545_3297590:
(#
lstm_cell_545_3297592:(
identity��%lstm_cell_545/StatefulPartitionedCall�while;
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
%lstm_cell_545/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_545_3297588lstm_cell_545_3297590lstm_cell_545_3297592*
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297587n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_545_3297588lstm_cell_545_3297590lstm_cell_545_3297592*
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
while_body_3297601*
condR
while_cond_3297600*K
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
NoOpNoOp&^lstm_cell_545/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_545/StatefulPartitionedCall%lstm_cell_545/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297587

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
�J
�
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301077

inputs?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3300993*
condR
while_cond_3300992*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_3300234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_543_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_543_matmul_readvariableop_resource:	�G
4while_lstm_cell_543_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_543_biasadd_readvariableop_resource:	���*while/lstm_cell_543/BiasAdd/ReadVariableOp�)while/lstm_cell_543/MatMul/ReadVariableOp�+while/lstm_cell_543/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_543/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_543/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_543/addAddV2$while/lstm_cell_543/MatMul:product:0&while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_543/BiasAddBiasAddwhile/lstm_cell_543/add:z:02while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_543/splitSplit,while/lstm_cell_543/split/split_dim:output:0$while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_543/SigmoidSigmoid"while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_1Sigmoid"while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mulMul!while/lstm_cell_543/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_543/ReluRelu"while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_1Mulwhile/lstm_cell_543/Sigmoid:y:0&while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/add_1AddV2while/lstm_cell_543/mul:z:0while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_543/Sigmoid_2Sigmoid"while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_543/Relu_1Reluwhile/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_543/mul_2Mul!while/lstm_cell_543/Sigmoid_2:y:0(while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_543/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_543/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_543/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_543/BiasAdd/ReadVariableOp*^while/lstm_cell_543/MatMul/ReadVariableOp,^while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_543_biasadd_readvariableop_resource5while_lstm_cell_543_biasadd_readvariableop_resource_0"n
4while_lstm_cell_543_matmul_1_readvariableop_resource6while_lstm_cell_543_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_543_matmul_readvariableop_resource4while_lstm_cell_543_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_543/BiasAdd/ReadVariableOp*while/lstm_cell_543/BiasAdd/ReadVariableOp2V
)while/lstm_cell_543/MatMul/ReadVariableOp)while/lstm_cell_543/MatMul/ReadVariableOp2Z
+while/lstm_cell_543/MatMul_1/ReadVariableOp+while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298933

inputs#
lstm_381_3298906:	�#
lstm_381_3298908:	d�
lstm_381_3298910:	�#
lstm_382_3298913:	d�#
lstm_382_3298915:	2�
lstm_382_3298917:	�"
lstm_383_3298920:2("
lstm_383_3298922:
(
lstm_383_3298924:(#
dense_127_3298927:

dense_127_3298929:
identity��!dense_127/StatefulPartitionedCall� lstm_381/StatefulPartitionedCall� lstm_382/StatefulPartitionedCall� lstm_383/StatefulPartitionedCall�
 lstm_381/StatefulPartitionedCallStatefulPartitionedCallinputslstm_381_3298906lstm_381_3298908lstm_381_3298910*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298865�
 lstm_382/StatefulPartitionedCallStatefulPartitionedCall)lstm_381/StatefulPartitionedCall:output:0lstm_382_3298913lstm_382_3298915lstm_382_3298917*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298700�
 lstm_383/StatefulPartitionedCallStatefulPartitionedCall)lstm_382/StatefulPartitionedCall:output:0lstm_383_3298920lstm_383_3298922lstm_383_3298924*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298535�
!dense_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_383/StatefulPartitionedCall:output:0dense_127_3298927dense_127_3298929*
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
GPU 2J 8� *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337y
IdentityIdentity*dense_127/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_127/StatefulPartitionedCall!^lstm_381/StatefulPartitionedCall!^lstm_382/StatefulPartitionedCall!^lstm_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2D
 lstm_381/StatefulPartitionedCall lstm_381/StatefulPartitionedCall2D
 lstm_382/StatefulPartitionedCall lstm_382/StatefulPartitionedCall2D
 lstm_383/StatefulPartitionedCall lstm_383/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301921

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
�T
�
*sequential_127_lstm_383_while_body_3296730L
Hsequential_127_lstm_383_while_sequential_127_lstm_383_while_loop_counterR
Nsequential_127_lstm_383_while_sequential_127_lstm_383_while_maximum_iterations-
)sequential_127_lstm_383_while_placeholder/
+sequential_127_lstm_383_while_placeholder_1/
+sequential_127_lstm_383_while_placeholder_2/
+sequential_127_lstm_383_while_placeholder_3K
Gsequential_127_lstm_383_while_sequential_127_lstm_383_strided_slice_1_0�
�sequential_127_lstm_383_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_383_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_127_lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0:2(`
Nsequential_127_lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0:
([
Msequential_127_lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0:(*
&sequential_127_lstm_383_while_identity,
(sequential_127_lstm_383_while_identity_1,
(sequential_127_lstm_383_while_identity_2,
(sequential_127_lstm_383_while_identity_3,
(sequential_127_lstm_383_while_identity_4,
(sequential_127_lstm_383_while_identity_5I
Esequential_127_lstm_383_while_sequential_127_lstm_383_strided_slice_1�
�sequential_127_lstm_383_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_383_tensorarrayunstack_tensorlistfromtensor\
Jsequential_127_lstm_383_while_lstm_cell_545_matmul_readvariableop_resource:2(^
Lsequential_127_lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource:
(Y
Ksequential_127_lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource:(��Bsequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp�Asequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp�Csequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp�
Osequential_127/lstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_127/lstm_383/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_127_lstm_383_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_383_tensorarrayunstack_tensorlistfromtensor_0)sequential_127_lstm_383_while_placeholderXsequential_127/lstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOpLsequential_127_lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_127/lstm_383/while/lstm_cell_545/MatMulMatMulHsequential_127/lstm_383/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOpNsequential_127_lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_127/lstm_383/while/lstm_cell_545/MatMul_1MatMul+sequential_127_lstm_383_while_placeholder_2Ksequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_127/lstm_383/while/lstm_cell_545/addAddV2<sequential_127/lstm_383/while/lstm_cell_545/MatMul:product:0>sequential_127/lstm_383/while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOpMsequential_127_lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_127/lstm_383/while/lstm_cell_545/BiasAddBiasAdd3sequential_127/lstm_383/while/lstm_cell_545/add:z:0Jsequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_127/lstm_383/while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_127/lstm_383/while/lstm_cell_545/splitSplitDsequential_127/lstm_383/while/lstm_cell_545/split/split_dim:output:0<sequential_127/lstm_383/while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_127/lstm_383/while/lstm_cell_545/SigmoidSigmoid:sequential_127/lstm_383/while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_127/lstm_383/while/lstm_cell_545/Sigmoid_1Sigmoid:sequential_127/lstm_383/while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_127/lstm_383/while/lstm_cell_545/mulMul9sequential_127/lstm_383/while/lstm_cell_545/Sigmoid_1:y:0+sequential_127_lstm_383_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_127/lstm_383/while/lstm_cell_545/ReluRelu:sequential_127/lstm_383/while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_127/lstm_383/while/lstm_cell_545/mul_1Mul7sequential_127/lstm_383/while/lstm_cell_545/Sigmoid:y:0>sequential_127/lstm_383/while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_127/lstm_383/while/lstm_cell_545/add_1AddV23sequential_127/lstm_383/while/lstm_cell_545/mul:z:05sequential_127/lstm_383/while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_127/lstm_383/while/lstm_cell_545/Sigmoid_2Sigmoid:sequential_127/lstm_383/while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_127/lstm_383/while/lstm_cell_545/Relu_1Relu5sequential_127/lstm_383/while/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_127/lstm_383/while/lstm_cell_545/mul_2Mul9sequential_127/lstm_383/while/lstm_cell_545/Sigmoid_2:y:0@sequential_127/lstm_383/while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_127/lstm_383/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_127_lstm_383_while_placeholder_1)sequential_127_lstm_383_while_placeholder5sequential_127/lstm_383/while/lstm_cell_545/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_127/lstm_383/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_127/lstm_383/while/addAddV2)sequential_127_lstm_383_while_placeholder,sequential_127/lstm_383/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_127/lstm_383/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_127/lstm_383/while/add_1AddV2Hsequential_127_lstm_383_while_sequential_127_lstm_383_while_loop_counter.sequential_127/lstm_383/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_127/lstm_383/while/IdentityIdentity'sequential_127/lstm_383/while/add_1:z:0#^sequential_127/lstm_383/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_383/while/Identity_1IdentityNsequential_127_lstm_383_while_sequential_127_lstm_383_while_maximum_iterations#^sequential_127/lstm_383/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_383/while/Identity_2Identity%sequential_127/lstm_383/while/add:z:0#^sequential_127/lstm_383/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_383/while/Identity_3IdentityRsequential_127/lstm_383/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_127/lstm_383/while/NoOp*
T0*
_output_shapes
: �
(sequential_127/lstm_383/while/Identity_4Identity5sequential_127/lstm_383/while/lstm_cell_545/mul_2:z:0#^sequential_127/lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_127/lstm_383/while/Identity_5Identity5sequential_127/lstm_383/while/lstm_cell_545/add_1:z:0#^sequential_127/lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_127/lstm_383/while/NoOpNoOpC^sequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOpB^sequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOpD^sequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_127_lstm_383_while_identity/sequential_127/lstm_383/while/Identity:output:0"]
(sequential_127_lstm_383_while_identity_11sequential_127/lstm_383/while/Identity_1:output:0"]
(sequential_127_lstm_383_while_identity_21sequential_127/lstm_383/while/Identity_2:output:0"]
(sequential_127_lstm_383_while_identity_31sequential_127/lstm_383/while/Identity_3:output:0"]
(sequential_127_lstm_383_while_identity_41sequential_127/lstm_383/while/Identity_4:output:0"]
(sequential_127_lstm_383_while_identity_51sequential_127/lstm_383/while/Identity_5:output:0"�
Ksequential_127_lstm_383_while_lstm_cell_545_biasadd_readvariableop_resourceMsequential_127_lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0"�
Lsequential_127_lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resourceNsequential_127_lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0"�
Jsequential_127_lstm_383_while_lstm_cell_545_matmul_readvariableop_resourceLsequential_127_lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0"�
Esequential_127_lstm_383_while_sequential_127_lstm_383_strided_slice_1Gsequential_127_lstm_383_while_sequential_127_lstm_383_strided_slice_1_0"�
�sequential_127_lstm_383_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_383_tensorarrayunstack_tensorlistfromtensor�sequential_127_lstm_383_while_tensorarrayv2read_tensorlistgetitem_sequential_127_lstm_383_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOpBsequential_127/lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp2�
Asequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOpAsequential_127/lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp2�
Csequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOpCsequential_127/lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3300233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300233___redundant_placeholder05
1while_while_cond_3300233___redundant_placeholder15
1while_while_cond_3300233___redundant_placeholder25
1while_while_cond_3300233___redundant_placeholder3
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
while_cond_3298084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3298084___redundant_placeholder05
1while_while_cond_3298084___redundant_placeholder15
1while_while_cond_3298084___redundant_placeholder25
1while_while_cond_3298084___redundant_placeholder3
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301407
inputs_0>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3301323*
condR
while_cond_3301322*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_3297091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297091___redundant_placeholder05
1while_while_cond_3297091___redundant_placeholder15
1while_while_cond_3297091___redundant_placeholder25
1while_while_cond_3297091___redundant_placeholder3
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

�
lstm_381_while_cond_3299192.
*lstm_381_while_lstm_381_while_loop_counter4
0lstm_381_while_lstm_381_while_maximum_iterations
lstm_381_while_placeholder 
lstm_381_while_placeholder_1 
lstm_381_while_placeholder_2 
lstm_381_while_placeholder_30
,lstm_381_while_less_lstm_381_strided_slice_1G
Clstm_381_while_lstm_381_while_cond_3299192___redundant_placeholder0G
Clstm_381_while_lstm_381_while_cond_3299192___redundant_placeholder1G
Clstm_381_while_lstm_381_while_cond_3299192___redundant_placeholder2G
Clstm_381_while_lstm_381_while_cond_3299192___redundant_placeholder3
lstm_381_while_identity
�
lstm_381/while/LessLesslstm_381_while_placeholder,lstm_381_while_less_lstm_381_strided_slice_1*
T0*
_output_shapes
: ]
lstm_381/while/IdentityIdentitylstm_381/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_381_while_identity lstm_381/while/Identity:output:0*(
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301836

inputs>
,lstm_cell_545_matmul_readvariableop_resource:2(@
.lstm_cell_545_matmul_1_readvariableop_resource:
(;
-lstm_cell_545_biasadd_readvariableop_resource:(
identity��$lstm_cell_545/BiasAdd/ReadVariableOp�#lstm_cell_545/MatMul/ReadVariableOp�%lstm_cell_545/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_545/MatMul/ReadVariableOpReadVariableOp,lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_545/MatMulMatMulstrided_slice_2:output:0+lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_545/MatMul_1MatMulzeros:output:0-lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_545/addAddV2lstm_cell_545/MatMul:product:0 lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_545/BiasAddBiasAddlstm_cell_545/add:z:0,lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_545/splitSplit&lstm_cell_545/split/split_dim:output:0lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_545/SigmoidSigmoidlstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_1Sigmoidlstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_545/mulMullstm_cell_545/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_545/ReluRelulstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_1Mullstm_cell_545/Sigmoid:y:0 lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_545/add_1AddV2lstm_cell_545/mul:z:0lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_545/Sigmoid_2Sigmoidlstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_545/Relu_1Relulstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_545/mul_2Mullstm_cell_545/Sigmoid_2:y:0"lstm_cell_545/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_545_matmul_readvariableop_resource.lstm_cell_545_matmul_1_readvariableop_resource-lstm_cell_545_biasadd_readvariableop_resource*
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
while_body_3301752*
condR
while_cond_3301751*K
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
NoOpNoOp%^lstm_cell_545/BiasAdd/ReadVariableOp$^lstm_cell_545/MatMul/ReadVariableOp&^lstm_cell_545/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_545/BiasAdd/ReadVariableOp$lstm_cell_545/BiasAdd/ReadVariableOp2J
#lstm_cell_545/MatMul/ReadVariableOp#lstm_cell_545/MatMul/ReadVariableOp2N
%lstm_cell_545/MatMul_1/ReadVariableOp%lstm_cell_545/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_383_layer_call_fn_3301242
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3297861o
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
while_cond_3297600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297600___redundant_placeholder05
1while_while_cond_3297600___redundant_placeholder15
1while_while_cond_3297600___redundant_placeholder25
1while_while_cond_3297600___redundant_placeholder3
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
�
/__inference_lstm_cell_545_layer_call_fn_3302085

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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297733o
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
��
�
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299988

inputsH
5lstm_381_lstm_cell_543_matmul_readvariableop_resource:	�J
7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource:	d�E
6lstm_381_lstm_cell_543_biasadd_readvariableop_resource:	�H
5lstm_382_lstm_cell_544_matmul_readvariableop_resource:	d�J
7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource:	2�E
6lstm_382_lstm_cell_544_biasadd_readvariableop_resource:	�G
5lstm_383_lstm_cell_545_matmul_readvariableop_resource:2(I
7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource:
(D
6lstm_383_lstm_cell_545_biasadd_readvariableop_resource:(:
(dense_127_matmul_readvariableop_resource:
7
)dense_127_biasadd_readvariableop_resource:
identity�� dense_127/BiasAdd/ReadVariableOp�dense_127/MatMul/ReadVariableOp�-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp�,lstm_381/lstm_cell_543/MatMul/ReadVariableOp�.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp�lstm_381/while�-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp�,lstm_382/lstm_cell_544/MatMul/ReadVariableOp�.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp�lstm_382/while�-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp�,lstm_383/lstm_cell_545/MatMul/ReadVariableOp�.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp�lstm_383/whileD
lstm_381/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_381/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_381/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_381/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_sliceStridedSlicelstm_381/Shape:output:0%lstm_381/strided_slice/stack:output:0'lstm_381/strided_slice/stack_1:output:0'lstm_381/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_381/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_381/zeros/packedPacklstm_381/strided_slice:output:0 lstm_381/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_381/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_381/zerosFilllstm_381/zeros/packed:output:0lstm_381/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_381/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_381/zeros_1/packedPacklstm_381/strided_slice:output:0"lstm_381/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_381/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_381/zeros_1Fill lstm_381/zeros_1/packed:output:0lstm_381/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_381/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_381/transpose	Transposeinputs lstm_381/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_381/Shape_1Shapelstm_381/transpose:y:0*
T0*
_output_shapes
:h
lstm_381/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_381/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_1StridedSlicelstm_381/Shape_1:output:0'lstm_381/strided_slice_1/stack:output:0)lstm_381/strided_slice_1/stack_1:output:0)lstm_381/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_381/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_381/TensorArrayV2TensorListReserve-lstm_381/TensorArrayV2/element_shape:output:0!lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_381/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_381/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_381/transpose:y:0Glstm_381/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_381/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_381/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_2StridedSlicelstm_381/transpose:y:0'lstm_381/strided_slice_2/stack:output:0)lstm_381/strided_slice_2/stack_1:output:0)lstm_381/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_381/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp5lstm_381_lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_381/lstm_cell_543/MatMulMatMul!lstm_381/strided_slice_2:output:04lstm_381/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_381/lstm_cell_543/MatMul_1MatMullstm_381/zeros:output:06lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_381/lstm_cell_543/addAddV2'lstm_381/lstm_cell_543/MatMul:product:0)lstm_381/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp6lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_381/lstm_cell_543/BiasAddBiasAddlstm_381/lstm_cell_543/add:z:05lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_381/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_381/lstm_cell_543/splitSplit/lstm_381/lstm_cell_543/split/split_dim:output:0'lstm_381/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_381/lstm_cell_543/SigmoidSigmoid%lstm_381/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_381/lstm_cell_543/Sigmoid_1Sigmoid%lstm_381/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mulMul$lstm_381/lstm_cell_543/Sigmoid_1:y:0lstm_381/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_381/lstm_cell_543/ReluRelu%lstm_381/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mul_1Mul"lstm_381/lstm_cell_543/Sigmoid:y:0)lstm_381/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/add_1AddV2lstm_381/lstm_cell_543/mul:z:0 lstm_381/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_381/lstm_cell_543/Sigmoid_2Sigmoid%lstm_381/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_381/lstm_cell_543/Relu_1Relu lstm_381/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_381/lstm_cell_543/mul_2Mul$lstm_381/lstm_cell_543/Sigmoid_2:y:0+lstm_381/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_381/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_381/TensorArrayV2_1TensorListReserve/lstm_381/TensorArrayV2_1/element_shape:output:0!lstm_381/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_381/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_381/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_381/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_381/whileWhile$lstm_381/while/loop_counter:output:0*lstm_381/while/maximum_iterations:output:0lstm_381/time:output:0!lstm_381/TensorArrayV2_1:handle:0lstm_381/zeros:output:0lstm_381/zeros_1:output:0!lstm_381/strided_slice_1:output:0@lstm_381/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_381_lstm_cell_543_matmul_readvariableop_resource7lstm_381_lstm_cell_543_matmul_1_readvariableop_resource6lstm_381_lstm_cell_543_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_381_while_body_3299620*'
condR
lstm_381_while_cond_3299619*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_381/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_381/TensorArrayV2Stack/TensorListStackTensorListStacklstm_381/while:output:3Blstm_381/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_381/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_381/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_381/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_381/strided_slice_3StridedSlice4lstm_381/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_381/strided_slice_3/stack:output:0)lstm_381/strided_slice_3/stack_1:output:0)lstm_381/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_381/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_381/transpose_1	Transpose4lstm_381/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_381/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_381/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_382/ShapeShapelstm_381/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_382/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_382/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_382/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_sliceStridedSlicelstm_382/Shape:output:0%lstm_382/strided_slice/stack:output:0'lstm_382/strided_slice/stack_1:output:0'lstm_382/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_382/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_382/zeros/packedPacklstm_382/strided_slice:output:0 lstm_382/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_382/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_382/zerosFilllstm_382/zeros/packed:output:0lstm_382/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_382/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_382/zeros_1/packedPacklstm_382/strided_slice:output:0"lstm_382/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_382/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_382/zeros_1Fill lstm_382/zeros_1/packed:output:0lstm_382/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_382/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_382/transpose	Transposelstm_381/transpose_1:y:0 lstm_382/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_382/Shape_1Shapelstm_382/transpose:y:0*
T0*
_output_shapes
:h
lstm_382/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_382/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_1StridedSlicelstm_382/Shape_1:output:0'lstm_382/strided_slice_1/stack:output:0)lstm_382/strided_slice_1/stack_1:output:0)lstm_382/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_382/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_382/TensorArrayV2TensorListReserve-lstm_382/TensorArrayV2/element_shape:output:0!lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_382/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_382/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_382/transpose:y:0Glstm_382/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_382/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_382/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_2StridedSlicelstm_382/transpose:y:0'lstm_382/strided_slice_2/stack:output:0)lstm_382/strided_slice_2/stack_1:output:0)lstm_382/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_382/lstm_cell_544/MatMul/ReadVariableOpReadVariableOp5lstm_382_lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_382/lstm_cell_544/MatMulMatMul!lstm_382/strided_slice_2:output:04lstm_382/lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_382/lstm_cell_544/MatMul_1MatMullstm_382/zeros:output:06lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_382/lstm_cell_544/addAddV2'lstm_382/lstm_cell_544/MatMul:product:0)lstm_382/lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp6lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_382/lstm_cell_544/BiasAddBiasAddlstm_382/lstm_cell_544/add:z:05lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_382/lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_382/lstm_cell_544/splitSplit/lstm_382/lstm_cell_544/split/split_dim:output:0'lstm_382/lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_382/lstm_cell_544/SigmoidSigmoid%lstm_382/lstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_382/lstm_cell_544/Sigmoid_1Sigmoid%lstm_382/lstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mulMul$lstm_382/lstm_cell_544/Sigmoid_1:y:0lstm_382/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_382/lstm_cell_544/ReluRelu%lstm_382/lstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mul_1Mul"lstm_382/lstm_cell_544/Sigmoid:y:0)lstm_382/lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/add_1AddV2lstm_382/lstm_cell_544/mul:z:0 lstm_382/lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_382/lstm_cell_544/Sigmoid_2Sigmoid%lstm_382/lstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_382/lstm_cell_544/Relu_1Relu lstm_382/lstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_382/lstm_cell_544/mul_2Mul$lstm_382/lstm_cell_544/Sigmoid_2:y:0+lstm_382/lstm_cell_544/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_382/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_382/TensorArrayV2_1TensorListReserve/lstm_382/TensorArrayV2_1/element_shape:output:0!lstm_382/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_382/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_382/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_382/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_382/whileWhile$lstm_382/while/loop_counter:output:0*lstm_382/while/maximum_iterations:output:0lstm_382/time:output:0!lstm_382/TensorArrayV2_1:handle:0lstm_382/zeros:output:0lstm_382/zeros_1:output:0!lstm_382/strided_slice_1:output:0@lstm_382/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_382_lstm_cell_544_matmul_readvariableop_resource7lstm_382_lstm_cell_544_matmul_1_readvariableop_resource6lstm_382_lstm_cell_544_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_382_while_body_3299759*'
condR
lstm_382_while_cond_3299758*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_382/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_382/TensorArrayV2Stack/TensorListStackTensorListStacklstm_382/while:output:3Blstm_382/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_382/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_382/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_382/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_382/strided_slice_3StridedSlice4lstm_382/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_382/strided_slice_3/stack:output:0)lstm_382/strided_slice_3/stack_1:output:0)lstm_382/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_382/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_382/transpose_1	Transpose4lstm_382/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_382/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_382/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_383/ShapeShapelstm_382/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_383/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_383/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_383/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_sliceStridedSlicelstm_383/Shape:output:0%lstm_383/strided_slice/stack:output:0'lstm_383/strided_slice/stack_1:output:0'lstm_383/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_383/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_383/zeros/packedPacklstm_383/strided_slice:output:0 lstm_383/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_383/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_383/zerosFilllstm_383/zeros/packed:output:0lstm_383/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_383/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_383/zeros_1/packedPacklstm_383/strided_slice:output:0"lstm_383/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_383/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_383/zeros_1Fill lstm_383/zeros_1/packed:output:0lstm_383/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_383/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_383/transpose	Transposelstm_382/transpose_1:y:0 lstm_383/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_383/Shape_1Shapelstm_383/transpose:y:0*
T0*
_output_shapes
:h
lstm_383/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_383/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_1StridedSlicelstm_383/Shape_1:output:0'lstm_383/strided_slice_1/stack:output:0)lstm_383/strided_slice_1/stack_1:output:0)lstm_383/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_383/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_383/TensorArrayV2TensorListReserve-lstm_383/TensorArrayV2/element_shape:output:0!lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_383/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_383/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_383/transpose:y:0Glstm_383/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_383/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_383/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_2StridedSlicelstm_383/transpose:y:0'lstm_383/strided_slice_2/stack:output:0)lstm_383/strided_slice_2/stack_1:output:0)lstm_383/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_383/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp5lstm_383_lstm_cell_545_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_383/lstm_cell_545/MatMulMatMul!lstm_383/strided_slice_2:output:04lstm_383/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_383/lstm_cell_545/MatMul_1MatMullstm_383/zeros:output:06lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_383/lstm_cell_545/addAddV2'lstm_383/lstm_cell_545/MatMul:product:0)lstm_383/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp6lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_383/lstm_cell_545/BiasAddBiasAddlstm_383/lstm_cell_545/add:z:05lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_383/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_383/lstm_cell_545/splitSplit/lstm_383/lstm_cell_545/split/split_dim:output:0'lstm_383/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_383/lstm_cell_545/SigmoidSigmoid%lstm_383/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_383/lstm_cell_545/Sigmoid_1Sigmoid%lstm_383/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mulMul$lstm_383/lstm_cell_545/Sigmoid_1:y:0lstm_383/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_383/lstm_cell_545/ReluRelu%lstm_383/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mul_1Mul"lstm_383/lstm_cell_545/Sigmoid:y:0)lstm_383/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/add_1AddV2lstm_383/lstm_cell_545/mul:z:0 lstm_383/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_383/lstm_cell_545/Sigmoid_2Sigmoid%lstm_383/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_383/lstm_cell_545/Relu_1Relu lstm_383/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_383/lstm_cell_545/mul_2Mul$lstm_383/lstm_cell_545/Sigmoid_2:y:0+lstm_383/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_383/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_383/TensorArrayV2_1TensorListReserve/lstm_383/TensorArrayV2_1/element_shape:output:0!lstm_383/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_383/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_383/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_383/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_383/whileWhile$lstm_383/while/loop_counter:output:0*lstm_383/while/maximum_iterations:output:0lstm_383/time:output:0!lstm_383/TensorArrayV2_1:handle:0lstm_383/zeros:output:0lstm_383/zeros_1:output:0!lstm_383/strided_slice_1:output:0@lstm_383/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_383_lstm_cell_545_matmul_readvariableop_resource7lstm_383_lstm_cell_545_matmul_1_readvariableop_resource6lstm_383_lstm_cell_545_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_383_while_body_3299898*'
condR
lstm_383_while_cond_3299897*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_383/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_383/TensorArrayV2Stack/TensorListStackTensorListStacklstm_383/while:output:3Blstm_383/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_383/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_383/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_383/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_383/strided_slice_3StridedSlice4lstm_383/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_383/strided_slice_3/stack:output:0)lstm_383/strided_slice_3/stack_1:output:0)lstm_383/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_383/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_383/transpose_1	Transpose4lstm_383/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_383/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_383/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_127/MatMul/ReadVariableOpReadVariableOp(dense_127_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_127/MatMulMatMul!lstm_383/strided_slice_3:output:0'dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_127/BiasAdd/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_127/BiasAddBiasAdddense_127/MatMul:product:0(dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_127/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_127/BiasAdd/ReadVariableOp ^dense_127/MatMul/ReadVariableOp.^lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp-^lstm_381/lstm_cell_543/MatMul/ReadVariableOp/^lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp^lstm_381/while.^lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp-^lstm_382/lstm_cell_544/MatMul/ReadVariableOp/^lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp^lstm_382/while.^lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp-^lstm_383/lstm_cell_545/MatMul/ReadVariableOp/^lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp^lstm_383/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_127/BiasAdd/ReadVariableOp dense_127/BiasAdd/ReadVariableOp2B
dense_127/MatMul/ReadVariableOpdense_127/MatMul/ReadVariableOp2^
-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp-lstm_381/lstm_cell_543/BiasAdd/ReadVariableOp2\
,lstm_381/lstm_cell_543/MatMul/ReadVariableOp,lstm_381/lstm_cell_543/MatMul/ReadVariableOp2`
.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp.lstm_381/lstm_cell_543/MatMul_1/ReadVariableOp2 
lstm_381/whilelstm_381/while2^
-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp-lstm_382/lstm_cell_544/BiasAdd/ReadVariableOp2\
,lstm_382/lstm_cell_544/MatMul/ReadVariableOp,lstm_382/lstm_cell_544/MatMul/ReadVariableOp2`
.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp.lstm_382/lstm_cell_544/MatMul_1/ReadVariableOp2 
lstm_382/whilelstm_382/while2^
-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp-lstm_383/lstm_cell_545/BiasAdd/ReadVariableOp2\
,lstm_383/lstm_cell_545/MatMul/ReadVariableOp,lstm_383/lstm_cell_545/MatMul/ReadVariableOp2`
.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp.lstm_383/lstm_cell_545/MatMul_1/ReadVariableOp2 
lstm_383/whilelstm_383/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�

lstm_383_while_body_3299898.
*lstm_383_while_lstm_383_while_loop_counter4
0lstm_383_while_lstm_383_while_maximum_iterations
lstm_383_while_placeholder 
lstm_383_while_placeholder_1 
lstm_383_while_placeholder_2 
lstm_383_while_placeholder_3-
)lstm_383_while_lstm_383_strided_slice_1_0i
elstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0:2(Q
?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(L
>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0:(
lstm_383_while_identity
lstm_383_while_identity_1
lstm_383_while_identity_2
lstm_383_while_identity_3
lstm_383_while_identity_4
lstm_383_while_identity_5+
'lstm_383_while_lstm_383_strided_slice_1g
clstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensorM
;lstm_383_while_lstm_cell_545_matmul_readvariableop_resource:2(O
=lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource:
(J
<lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource:(��3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp�2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp�4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp�
@lstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_383/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0lstm_383_while_placeholderIlstm_383/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_383/while/lstm_cell_545/MatMulMatMul9lstm_383/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_383/while/lstm_cell_545/MatMul_1MatMullstm_383_while_placeholder_2<lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_383/while/lstm_cell_545/addAddV2-lstm_383/while/lstm_cell_545/MatMul:product:0/lstm_383/while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_383/while/lstm_cell_545/BiasAddBiasAdd$lstm_383/while/lstm_cell_545/add:z:0;lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_383/while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_383/while/lstm_cell_545/splitSplit5lstm_383/while/lstm_cell_545/split/split_dim:output:0-lstm_383/while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_383/while/lstm_cell_545/SigmoidSigmoid+lstm_383/while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_383/while/lstm_cell_545/Sigmoid_1Sigmoid+lstm_383/while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_383/while/lstm_cell_545/mulMul*lstm_383/while/lstm_cell_545/Sigmoid_1:y:0lstm_383_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_383/while/lstm_cell_545/ReluRelu+lstm_383/while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/mul_1Mul(lstm_383/while/lstm_cell_545/Sigmoid:y:0/lstm_383/while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/add_1AddV2$lstm_383/while/lstm_cell_545/mul:z:0&lstm_383/while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_383/while/lstm_cell_545/Sigmoid_2Sigmoid+lstm_383/while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_383/while/lstm_cell_545/Relu_1Relu&lstm_383/while/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_383/while/lstm_cell_545/mul_2Mul*lstm_383/while/lstm_cell_545/Sigmoid_2:y:01lstm_383/while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_383/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_383_while_placeholder_1lstm_383_while_placeholder&lstm_383/while/lstm_cell_545/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_383/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_383/while/addAddV2lstm_383_while_placeholderlstm_383/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_383/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_383/while/add_1AddV2*lstm_383_while_lstm_383_while_loop_counterlstm_383/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_383/while/IdentityIdentitylstm_383/while/add_1:z:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_1Identity0lstm_383_while_lstm_383_while_maximum_iterations^lstm_383/while/NoOp*
T0*
_output_shapes
: t
lstm_383/while/Identity_2Identitylstm_383/while/add:z:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_3IdentityClstm_383/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_383/while/NoOp*
T0*
_output_shapes
: �
lstm_383/while/Identity_4Identity&lstm_383/while/lstm_cell_545/mul_2:z:0^lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_383/while/Identity_5Identity&lstm_383/while/lstm_cell_545/add_1:z:0^lstm_383/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_383/while/NoOpNoOp4^lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp3^lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp5^lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_383_while_identity lstm_383/while/Identity:output:0"?
lstm_383_while_identity_1"lstm_383/while/Identity_1:output:0"?
lstm_383_while_identity_2"lstm_383/while/Identity_2:output:0"?
lstm_383_while_identity_3"lstm_383/while/Identity_3:output:0"?
lstm_383_while_identity_4"lstm_383/while/Identity_4:output:0"?
lstm_383_while_identity_5"lstm_383/while/Identity_5:output:0"T
'lstm_383_while_lstm_383_strided_slice_1)lstm_383_while_lstm_383_strided_slice_1_0"~
<lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource>lstm_383_while_lstm_cell_545_biasadd_readvariableop_resource_0"�
=lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource?lstm_383_while_lstm_cell_545_matmul_1_readvariableop_resource_0"|
;lstm_383_while_lstm_cell_545_matmul_readvariableop_resource=lstm_383_while_lstm_cell_545_matmul_readvariableop_resource_0"�
clstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensorelstm_383_while_tensorarrayv2read_tensorlistgetitem_lstm_383_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp3lstm_383/while/lstm_cell_545/BiasAdd/ReadVariableOp2h
2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp2lstm_383/while/lstm_cell_545/MatMul/ReadVariableOp2l
4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp4lstm_383/while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300175
inputs_0?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3300091*
condR
while_cond_3300090*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�K
�
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300318
inputs_0?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3300234*
condR
while_cond_3300233*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298700

inputs?
,lstm_cell_544_matmul_readvariableop_resource:	d�A
.lstm_cell_544_matmul_1_readvariableop_resource:	2�<
-lstm_cell_544_biasadd_readvariableop_resource:	�
identity��$lstm_cell_544/BiasAdd/ReadVariableOp�#lstm_cell_544/MatMul/ReadVariableOp�%lstm_cell_544/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_544/MatMul/ReadVariableOpReadVariableOp,lstm_cell_544_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_544/MatMulMatMulstrided_slice_2:output:0+lstm_cell_544/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_544/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_544_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_544/MatMul_1MatMulzeros:output:0-lstm_cell_544/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_544/addAddV2lstm_cell_544/MatMul:product:0 lstm_cell_544/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_544/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_544_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_544/BiasAddBiasAddlstm_cell_544/add:z:0,lstm_cell_544/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_544/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_544/splitSplit&lstm_cell_544/split/split_dim:output:0lstm_cell_544/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_544/SigmoidSigmoidlstm_cell_544/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_1Sigmoidlstm_cell_544/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_544/mulMullstm_cell_544/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_544/ReluRelulstm_cell_544/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_1Mullstm_cell_544/Sigmoid:y:0 lstm_cell_544/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_544/add_1AddV2lstm_cell_544/mul:z:0lstm_cell_544/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_544/Sigmoid_2Sigmoidlstm_cell_544/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_544/Relu_1Relulstm_cell_544/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_544/mul_2Mullstm_cell_544/Sigmoid_2:y:0"lstm_cell_544/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_544_matmul_readvariableop_resource.lstm_cell_544_matmul_1_readvariableop_resource-lstm_cell_544_biasadd_readvariableop_resource*
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
while_body_3298616*
condR
while_cond_3298615*K
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
NoOpNoOp%^lstm_cell_544/BiasAdd/ReadVariableOp$^lstm_cell_544/MatMul/ReadVariableOp&^lstm_cell_544/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_544/BiasAdd/ReadVariableOp$lstm_cell_544/BiasAdd/ReadVariableOp2J
#lstm_cell_544/MatMul/ReadVariableOp#lstm_cell_544/MatMul/ReadVariableOp2N
%lstm_cell_544/MatMul_1/ReadVariableOp%lstm_cell_544/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_3300992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300992___redundant_placeholder05
1while_while_cond_3300992___redundant_placeholder15
1while_while_cond_3300992___redundant_placeholder25
1while_while_cond_3300992___redundant_placeholder3
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
0__inference_sequential_127_layer_call_fn_3298985
lstm_381_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_381_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *T
fORM
K__inference_sequential_127_layer_call_and_return_conditional_losses_3298933o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�
�
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299015
lstm_381_input#
lstm_381_3298988:	�#
lstm_381_3298990:	d�
lstm_381_3298992:	�#
lstm_382_3298995:	d�#
lstm_382_3298997:	2�
lstm_382_3298999:	�"
lstm_383_3299002:2("
lstm_383_3299004:
(
lstm_383_3299006:(#
dense_127_3299009:

dense_127_3299011:
identity��!dense_127/StatefulPartitionedCall� lstm_381/StatefulPartitionedCall� lstm_382/StatefulPartitionedCall� lstm_383/StatefulPartitionedCall�
 lstm_381/StatefulPartitionedCallStatefulPartitionedCalllstm_381_inputlstm_381_3298988lstm_381_3298990lstm_381_3298992*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298019�
 lstm_382/StatefulPartitionedCallStatefulPartitionedCall)lstm_381/StatefulPartitionedCall:output:0lstm_382_3298995lstm_382_3298997lstm_382_3298999*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3298169�
 lstm_383/StatefulPartitionedCallStatefulPartitionedCall)lstm_382/StatefulPartitionedCall:output:0lstm_383_3299002lstm_383_3299004lstm_383_3299006*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_383_layer_call_and_return_conditional_losses_3298319�
!dense_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_383/StatefulPartitionedCall:output:0dense_127_3299009dense_127_3299011*
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
GPU 2J 8� *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_3298337y
IdentityIdentity*dense_127/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_127/StatefulPartitionedCall!^lstm_381/StatefulPartitionedCall!^lstm_382/StatefulPartitionedCall!^lstm_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2D
 lstm_381/StatefulPartitionedCall lstm_381/StatefulPartitionedCall2D
 lstm_382/StatefulPartitionedCall lstm_382/StatefulPartitionedCall2D
 lstm_383/StatefulPartitionedCall lstm_383/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_381_input
�
�
while_cond_3301322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3301322___redundant_placeholder05
1while_while_cond_3301322___redundant_placeholder15
1while_while_cond_3301322___redundant_placeholder25
1while_while_cond_3301322___redundant_placeholder3
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
while_cond_3298450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3298450___redundant_placeholder05
1while_while_cond_3298450___redundant_placeholder15
1while_while_cond_3298450___redundant_placeholder25
1while_while_cond_3298450___redundant_placeholder3
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
*__inference_lstm_382_layer_call_fn_3300615
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
GPU 2J 8� *N
fIRG
E__inference_lstm_382_layer_call_and_return_conditional_losses_3297320|
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3296970

inputs(
lstm_cell_543_3296888:	�(
lstm_cell_543_3296890:	d�$
lstm_cell_543_3296892:	�
identity��%lstm_cell_543/StatefulPartitionedCall�while;
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
%lstm_cell_543/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_543_3296888lstm_cell_543_3296890lstm_cell_543_3296892*
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3296887n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_543_3296888lstm_cell_543_3296890lstm_cell_543_3296892*
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
while_body_3296901*
condR
while_cond_3296900*K
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
NoOpNoOp&^lstm_cell_543/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_543/StatefulPartitionedCall%lstm_cell_543/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298865

inputs?
,lstm_cell_543_matmul_readvariableop_resource:	�A
.lstm_cell_543_matmul_1_readvariableop_resource:	d�<
-lstm_cell_543_biasadd_readvariableop_resource:	�
identity��$lstm_cell_543/BiasAdd/ReadVariableOp�#lstm_cell_543/MatMul/ReadVariableOp�%lstm_cell_543/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_543/MatMul/ReadVariableOpReadVariableOp,lstm_cell_543_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_543/MatMulMatMulstrided_slice_2:output:0+lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_543_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_543/MatMul_1MatMulzeros:output:0-lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_543/addAddV2lstm_cell_543/MatMul:product:0 lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_543_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_543/BiasAddBiasAddlstm_cell_543/add:z:0,lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_543/splitSplit&lstm_cell_543/split/split_dim:output:0lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_543/SigmoidSigmoidlstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_1Sigmoidlstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_543/mulMullstm_cell_543/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_543/ReluRelulstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_1Mullstm_cell_543/Sigmoid:y:0 lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_543/add_1AddV2lstm_cell_543/mul:z:0lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_543/Sigmoid_2Sigmoidlstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_543/Relu_1Relulstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_543/mul_2Mullstm_cell_543/Sigmoid_2:y:0"lstm_cell_543/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_543_matmul_readvariableop_resource.lstm_cell_543_matmul_1_readvariableop_resource-lstm_cell_543_biasadd_readvariableop_resource*
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
while_body_3298781*
condR
while_cond_3298780*K
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
NoOpNoOp%^lstm_cell_543/BiasAdd/ReadVariableOp$^lstm_cell_543/MatMul/ReadVariableOp&^lstm_cell_543/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_543/BiasAdd/ReadVariableOp$lstm_cell_543/BiasAdd/ReadVariableOp2J
#lstm_cell_543/MatMul/ReadVariableOp#lstm_cell_543/MatMul/ReadVariableOp2N
%lstm_cell_543/MatMul_1/ReadVariableOp%lstm_cell_543/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_381_layer_call_fn_3300021

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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3298019s
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
�
�
/__inference_lstm_cell_545_layer_call_fn_3302068

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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297587o
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
�
�
while_cond_3297791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297791___redundant_placeholder05
1while_while_cond_3297791___redundant_placeholder15
1while_while_cond_3297791___redundant_placeholder25
1while_while_cond_3297791___redundant_placeholder3
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
*sequential_127_lstm_381_while_cond_3296451L
Hsequential_127_lstm_381_while_sequential_127_lstm_381_while_loop_counterR
Nsequential_127_lstm_381_while_sequential_127_lstm_381_while_maximum_iterations-
)sequential_127_lstm_381_while_placeholder/
+sequential_127_lstm_381_while_placeholder_1/
+sequential_127_lstm_381_while_placeholder_2/
+sequential_127_lstm_381_while_placeholder_3N
Jsequential_127_lstm_381_while_less_sequential_127_lstm_381_strided_slice_1e
asequential_127_lstm_381_while_sequential_127_lstm_381_while_cond_3296451___redundant_placeholder0e
asequential_127_lstm_381_while_sequential_127_lstm_381_while_cond_3296451___redundant_placeholder1e
asequential_127_lstm_381_while_sequential_127_lstm_381_while_cond_3296451___redundant_placeholder2e
asequential_127_lstm_381_while_sequential_127_lstm_381_while_cond_3296451___redundant_placeholder3*
&sequential_127_lstm_381_while_identity
�
"sequential_127/lstm_381/while/LessLess)sequential_127_lstm_381_while_placeholderJsequential_127_lstm_381_while_less_sequential_127_lstm_381_strided_slice_1*
T0*
_output_shapes
: {
&sequential_127/lstm_381/while/IdentityIdentity&sequential_127/lstm_381/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_127_lstm_381_while_identity/sequential_127/lstm_381/while/Identity:output:0*(
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
while_body_3301323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
/__inference_lstm_cell_543_layer_call_fn_3301872

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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3296887o
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
�#
�
while_body_3297792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_545_3297816_0:2(/
while_lstm_cell_545_3297818_0:
(+
while_lstm_cell_545_3297820_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_545_3297816:2(-
while_lstm_cell_545_3297818:
()
while_lstm_cell_545_3297820:(��+while/lstm_cell_545/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_545/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_545_3297816_0while_lstm_cell_545_3297818_0while_lstm_cell_545_3297820_0*
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3297733�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_545/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_545/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_545/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_545_3297816while_lstm_cell_545_3297816_0"<
while_lstm_cell_545_3297818while_lstm_cell_545_3297818_0"<
while_lstm_cell_545_3297820while_lstm_cell_545_3297820_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_545/StatefulPartitionedCall+while/lstm_cell_545/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_383_while_cond_3299470.
*lstm_383_while_lstm_383_while_loop_counter4
0lstm_383_while_lstm_383_while_maximum_iterations
lstm_383_while_placeholder 
lstm_383_while_placeholder_1 
lstm_383_while_placeholder_2 
lstm_383_while_placeholder_30
,lstm_383_while_less_lstm_383_strided_slice_1G
Clstm_383_while_lstm_383_while_cond_3299470___redundant_placeholder0G
Clstm_383_while_lstm_383_while_cond_3299470___redundant_placeholder1G
Clstm_383_while_lstm_383_while_cond_3299470___redundant_placeholder2G
Clstm_383_while_lstm_383_while_cond_3299470___redundant_placeholder3
lstm_383_while_identity
�
lstm_383/while/LessLesslstm_383_while_placeholder,lstm_383_while_less_lstm_383_strided_slice_1*
T0*
_output_shapes
: ]
lstm_383/while/IdentityIdentitylstm_383/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_383_while_identity lstm_383/while/Identity:output:0*(
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
*__inference_lstm_381_layer_call_fn_3300010
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
GPU 2J 8� *N
fIRG
E__inference_lstm_381_layer_call_and_return_conditional_losses_3297161|
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
�C
�

lstm_381_while_body_3299193.
*lstm_381_while_lstm_381_while_loop_counter4
0lstm_381_while_lstm_381_while_maximum_iterations
lstm_381_while_placeholder 
lstm_381_while_placeholder_1 
lstm_381_while_placeholder_2 
lstm_381_while_placeholder_3-
)lstm_381_while_lstm_381_strided_slice_1_0i
elstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0:	�R
?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0:	d�M
>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0:	�
lstm_381_while_identity
lstm_381_while_identity_1
lstm_381_while_identity_2
lstm_381_while_identity_3
lstm_381_while_identity_4
lstm_381_while_identity_5+
'lstm_381_while_lstm_381_strided_slice_1g
clstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensorN
;lstm_381_while_lstm_cell_543_matmul_readvariableop_resource:	�P
=lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource:	d�K
<lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource:	���3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp�2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp�4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp�
@lstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_381/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0lstm_381_while_placeholderIlstm_381/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOpReadVariableOp=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_381/while/lstm_cell_543/MatMulMatMul9lstm_381/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOpReadVariableOp?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_381/while/lstm_cell_543/MatMul_1MatMullstm_381_while_placeholder_2<lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_381/while/lstm_cell_543/addAddV2-lstm_381/while/lstm_cell_543/MatMul:product:0/lstm_381/while/lstm_cell_543/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOpReadVariableOp>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_381/while/lstm_cell_543/BiasAddBiasAdd$lstm_381/while/lstm_cell_543/add:z:0;lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_381/while/lstm_cell_543/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_381/while/lstm_cell_543/splitSplit5lstm_381/while/lstm_cell_543/split/split_dim:output:0-lstm_381/while/lstm_cell_543/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_381/while/lstm_cell_543/SigmoidSigmoid+lstm_381/while/lstm_cell_543/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_381/while/lstm_cell_543/Sigmoid_1Sigmoid+lstm_381/while/lstm_cell_543/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_381/while/lstm_cell_543/mulMul*lstm_381/while/lstm_cell_543/Sigmoid_1:y:0lstm_381_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_381/while/lstm_cell_543/ReluRelu+lstm_381/while/lstm_cell_543/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/mul_1Mul(lstm_381/while/lstm_cell_543/Sigmoid:y:0/lstm_381/while/lstm_cell_543/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/add_1AddV2$lstm_381/while/lstm_cell_543/mul:z:0&lstm_381/while/lstm_cell_543/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_381/while/lstm_cell_543/Sigmoid_2Sigmoid+lstm_381/while/lstm_cell_543/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_381/while/lstm_cell_543/Relu_1Relu&lstm_381/while/lstm_cell_543/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_381/while/lstm_cell_543/mul_2Mul*lstm_381/while/lstm_cell_543/Sigmoid_2:y:01lstm_381/while/lstm_cell_543/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_381/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_381_while_placeholder_1lstm_381_while_placeholder&lstm_381/while/lstm_cell_543/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_381/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_381/while/addAddV2lstm_381_while_placeholderlstm_381/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_381/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_381/while/add_1AddV2*lstm_381_while_lstm_381_while_loop_counterlstm_381/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_381/while/IdentityIdentitylstm_381/while/add_1:z:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_1Identity0lstm_381_while_lstm_381_while_maximum_iterations^lstm_381/while/NoOp*
T0*
_output_shapes
: t
lstm_381/while/Identity_2Identitylstm_381/while/add:z:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_3IdentityClstm_381/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_381/while/NoOp*
T0*
_output_shapes
: �
lstm_381/while/Identity_4Identity&lstm_381/while/lstm_cell_543/mul_2:z:0^lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_381/while/Identity_5Identity&lstm_381/while/lstm_cell_543/add_1:z:0^lstm_381/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_381/while/NoOpNoOp4^lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp3^lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp5^lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_381_while_identity lstm_381/while/Identity:output:0"?
lstm_381_while_identity_1"lstm_381/while/Identity_1:output:0"?
lstm_381_while_identity_2"lstm_381/while/Identity_2:output:0"?
lstm_381_while_identity_3"lstm_381/while/Identity_3:output:0"?
lstm_381_while_identity_4"lstm_381/while/Identity_4:output:0"?
lstm_381_while_identity_5"lstm_381/while/Identity_5:output:0"T
'lstm_381_while_lstm_381_strided_slice_1)lstm_381_while_lstm_381_strided_slice_1_0"~
<lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource>lstm_381_while_lstm_cell_543_biasadd_readvariableop_resource_0"�
=lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource?lstm_381_while_lstm_cell_543_matmul_1_readvariableop_resource_0"|
;lstm_381_while_lstm_cell_543_matmul_readvariableop_resource=lstm_381_while_lstm_cell_543_matmul_readvariableop_resource_0"�
clstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensorelstm_381_while_tensorarrayv2read_tensorlistgetitem_lstm_381_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp3lstm_381/while/lstm_cell_543/BiasAdd/ReadVariableOp2h
2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp2lstm_381/while/lstm_cell_543/MatMul/ReadVariableOp2l
4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp4lstm_381/while/lstm_cell_543/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3297934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3297934___redundant_placeholder05
1while_while_cond_3297934___redundant_placeholder15
1while_while_cond_3297934___redundant_placeholder25
1while_while_cond_3297934___redundant_placeholder3
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
while_body_3298451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_545_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_545_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_545_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_545_matmul_readvariableop_resource:2(F
4while_lstm_cell_545_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_545_biasadd_readvariableop_resource:(��*while/lstm_cell_545/BiasAdd/ReadVariableOp�)while/lstm_cell_545/MatMul/ReadVariableOp�+while/lstm_cell_545/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_545/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_545_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_545/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_545/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_545/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_545_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_545/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_545/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_545/addAddV2$while/lstm_cell_545/MatMul:product:0&while/lstm_cell_545/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_545/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_545_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_545/BiasAddBiasAddwhile/lstm_cell_545/add:z:02while/lstm_cell_545/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_545/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_545/splitSplit,while/lstm_cell_545/split/split_dim:output:0$while/lstm_cell_545/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_545/SigmoidSigmoid"while/lstm_cell_545/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_1Sigmoid"while/lstm_cell_545/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mulMul!while/lstm_cell_545/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_545/ReluRelu"while/lstm_cell_545/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_1Mulwhile/lstm_cell_545/Sigmoid:y:0&while/lstm_cell_545/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/add_1AddV2while/lstm_cell_545/mul:z:0while/lstm_cell_545/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_545/Sigmoid_2Sigmoid"while/lstm_cell_545/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_545/Relu_1Reluwhile/lstm_cell_545/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_545/mul_2Mul!while/lstm_cell_545/Sigmoid_2:y:0(while/lstm_cell_545/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_545/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_545/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_545/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_545/BiasAdd/ReadVariableOp*^while/lstm_cell_545/MatMul/ReadVariableOp,^while/lstm_cell_545/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_545_biasadd_readvariableop_resource5while_lstm_cell_545_biasadd_readvariableop_resource_0"n
4while_lstm_cell_545_matmul_1_readvariableop_resource6while_lstm_cell_545_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_545_matmul_readvariableop_resource4while_lstm_cell_545_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_545/BiasAdd/ReadVariableOp*while/lstm_cell_545/BiasAdd/ReadVariableOp2V
)while/lstm_cell_545/MatMul/ReadVariableOp)while/lstm_cell_545/MatMul/ReadVariableOp2Z
+while/lstm_cell_545/MatMul_1/ReadVariableOp+while/lstm_cell_545/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3300090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3300090___redundant_placeholder05
1while_while_cond_3300090___redundant_placeholder15
1while_while_cond_3300090___redundant_placeholder25
1while_while_cond_3300090___redundant_placeholder3
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
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_381_input;
 serving_default_lstm_381_input:0���������=
	dense_1270
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
": 
2dense_127/kernel
:2dense_127/bias
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
0:.	�2lstm_381/lstm_cell_381/kernel
::8	d�2'lstm_381/lstm_cell_381/recurrent_kernel
*:(�2lstm_381/lstm_cell_381/bias
0:.	d�2lstm_382/lstm_cell_382/kernel
::8	2�2'lstm_382/lstm_cell_382/recurrent_kernel
*:(�2lstm_382/lstm_cell_382/bias
/:-2(2lstm_383/lstm_cell_383/kernel
9:7
(2'lstm_383/lstm_cell_383/recurrent_kernel
):'(2lstm_383/lstm_cell_383/bias
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
':%
2Adam/dense_127/kernel/m
!:2Adam/dense_127/bias/m
5:3	�2$Adam/lstm_381/lstm_cell_381/kernel/m
?:=	d�2.Adam/lstm_381/lstm_cell_381/recurrent_kernel/m
/:-�2"Adam/lstm_381/lstm_cell_381/bias/m
5:3	d�2$Adam/lstm_382/lstm_cell_382/kernel/m
?:=	2�2.Adam/lstm_382/lstm_cell_382/recurrent_kernel/m
/:-�2"Adam/lstm_382/lstm_cell_382/bias/m
4:22(2$Adam/lstm_383/lstm_cell_383/kernel/m
>:<
(2.Adam/lstm_383/lstm_cell_383/recurrent_kernel/m
.:,(2"Adam/lstm_383/lstm_cell_383/bias/m
':%
2Adam/dense_127/kernel/v
!:2Adam/dense_127/bias/v
5:3	�2$Adam/lstm_381/lstm_cell_381/kernel/v
?:=	d�2.Adam/lstm_381/lstm_cell_381/recurrent_kernel/v
/:-�2"Adam/lstm_381/lstm_cell_381/bias/v
5:3	d�2$Adam/lstm_382/lstm_cell_382/kernel/v
?:=	2�2.Adam/lstm_382/lstm_cell_382/recurrent_kernel/v
/:-�2"Adam/lstm_382/lstm_cell_382/bias/v
4:22(2$Adam/lstm_383/lstm_cell_383/kernel/v
>:<
(2.Adam/lstm_383/lstm_cell_383/recurrent_kernel/v
.:,(2"Adam/lstm_383/lstm_cell_383/bias/v
�2�
0__inference_sequential_127_layer_call_fn_3298369
0__inference_sequential_127_layer_call_fn_3299107
0__inference_sequential_127_layer_call_fn_3299134
0__inference_sequential_127_layer_call_fn_3298985�
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
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299561
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299988
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299015
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299045�
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
"__inference__wrapped_model_3296820lstm_381_input"�
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
*__inference_lstm_381_layer_call_fn_3299999
*__inference_lstm_381_layer_call_fn_3300010
*__inference_lstm_381_layer_call_fn_3300021
*__inference_lstm_381_layer_call_fn_3300032�
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300175
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300318
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300461
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300604�
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
*__inference_lstm_382_layer_call_fn_3300615
*__inference_lstm_382_layer_call_fn_3300626
*__inference_lstm_382_layer_call_fn_3300637
*__inference_lstm_382_layer_call_fn_3300648�
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300791
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300934
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301077
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301220�
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
*__inference_lstm_383_layer_call_fn_3301231
*__inference_lstm_383_layer_call_fn_3301242
*__inference_lstm_383_layer_call_fn_3301253
*__inference_lstm_383_layer_call_fn_3301264�
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301407
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301550
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301693
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301836�
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
+__inference_dense_127_layer_call_fn_3301845�
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
F__inference_dense_127_layer_call_and_return_conditional_losses_3301855�
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
%__inference_signature_wrapper_3299080lstm_381_input"�
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
/__inference_lstm_cell_543_layer_call_fn_3301872
/__inference_lstm_cell_543_layer_call_fn_3301889�
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301921
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301953�
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
/__inference_lstm_cell_544_layer_call_fn_3301970
/__inference_lstm_cell_544_layer_call_fn_3301987�
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302019
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302051�
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
/__inference_lstm_cell_545_layer_call_fn_3302068
/__inference_lstm_cell_545_layer_call_fn_3302085�
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302117
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302149�
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
"__inference__wrapped_model_3296820�-./012345!";�8
1�.
,�)
lstm_381_input���������
� "5�2
0
	dense_127#� 
	dense_127����������
F__inference_dense_127_layer_call_and_return_conditional_losses_3301855\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_127_layer_call_fn_3301845O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300175�-./O�L
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300318�-./O�L
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300461q-./?�<
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
E__inference_lstm_381_layer_call_and_return_conditional_losses_3300604q-./?�<
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
*__inference_lstm_381_layer_call_fn_3299999}-./O�L
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
*__inference_lstm_381_layer_call_fn_3300010}-./O�L
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
*__inference_lstm_381_layer_call_fn_3300021d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_381_layer_call_fn_3300032d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300791�012O�L
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3300934�012O�L
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301077q012?�<
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
E__inference_lstm_382_layer_call_and_return_conditional_losses_3301220q012?�<
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
*__inference_lstm_382_layer_call_fn_3300615}012O�L
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
*__inference_lstm_382_layer_call_fn_3300626}012O�L
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
*__inference_lstm_382_layer_call_fn_3300637d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_382_layer_call_fn_3300648d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301407}345O�L
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301550}345O�L
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301693m345?�<
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
E__inference_lstm_383_layer_call_and_return_conditional_losses_3301836m345?�<
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
*__inference_lstm_383_layer_call_fn_3301231p345O�L
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
*__inference_lstm_383_layer_call_fn_3301242p345O�L
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
*__inference_lstm_383_layer_call_fn_3301253`345?�<
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
*__inference_lstm_383_layer_call_fn_3301264`345?�<
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301921�-./��}
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
J__inference_lstm_cell_543_layer_call_and_return_conditional_losses_3301953�-./��}
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
/__inference_lstm_cell_543_layer_call_fn_3301872�-./��}
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
/__inference_lstm_cell_543_layer_call_fn_3301889�-./��}
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302019�012��}
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
J__inference_lstm_cell_544_layer_call_and_return_conditional_losses_3302051�012��}
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
/__inference_lstm_cell_544_layer_call_fn_3301970�012��}
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
/__inference_lstm_cell_544_layer_call_fn_3301987�012��}
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302117�345��}
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
J__inference_lstm_cell_545_layer_call_and_return_conditional_losses_3302149�345��}
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
/__inference_lstm_cell_545_layer_call_fn_3302068�345��}
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
/__inference_lstm_cell_545_layer_call_fn_3302085�345��}
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
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299015y-./012345!"C�@
9�6
,�)
lstm_381_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299045y-./012345!"C�@
9�6
,�)
lstm_381_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299561q-./012345!";�8
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
K__inference_sequential_127_layer_call_and_return_conditional_losses_3299988q-./012345!";�8
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
0__inference_sequential_127_layer_call_fn_3298369l-./012345!"C�@
9�6
,�)
lstm_381_input���������
p 

 
� "�����������
0__inference_sequential_127_layer_call_fn_3298985l-./012345!"C�@
9�6
,�)
lstm_381_input���������
p

 
� "�����������
0__inference_sequential_127_layer_call_fn_3299107d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_127_layer_call_fn_3299134d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_3299080�-./012345!"M�J
� 
C�@
>
lstm_381_input,�)
lstm_381_input���������"5�2
0
	dense_127#� 
	dense_127���������