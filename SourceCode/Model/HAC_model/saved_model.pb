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
dense_228/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_228/kernel
u
$dense_228/kernel/Read/ReadVariableOpReadVariableOpdense_228/kernel*
_output_shapes

:
*
dtype0
t
dense_228/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_228/bias
m
"dense_228/bias/Read/ReadVariableOpReadVariableOpdense_228/bias*
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
lstm_684/lstm_cell_684/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_684/lstm_cell_684/kernel
�
1lstm_684/lstm_cell_684/kernel/Read/ReadVariableOpReadVariableOplstm_684/lstm_cell_684/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_684/lstm_cell_684/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_684/lstm_cell_684/recurrent_kernel
�
;lstm_684/lstm_cell_684/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_684/lstm_cell_684/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_684/lstm_cell_684/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_684/lstm_cell_684/bias
�
/lstm_684/lstm_cell_684/bias/Read/ReadVariableOpReadVariableOplstm_684/lstm_cell_684/bias*
_output_shapes	
:�*
dtype0
�
lstm_685/lstm_cell_685/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_685/lstm_cell_685/kernel
�
1lstm_685/lstm_cell_685/kernel/Read/ReadVariableOpReadVariableOplstm_685/lstm_cell_685/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_685/lstm_cell_685/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_685/lstm_cell_685/recurrent_kernel
�
;lstm_685/lstm_cell_685/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_685/lstm_cell_685/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_685/lstm_cell_685/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_685/lstm_cell_685/bias
�
/lstm_685/lstm_cell_685/bias/Read/ReadVariableOpReadVariableOplstm_685/lstm_cell_685/bias*
_output_shapes	
:�*
dtype0
�
lstm_686/lstm_cell_686/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_686/lstm_cell_686/kernel
�
1lstm_686/lstm_cell_686/kernel/Read/ReadVariableOpReadVariableOplstm_686/lstm_cell_686/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_686/lstm_cell_686/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_686/lstm_cell_686/recurrent_kernel
�
;lstm_686/lstm_cell_686/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_686/lstm_cell_686/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_686/lstm_cell_686/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_686/lstm_cell_686/bias
�
/lstm_686/lstm_cell_686/bias/Read/ReadVariableOpReadVariableOplstm_686/lstm_cell_686/bias*
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
Adam/dense_228/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_228/kernel/m
�
+Adam/dense_228/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_228/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_228/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_228/bias/m
{
)Adam/dense_228/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_228/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_684/lstm_cell_684/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_684/lstm_cell_684/kernel/m
�
8Adam/lstm_684/lstm_cell_684/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_684/lstm_cell_684/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_684/lstm_cell_684/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m
�
BAdam/lstm_684/lstm_cell_684/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_684/lstm_cell_684/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_684/lstm_cell_684/bias/m
�
6Adam/lstm_684/lstm_cell_684/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_684/lstm_cell_684/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_685/lstm_cell_685/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_685/lstm_cell_685/kernel/m
�
8Adam/lstm_685/lstm_cell_685/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_685/lstm_cell_685/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_685/lstm_cell_685/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m
�
BAdam/lstm_685/lstm_cell_685/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_685/lstm_cell_685/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_685/lstm_cell_685/bias/m
�
6Adam/lstm_685/lstm_cell_685/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_685/lstm_cell_685/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_686/lstm_cell_686/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_686/lstm_cell_686/kernel/m
�
8Adam/lstm_686/lstm_cell_686/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_686/lstm_cell_686/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_686/lstm_cell_686/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_686/lstm_cell_686/recurrent_kernel/m
�
BAdam/lstm_686/lstm_cell_686/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_686/lstm_cell_686/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_686/lstm_cell_686/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_686/lstm_cell_686/bias/m
�
6Adam/lstm_686/lstm_cell_686/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_686/lstm_cell_686/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_228/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_228/kernel/v
�
+Adam/dense_228/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_228/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_228/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_228/bias/v
{
)Adam/dense_228/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_228/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_684/lstm_cell_684/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_684/lstm_cell_684/kernel/v
�
8Adam/lstm_684/lstm_cell_684/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_684/lstm_cell_684/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_684/lstm_cell_684/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v
�
BAdam/lstm_684/lstm_cell_684/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_684/lstm_cell_684/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_684/lstm_cell_684/bias/v
�
6Adam/lstm_684/lstm_cell_684/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_684/lstm_cell_684/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_685/lstm_cell_685/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_685/lstm_cell_685/kernel/v
�
8Adam/lstm_685/lstm_cell_685/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_685/lstm_cell_685/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_685/lstm_cell_685/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v
�
BAdam/lstm_685/lstm_cell_685/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_685/lstm_cell_685/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_685/lstm_cell_685/bias/v
�
6Adam/lstm_685/lstm_cell_685/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_685/lstm_cell_685/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_686/lstm_cell_686/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_686/lstm_cell_686/kernel/v
�
8Adam/lstm_686/lstm_cell_686/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_686/lstm_cell_686/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_686/lstm_cell_686/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_686/lstm_cell_686/recurrent_kernel/v
�
BAdam/lstm_686/lstm_cell_686/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_686/lstm_cell_686/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_686/lstm_cell_686/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_686/lstm_cell_686/bias/v
�
6Adam/lstm_686/lstm_cell_686/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_686/lstm_cell_686/bias/v*
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
VARIABLE_VALUEdense_228/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_228/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_684/lstm_cell_684/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_684/lstm_cell_684/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_684/lstm_cell_684/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_685/lstm_cell_685/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_685/lstm_cell_685/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_685/lstm_cell_685/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_686/lstm_cell_686/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_686/lstm_cell_686/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_686/lstm_cell_686/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_228/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_228/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_684/lstm_cell_684/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_684/lstm_cell_684/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_684/lstm_cell_684/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_685/lstm_cell_685/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_685/lstm_cell_685/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_685/lstm_cell_685/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_686/lstm_cell_686/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_686/lstm_cell_686/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_686/lstm_cell_686/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_228/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_228/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_684/lstm_cell_684/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_684/lstm_cell_684/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_684/lstm_cell_684/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_685/lstm_cell_685/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_685/lstm_cell_685/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_685/lstm_cell_685/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_686/lstm_cell_686/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_686/lstm_cell_686/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_686/lstm_cell_686/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_684_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_684_inputlstm_684/lstm_cell_684/kernel'lstm_684/lstm_cell_684/recurrent_kernellstm_684/lstm_cell_684/biaslstm_685/lstm_cell_685/kernel'lstm_685/lstm_cell_685/recurrent_kernellstm_685/lstm_cell_685/biaslstm_686/lstm_cell_686/kernel'lstm_686/lstm_cell_686/recurrent_kernellstm_686/lstm_cell_686/biasdense_228/kerneldense_228/bias*
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
%__inference_signature_wrapper_4298150
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_228/kernel/Read/ReadVariableOp"dense_228/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_684/lstm_cell_684/kernel/Read/ReadVariableOp;lstm_684/lstm_cell_684/recurrent_kernel/Read/ReadVariableOp/lstm_684/lstm_cell_684/bias/Read/ReadVariableOp1lstm_685/lstm_cell_685/kernel/Read/ReadVariableOp;lstm_685/lstm_cell_685/recurrent_kernel/Read/ReadVariableOp/lstm_685/lstm_cell_685/bias/Read/ReadVariableOp1lstm_686/lstm_cell_686/kernel/Read/ReadVariableOp;lstm_686/lstm_cell_686/recurrent_kernel/Read/ReadVariableOp/lstm_686/lstm_cell_686/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_228/kernel/m/Read/ReadVariableOp)Adam/dense_228/bias/m/Read/ReadVariableOp8Adam/lstm_684/lstm_cell_684/kernel/m/Read/ReadVariableOpBAdam/lstm_684/lstm_cell_684/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_684/lstm_cell_684/bias/m/Read/ReadVariableOp8Adam/lstm_685/lstm_cell_685/kernel/m/Read/ReadVariableOpBAdam/lstm_685/lstm_cell_685/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_685/lstm_cell_685/bias/m/Read/ReadVariableOp8Adam/lstm_686/lstm_cell_686/kernel/m/Read/ReadVariableOpBAdam/lstm_686/lstm_cell_686/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_686/lstm_cell_686/bias/m/Read/ReadVariableOp+Adam/dense_228/kernel/v/Read/ReadVariableOp)Adam/dense_228/bias/v/Read/ReadVariableOp8Adam/lstm_684/lstm_cell_684/kernel/v/Read/ReadVariableOpBAdam/lstm_684/lstm_cell_684/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_684/lstm_cell_684/bias/v/Read/ReadVariableOp8Adam/lstm_685/lstm_cell_685/kernel/v/Read/ReadVariableOpBAdam/lstm_685/lstm_cell_685/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_685/lstm_cell_685/bias/v/Read/ReadVariableOp8Adam/lstm_686/lstm_cell_686/kernel/v/Read/ReadVariableOpBAdam/lstm_686/lstm_cell_686/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_686/lstm_cell_686/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4301362
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_228/kerneldense_228/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_684/lstm_cell_684/kernel'lstm_684/lstm_cell_684/recurrent_kernellstm_684/lstm_cell_684/biaslstm_685/lstm_cell_685/kernel'lstm_685/lstm_cell_685/recurrent_kernellstm_685/lstm_cell_685/biaslstm_686/lstm_cell_686/kernel'lstm_686/lstm_cell_686/recurrent_kernellstm_686/lstm_cell_686/biastotalcountAdam/dense_228/kernel/mAdam/dense_228/bias/m$Adam/lstm_684/lstm_cell_684/kernel/m.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m"Adam/lstm_684/lstm_cell_684/bias/m$Adam/lstm_685/lstm_cell_685/kernel/m.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m"Adam/lstm_685/lstm_cell_685/bias/m$Adam/lstm_686/lstm_cell_686/kernel/m.Adam/lstm_686/lstm_cell_686/recurrent_kernel/m"Adam/lstm_686/lstm_cell_686/bias/mAdam/dense_228/kernel/vAdam/dense_228/bias/v$Adam/lstm_684/lstm_cell_684/kernel/v.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v"Adam/lstm_684/lstm_cell_684/bias/v$Adam/lstm_685/lstm_cell_685/kernel/v.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v"Adam/lstm_685/lstm_cell_685/bias/v$Adam/lstm_686/lstm_cell_686/kernel/v.Adam/lstm_686/lstm_cell_686/recurrent_kernel/v"Adam/lstm_686/lstm_cell_686/bias/v*4
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
#__inference__traced_restore_4301492��+
�
�
*__inference_lstm_686_layer_call_fn_4300312
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4296931o
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
while_cond_4300678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300678___redundant_placeholder05
1while_while_cond_4300678___redundant_placeholder15
1while_while_cond_4300678___redundant_placeholder25
1while_while_cond_4300678___redundant_placeholder3
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298003

inputs#
lstm_684_4297976:	�#
lstm_684_4297978:	d�
lstm_684_4297980:	�#
lstm_685_4297983:	d�#
lstm_685_4297985:	2�
lstm_685_4297987:	�"
lstm_686_4297990:2("
lstm_686_4297992:
(
lstm_686_4297994:(#
dense_228_4297997:

dense_228_4297999:
identity��!dense_228/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall� lstm_686/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCallinputslstm_684_4297976lstm_684_4297978lstm_684_4297980*
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297935�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0lstm_685_4297983lstm_685_4297985lstm_685_4297987*
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297770�
 lstm_686/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0lstm_686_4297990lstm_686_4297992lstm_686_4297994*
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297605�
!dense_228/StatefulPartitionedCallStatefulPartitionedCall)lstm_686/StatefulPartitionedCall:output:0dense_228_4297997dense_228_4297999*
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407y
IdentityIdentity*dense_228/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_228/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall!^lstm_686/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_228/StatefulPartitionedCall!dense_228/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall2D
 lstm_686/StatefulPartitionedCall lstm_686/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297605

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4297521*
condR
while_cond_4297520*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
0__inference_sequential_228_layer_call_fn_4297439
lstm_684_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_684_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4297414o
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
_user_specified_namelstm_684_input
�

�
%__inference_signature_wrapper_4298150
lstm_684_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_684_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4295890o
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
_user_specified_namelstm_684_input
�
�
while_cond_4296511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4296511___redundant_placeholder05
1while_while_cond_4296511___redundant_placeholder15
1while_while_cond_4296511___redundant_placeholder25
1while_while_cond_4296511___redundant_placeholder3
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
�
�
+__inference_dense_228_layer_call_fn_4300915

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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407o
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
�
*sequential_228_lstm_685_while_cond_4295660L
Hsequential_228_lstm_685_while_sequential_228_lstm_685_while_loop_counterR
Nsequential_228_lstm_685_while_sequential_228_lstm_685_while_maximum_iterations-
)sequential_228_lstm_685_while_placeholder/
+sequential_228_lstm_685_while_placeholder_1/
+sequential_228_lstm_685_while_placeholder_2/
+sequential_228_lstm_685_while_placeholder_3N
Jsequential_228_lstm_685_while_less_sequential_228_lstm_685_strided_slice_1e
asequential_228_lstm_685_while_sequential_228_lstm_685_while_cond_4295660___redundant_placeholder0e
asequential_228_lstm_685_while_sequential_228_lstm_685_while_cond_4295660___redundant_placeholder1e
asequential_228_lstm_685_while_sequential_228_lstm_685_while_cond_4295660___redundant_placeholder2e
asequential_228_lstm_685_while_sequential_228_lstm_685_while_cond_4295660___redundant_placeholder3*
&sequential_228_lstm_685_while_identity
�
"sequential_228/lstm_685/while/LessLess)sequential_228_lstm_685_while_placeholderJsequential_228_lstm_685_while_less_sequential_228_lstm_685_strided_slice_1*
T0*
_output_shapes
: {
&sequential_228/lstm_685/while/IdentityIdentity&sequential_228/lstm_685/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_228_lstm_685_while_identity/sequential_228/lstm_685/while/Identity:output:0*(
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4296581

inputs(
lstm_cell_709_4296499:	d�(
lstm_cell_709_4296501:	2�$
lstm_cell_709_4296503:	�
identity��%lstm_cell_709/StatefulPartitionedCall�while;
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
%lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_709_4296499lstm_cell_709_4296501lstm_cell_709_4296503*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296453n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_709_4296499lstm_cell_709_4296501lstm_cell_709_4296503*
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
while_body_4296512*
condR
while_cond_4296511*K
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
NoOpNoOp&^lstm_cell_709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_709/StatefulPartitionedCall%lstm_cell_709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�8
�
while_body_4297851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296657

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
while_cond_4300535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300535___redundant_placeholder05
1while_while_cond_4300535___redundant_placeholder15
1while_while_cond_4300535___redundant_placeholder25
1while_while_cond_4300535___redundant_placeholder3
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
while_body_4297521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4300392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300392___redundant_placeholder05
1while_while_cond_4300392___redundant_placeholder15
1while_while_cond_4300392___redundant_placeholder25
1while_while_cond_4300392___redundant_placeholder3
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299245
inputs_0?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4299161*
condR
while_cond_4299160*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_4300821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300821___redundant_placeholder05
1while_while_cond_4300821___redundant_placeholder15
1while_while_cond_4300821___redundant_placeholder25
1while_while_cond_4300821___redundant_placeholder3
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301219

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

�
lstm_684_while_cond_4298262.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_30
,lstm_684_while_less_lstm_684_strided_slice_1G
Clstm_684_while_lstm_684_while_cond_4298262___redundant_placeholder0G
Clstm_684_while_lstm_684_while_cond_4298262___redundant_placeholder1G
Clstm_684_while_lstm_684_while_cond_4298262___redundant_placeholder2G
Clstm_684_while_lstm_684_while_cond_4298262___redundant_placeholder3
lstm_684_while_identity
�
lstm_684/while/LessLesslstm_684_while_placeholder,lstm_684_while_less_lstm_684_strided_slice_1*
T0*
_output_shapes
: ]
lstm_684/while/IdentityIdentitylstm_684/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_684_while_identity lstm_684/while/Identity:output:0*(
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
while_cond_4299589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299589___redundant_placeholder05
1while_while_cond_4299589___redundant_placeholder15
1while_while_cond_4299589___redundant_placeholder25
1while_while_cond_4299589___redundant_placeholder3
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
while_cond_4300205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300205___redundant_placeholder05
1while_while_cond_4300205___redundant_placeholder15
1while_while_cond_4300205___redundant_placeholder25
1while_while_cond_4300205___redundant_placeholder3
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

lstm_685_while_body_4298402.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_3-
)lstm_685_while_lstm_685_strided_slice_1_0i
elstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0:	d�R
?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�M
>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
lstm_685_while_identity
lstm_685_while_identity_1
lstm_685_while_identity_2
lstm_685_while_identity_3
lstm_685_while_identity_4
lstm_685_while_identity_5+
'lstm_685_while_lstm_685_strided_slice_1g
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorN
;lstm_685_while_lstm_cell_709_matmul_readvariableop_resource:	d�P
=lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource:	2�K
<lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource:	���3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp�2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp�4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp�
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0lstm_685_while_placeholderIlstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_685/while/lstm_cell_709/MatMulMatMul9lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_685/while/lstm_cell_709/MatMul_1MatMullstm_685_while_placeholder_2<lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_685/while/lstm_cell_709/addAddV2-lstm_685/while/lstm_cell_709/MatMul:product:0/lstm_685/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_685/while/lstm_cell_709/BiasAddBiasAdd$lstm_685/while/lstm_cell_709/add:z:0;lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_685/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_685/while/lstm_cell_709/splitSplit5lstm_685/while/lstm_cell_709/split/split_dim:output:0-lstm_685/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_685/while/lstm_cell_709/SigmoidSigmoid+lstm_685/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_685/while/lstm_cell_709/Sigmoid_1Sigmoid+lstm_685/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_685/while/lstm_cell_709/mulMul*lstm_685/while/lstm_cell_709/Sigmoid_1:y:0lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_685/while/lstm_cell_709/ReluRelu+lstm_685/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/mul_1Mul(lstm_685/while/lstm_cell_709/Sigmoid:y:0/lstm_685/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/add_1AddV2$lstm_685/while/lstm_cell_709/mul:z:0&lstm_685/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_685/while/lstm_cell_709/Sigmoid_2Sigmoid+lstm_685/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_685/while/lstm_cell_709/Relu_1Relu&lstm_685/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/mul_2Mul*lstm_685/while/lstm_cell_709/Sigmoid_2:y:01lstm_685/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_685_while_placeholder_1lstm_685_while_placeholder&lstm_685/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_685/while/addAddV2lstm_685_while_placeholderlstm_685/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_685/while/add_1AddV2*lstm_685_while_lstm_685_while_loop_counterlstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_685/while/IdentityIdentitylstm_685/while/add_1:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_1Identity0lstm_685_while_lstm_685_while_maximum_iterations^lstm_685/while/NoOp*
T0*
_output_shapes
: t
lstm_685/while/Identity_2Identitylstm_685/while/add:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_3IdentityClstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_4Identity&lstm_685/while/lstm_cell_709/mul_2:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_685/while/Identity_5Identity&lstm_685/while/lstm_cell_709/add_1:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_685/while/NoOpNoOp4^lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp3^lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp5^lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_685_while_identity lstm_685/while/Identity:output:0"?
lstm_685_while_identity_1"lstm_685/while/Identity_1:output:0"?
lstm_685_while_identity_2"lstm_685/while/Identity_2:output:0"?
lstm_685_while_identity_3"lstm_685/while/Identity_3:output:0"?
lstm_685_while_identity_4"lstm_685/while/Identity_4:output:0"?
lstm_685_while_identity_5"lstm_685/while/Identity_5:output:0"T
'lstm_685_while_lstm_685_strided_slice_1)lstm_685_while_lstm_685_strided_slice_1_0"~
<lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0"�
=lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0"|
;lstm_685_while_lstm_cell_709_matmul_readvariableop_resource=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0"�
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp2h
2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp2l
4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4296231

inputs(
lstm_cell_708_4296149:	�(
lstm_cell_708_4296151:	d�$
lstm_cell_708_4296153:	�
identity��%lstm_cell_708/StatefulPartitionedCall�while;
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
%lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_708_4296149lstm_cell_708_4296151lstm_cell_708_4296153*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4296103n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_708_4296149lstm_cell_708_4296151lstm_cell_708_4296153*
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
while_body_4296162*
condR
while_cond_4296161*K
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
NoOpNoOp&^lstm_cell_708/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_708/StatefulPartitionedCall%lstm_cell_708/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
0__inference_sequential_228_layer_call_fn_4298204

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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298003o
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4301023

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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4300991

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
�
*__inference_lstm_686_layer_call_fn_4300301
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4296740o
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
�C
�

lstm_684_while_body_4298263.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_3-
)lstm_684_while_lstm_684_strided_slice_1_0i
elstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0:	�R
?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�M
>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
lstm_684_while_identity
lstm_684_while_identity_1
lstm_684_while_identity_2
lstm_684_while_identity_3
lstm_684_while_identity_4
lstm_684_while_identity_5+
'lstm_684_while_lstm_684_strided_slice_1g
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorN
;lstm_684_while_lstm_cell_708_matmul_readvariableop_resource:	�P
=lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource:	d�K
<lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource:	���3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp�2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp�4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp�
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0lstm_684_while_placeholderIlstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_684/while/lstm_cell_708/MatMulMatMul9lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_684/while/lstm_cell_708/MatMul_1MatMullstm_684_while_placeholder_2<lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_684/while/lstm_cell_708/addAddV2-lstm_684/while/lstm_cell_708/MatMul:product:0/lstm_684/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_684/while/lstm_cell_708/BiasAddBiasAdd$lstm_684/while/lstm_cell_708/add:z:0;lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_684/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_684/while/lstm_cell_708/splitSplit5lstm_684/while/lstm_cell_708/split/split_dim:output:0-lstm_684/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_684/while/lstm_cell_708/SigmoidSigmoid+lstm_684/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_684/while/lstm_cell_708/Sigmoid_1Sigmoid+lstm_684/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_684/while/lstm_cell_708/mulMul*lstm_684/while/lstm_cell_708/Sigmoid_1:y:0lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_684/while/lstm_cell_708/ReluRelu+lstm_684/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/mul_1Mul(lstm_684/while/lstm_cell_708/Sigmoid:y:0/lstm_684/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/add_1AddV2$lstm_684/while/lstm_cell_708/mul:z:0&lstm_684/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_684/while/lstm_cell_708/Sigmoid_2Sigmoid+lstm_684/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_684/while/lstm_cell_708/Relu_1Relu&lstm_684/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/mul_2Mul*lstm_684/while/lstm_cell_708/Sigmoid_2:y:01lstm_684/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_684_while_placeholder_1lstm_684_while_placeholder&lstm_684/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_684/while/addAddV2lstm_684_while_placeholderlstm_684/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_684/while/add_1AddV2*lstm_684_while_lstm_684_while_loop_counterlstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_684/while/IdentityIdentitylstm_684/while/add_1:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_1Identity0lstm_684_while_lstm_684_while_maximum_iterations^lstm_684/while/NoOp*
T0*
_output_shapes
: t
lstm_684/while/Identity_2Identitylstm_684/while/add:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_3IdentityClstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_4Identity&lstm_684/while/lstm_cell_708/mul_2:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_684/while/Identity_5Identity&lstm_684/while/lstm_cell_708/add_1:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_684/while/NoOpNoOp4^lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp3^lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp5^lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_684_while_identity lstm_684/while/Identity:output:0"?
lstm_684_while_identity_1"lstm_684/while/Identity_1:output:0"?
lstm_684_while_identity_2"lstm_684/while/Identity_2:output:0"?
lstm_684_while_identity_3"lstm_684/while/Identity_3:output:0"?
lstm_684_while_identity_4"lstm_684/while/Identity_4:output:0"?
lstm_684_while_identity_5"lstm_684/while/Identity_5:output:0"T
'lstm_684_while_lstm_684_strided_slice_1)lstm_684_while_lstm_684_strided_slice_1_0"~
<lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0"�
=lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0"|
;lstm_684_while_lstm_cell_708_matmul_readvariableop_resource=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0"�
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp2h
2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp2l
4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_686_while_body_4298968.
*lstm_686_while_lstm_686_while_loop_counter4
0lstm_686_while_lstm_686_while_maximum_iterations
lstm_686_while_placeholder 
lstm_686_while_placeholder_1 
lstm_686_while_placeholder_2 
lstm_686_while_placeholder_3-
)lstm_686_while_lstm_686_strided_slice_1_0i
elstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0:2(Q
?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(L
>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0:(
lstm_686_while_identity
lstm_686_while_identity_1
lstm_686_while_identity_2
lstm_686_while_identity_3
lstm_686_while_identity_4
lstm_686_while_identity_5+
'lstm_686_while_lstm_686_strided_slice_1g
clstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensorM
;lstm_686_while_lstm_cell_710_matmul_readvariableop_resource:2(O
=lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource:
(J
<lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource:(��3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp�2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp�4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp�
@lstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_686/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0lstm_686_while_placeholderIlstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_686/while/lstm_cell_710/MatMulMatMul9lstm_686/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_686/while/lstm_cell_710/MatMul_1MatMullstm_686_while_placeholder_2<lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_686/while/lstm_cell_710/addAddV2-lstm_686/while/lstm_cell_710/MatMul:product:0/lstm_686/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_686/while/lstm_cell_710/BiasAddBiasAdd$lstm_686/while/lstm_cell_710/add:z:0;lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_686/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_686/while/lstm_cell_710/splitSplit5lstm_686/while/lstm_cell_710/split/split_dim:output:0-lstm_686/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_686/while/lstm_cell_710/SigmoidSigmoid+lstm_686/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_686/while/lstm_cell_710/Sigmoid_1Sigmoid+lstm_686/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_686/while/lstm_cell_710/mulMul*lstm_686/while/lstm_cell_710/Sigmoid_1:y:0lstm_686_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_686/while/lstm_cell_710/ReluRelu+lstm_686/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/mul_1Mul(lstm_686/while/lstm_cell_710/Sigmoid:y:0/lstm_686/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/add_1AddV2$lstm_686/while/lstm_cell_710/mul:z:0&lstm_686/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_686/while/lstm_cell_710/Sigmoid_2Sigmoid+lstm_686/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_686/while/lstm_cell_710/Relu_1Relu&lstm_686/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/mul_2Mul*lstm_686/while/lstm_cell_710/Sigmoid_2:y:01lstm_686/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_686/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_686_while_placeholder_1lstm_686_while_placeholder&lstm_686/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_686/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_686/while/addAddV2lstm_686_while_placeholderlstm_686/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_686/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_686/while/add_1AddV2*lstm_686_while_lstm_686_while_loop_counterlstm_686/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_686/while/IdentityIdentitylstm_686/while/add_1:z:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_1Identity0lstm_686_while_lstm_686_while_maximum_iterations^lstm_686/while/NoOp*
T0*
_output_shapes
: t
lstm_686/while/Identity_2Identitylstm_686/while/add:z:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_3IdentityClstm_686/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_4Identity&lstm_686/while/lstm_cell_710/mul_2:z:0^lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_686/while/Identity_5Identity&lstm_686/while/lstm_cell_710/add_1:z:0^lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_686/while/NoOpNoOp4^lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp3^lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp5^lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_686_while_identity lstm_686/while/Identity:output:0"?
lstm_686_while_identity_1"lstm_686/while/Identity_1:output:0"?
lstm_686_while_identity_2"lstm_686/while/Identity_2:output:0"?
lstm_686_while_identity_3"lstm_686/while/Identity_3:output:0"?
lstm_686_while_identity_4"lstm_686/while/Identity_4:output:0"?
lstm_686_while_identity_5"lstm_686/while/Identity_5:output:0"T
'lstm_686_while_lstm_686_strided_slice_1)lstm_686_while_lstm_686_strided_slice_1_0"~
<lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0"�
=lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0"|
;lstm_686_while_lstm_cell_710_matmul_readvariableop_resource=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0"�
clstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensorelstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp2h
2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp2l
4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4297850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297850___redundant_placeholder05
1while_while_cond_4297850___redundant_placeholder15
1while_while_cond_4297850___redundant_placeholder25
1while_while_cond_4297850___redundant_placeholder3
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
*__inference_lstm_685_layer_call_fn_4299696
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4296581|
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
�
while_cond_4299919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299919___redundant_placeholder05
1while_while_cond_4299919___redundant_placeholder15
1while_while_cond_4299919___redundant_placeholder25
1while_while_cond_4299919___redundant_placeholder3
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4296040

inputs(
lstm_cell_708_4295958:	�(
lstm_cell_708_4295960:	d�$
lstm_cell_708_4295962:	�
identity��%lstm_cell_708/StatefulPartitionedCall�while;
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
%lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_708_4295958lstm_cell_708_4295960lstm_cell_708_4295962*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4295957n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_708_4295958lstm_cell_708_4295960lstm_cell_708_4295962*
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
while_body_4295971*
condR
while_cond_4295970*K
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
NoOpNoOp&^lstm_cell_708/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_708/StatefulPartitionedCall%lstm_cell_708/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
*__inference_lstm_686_layer_call_fn_4300323

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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297389o
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
while_cond_4295970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4295970___redundant_placeholder05
1while_while_cond_4295970___redundant_placeholder15
1while_while_cond_4295970___redundant_placeholder25
1while_while_cond_4295970___redundant_placeholder3
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4296103

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
�
�
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301187

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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297389

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4297305*
condR
while_cond_4297304*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_4299160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299160___redundant_placeholder05
1while_while_cond_4299160___redundant_placeholder15
1while_while_cond_4299160___redundant_placeholder25
1while_while_cond_4299160___redundant_placeholder3
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300906

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4300822*
condR
while_cond_4300821*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_708_layer_call_fn_4300959

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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4296103o
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
�
*sequential_228_lstm_684_while_cond_4295521L
Hsequential_228_lstm_684_while_sequential_228_lstm_684_while_loop_counterR
Nsequential_228_lstm_684_while_sequential_228_lstm_684_while_maximum_iterations-
)sequential_228_lstm_684_while_placeholder/
+sequential_228_lstm_684_while_placeholder_1/
+sequential_228_lstm_684_while_placeholder_2/
+sequential_228_lstm_684_while_placeholder_3N
Jsequential_228_lstm_684_while_less_sequential_228_lstm_684_strided_slice_1e
asequential_228_lstm_684_while_sequential_228_lstm_684_while_cond_4295521___redundant_placeholder0e
asequential_228_lstm_684_while_sequential_228_lstm_684_while_cond_4295521___redundant_placeholder1e
asequential_228_lstm_684_while_sequential_228_lstm_684_while_cond_4295521___redundant_placeholder2e
asequential_228_lstm_684_while_sequential_228_lstm_684_while_cond_4295521___redundant_placeholder3*
&sequential_228_lstm_684_while_identity
�
"sequential_228/lstm_684/while/LessLess)sequential_228_lstm_684_while_placeholderJsequential_228_lstm_684_while_less_sequential_228_lstm_684_strided_slice_1*
T0*
_output_shapes
: {
&sequential_228/lstm_684/while/IdentityIdentity&sequential_228/lstm_684/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_228_lstm_684_while_identity/sequential_228/lstm_684/while/Identity:output:0*(
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
while_cond_4297520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297520___redundant_placeholder05
1while_while_cond_4297520___redundant_placeholder15
1while_while_cond_4297520___redundant_placeholder25
1while_while_cond_4297520___redundant_placeholder3
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
�C
�

lstm_686_while_body_4298541.
*lstm_686_while_lstm_686_while_loop_counter4
0lstm_686_while_lstm_686_while_maximum_iterations
lstm_686_while_placeholder 
lstm_686_while_placeholder_1 
lstm_686_while_placeholder_2 
lstm_686_while_placeholder_3-
)lstm_686_while_lstm_686_strided_slice_1_0i
elstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0:2(Q
?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(L
>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0:(
lstm_686_while_identity
lstm_686_while_identity_1
lstm_686_while_identity_2
lstm_686_while_identity_3
lstm_686_while_identity_4
lstm_686_while_identity_5+
'lstm_686_while_lstm_686_strided_slice_1g
clstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensorM
;lstm_686_while_lstm_cell_710_matmul_readvariableop_resource:2(O
=lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource:
(J
<lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource:(��3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp�2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp�4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp�
@lstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_686/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0lstm_686_while_placeholderIlstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_686/while/lstm_cell_710/MatMulMatMul9lstm_686/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_686/while/lstm_cell_710/MatMul_1MatMullstm_686_while_placeholder_2<lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_686/while/lstm_cell_710/addAddV2-lstm_686/while/lstm_cell_710/MatMul:product:0/lstm_686/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_686/while/lstm_cell_710/BiasAddBiasAdd$lstm_686/while/lstm_cell_710/add:z:0;lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_686/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_686/while/lstm_cell_710/splitSplit5lstm_686/while/lstm_cell_710/split/split_dim:output:0-lstm_686/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_686/while/lstm_cell_710/SigmoidSigmoid+lstm_686/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_686/while/lstm_cell_710/Sigmoid_1Sigmoid+lstm_686/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_686/while/lstm_cell_710/mulMul*lstm_686/while/lstm_cell_710/Sigmoid_1:y:0lstm_686_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_686/while/lstm_cell_710/ReluRelu+lstm_686/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/mul_1Mul(lstm_686/while/lstm_cell_710/Sigmoid:y:0/lstm_686/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/add_1AddV2$lstm_686/while/lstm_cell_710/mul:z:0&lstm_686/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_686/while/lstm_cell_710/Sigmoid_2Sigmoid+lstm_686/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_686/while/lstm_cell_710/Relu_1Relu&lstm_686/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_686/while/lstm_cell_710/mul_2Mul*lstm_686/while/lstm_cell_710/Sigmoid_2:y:01lstm_686/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_686/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_686_while_placeholder_1lstm_686_while_placeholder&lstm_686/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_686/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_686/while/addAddV2lstm_686_while_placeholderlstm_686/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_686/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_686/while/add_1AddV2*lstm_686_while_lstm_686_while_loop_counterlstm_686/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_686/while/IdentityIdentitylstm_686/while/add_1:z:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_1Identity0lstm_686_while_lstm_686_while_maximum_iterations^lstm_686/while/NoOp*
T0*
_output_shapes
: t
lstm_686/while/Identity_2Identitylstm_686/while/add:z:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_3IdentityClstm_686/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_686/while/NoOp*
T0*
_output_shapes
: �
lstm_686/while/Identity_4Identity&lstm_686/while/lstm_cell_710/mul_2:z:0^lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_686/while/Identity_5Identity&lstm_686/while/lstm_cell_710/add_1:z:0^lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_686/while/NoOpNoOp4^lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp3^lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp5^lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_686_while_identity lstm_686/while/Identity:output:0"?
lstm_686_while_identity_1"lstm_686/while/Identity_1:output:0"?
lstm_686_while_identity_2"lstm_686/while/Identity_2:output:0"?
lstm_686_while_identity_3"lstm_686/while/Identity_3:output:0"?
lstm_686_while_identity_4"lstm_686/while/Identity_4:output:0"?
lstm_686_while_identity_5"lstm_686/while/Identity_5:output:0"T
'lstm_686_while_lstm_686_strided_slice_1)lstm_686_while_lstm_686_strided_slice_1_0"~
<lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource>lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0"�
=lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource?lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0"|
;lstm_686_while_lstm_cell_710_matmul_readvariableop_resource=lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0"�
clstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensorelstm_686_while_tensorarrayv2read_tensorlistgetitem_lstm_686_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp3lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp2h
2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp2lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp2l
4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp4lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4299776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299776___redundant_placeholder05
1while_while_cond_4299776___redundant_placeholder15
1while_while_cond_4299776___redundant_placeholder25
1while_while_cond_4299776___redundant_placeholder3
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4296390

inputs(
lstm_cell_709_4296308:	d�(
lstm_cell_709_4296310:	2�$
lstm_cell_709_4296312:	�
identity��%lstm_cell_709/StatefulPartitionedCall�while;
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
%lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_709_4296308lstm_cell_709_4296310lstm_cell_709_4296312*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296307n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_709_4296308lstm_cell_709_4296310lstm_cell_709_4296312*
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
while_body_4296321*
condR
while_cond_4296320*K
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
NoOpNoOp&^lstm_cell_709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_709/StatefulPartitionedCall%lstm_cell_709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�8
�
while_body_4300393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_228_layer_call_fn_4298055
lstm_684_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_684_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298003o
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
_user_specified_namelstm_684_input
�
�
*__inference_lstm_684_layer_call_fn_4299091

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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297089s
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

�
lstm_685_while_cond_4298401.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_30
,lstm_685_while_less_lstm_685_strided_slice_1G
Clstm_685_while_lstm_685_while_cond_4298401___redundant_placeholder0G
Clstm_685_while_lstm_685_while_cond_4298401___redundant_placeholder1G
Clstm_685_while_lstm_685_while_cond_4298401___redundant_placeholder2G
Clstm_685_while_lstm_685_while_cond_4298401___redundant_placeholder3
lstm_685_while_identity
�
lstm_685/while/LessLesslstm_685_while_placeholder,lstm_685_while_less_lstm_685_strided_slice_1*
T0*
_output_shapes
: ]
lstm_685/while/IdentityIdentitylstm_685/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_685_while_identity lstm_685/while/Identity:output:0*(
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
while_cond_4297304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297304___redundant_placeholder05
1while_while_cond_4297304___redundant_placeholder15
1while_while_cond_4297304___redundant_placeholder25
1while_while_cond_4297304___redundant_placeholder3
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
while_cond_4296320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4296320___redundant_placeholder05
1while_while_cond_4296320___redundant_placeholder15
1while_while_cond_4296320___redundant_placeholder25
1while_while_cond_4296320___redundant_placeholder3
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
while_cond_4297685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297685___redundant_placeholder05
1while_while_cond_4297685___redundant_placeholder15
1while_while_cond_4297685___redundant_placeholder25
1while_while_cond_4297685___redundant_placeholder3
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
while_body_4297686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4296670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4296670___redundant_placeholder05
1while_while_cond_4296670___redundant_placeholder15
1while_while_cond_4296670___redundant_placeholder25
1while_while_cond_4296670___redundant_placeholder3
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296803

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
while_body_4297155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407

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
�
*__inference_lstm_685_layer_call_fn_4299718

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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297770s
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
�W
�
 __inference__traced_save_4301362
file_prefix/
+savev2_dense_228_kernel_read_readvariableop-
)savev2_dense_228_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_684_lstm_cell_684_kernel_read_readvariableopF
Bsavev2_lstm_684_lstm_cell_684_recurrent_kernel_read_readvariableop:
6savev2_lstm_684_lstm_cell_684_bias_read_readvariableop<
8savev2_lstm_685_lstm_cell_685_kernel_read_readvariableopF
Bsavev2_lstm_685_lstm_cell_685_recurrent_kernel_read_readvariableop:
6savev2_lstm_685_lstm_cell_685_bias_read_readvariableop<
8savev2_lstm_686_lstm_cell_686_kernel_read_readvariableopF
Bsavev2_lstm_686_lstm_cell_686_recurrent_kernel_read_readvariableop:
6savev2_lstm_686_lstm_cell_686_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_228_kernel_m_read_readvariableop4
0savev2_adam_dense_228_bias_m_read_readvariableopC
?savev2_adam_lstm_684_lstm_cell_684_kernel_m_read_readvariableopM
Isavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_684_lstm_cell_684_bias_m_read_readvariableopC
?savev2_adam_lstm_685_lstm_cell_685_kernel_m_read_readvariableopM
Isavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_685_lstm_cell_685_bias_m_read_readvariableopC
?savev2_adam_lstm_686_lstm_cell_686_kernel_m_read_readvariableopM
Isavev2_adam_lstm_686_lstm_cell_686_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_686_lstm_cell_686_bias_m_read_readvariableop6
2savev2_adam_dense_228_kernel_v_read_readvariableop4
0savev2_adam_dense_228_bias_v_read_readvariableopC
?savev2_adam_lstm_684_lstm_cell_684_kernel_v_read_readvariableopM
Isavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_684_lstm_cell_684_bias_v_read_readvariableopC
?savev2_adam_lstm_685_lstm_cell_685_kernel_v_read_readvariableopM
Isavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_685_lstm_cell_685_bias_v_read_readvariableopC
?savev2_adam_lstm_686_lstm_cell_686_kernel_v_read_readvariableopM
Isavev2_adam_lstm_686_lstm_cell_686_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_686_lstm_cell_686_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_228_kernel_read_readvariableop)savev2_dense_228_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_684_lstm_cell_684_kernel_read_readvariableopBsavev2_lstm_684_lstm_cell_684_recurrent_kernel_read_readvariableop6savev2_lstm_684_lstm_cell_684_bias_read_readvariableop8savev2_lstm_685_lstm_cell_685_kernel_read_readvariableopBsavev2_lstm_685_lstm_cell_685_recurrent_kernel_read_readvariableop6savev2_lstm_685_lstm_cell_685_bias_read_readvariableop8savev2_lstm_686_lstm_cell_686_kernel_read_readvariableopBsavev2_lstm_686_lstm_cell_686_recurrent_kernel_read_readvariableop6savev2_lstm_686_lstm_cell_686_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_228_kernel_m_read_readvariableop0savev2_adam_dense_228_bias_m_read_readvariableop?savev2_adam_lstm_684_lstm_cell_684_kernel_m_read_readvariableopIsavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_684_lstm_cell_684_bias_m_read_readvariableop?savev2_adam_lstm_685_lstm_cell_685_kernel_m_read_readvariableopIsavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_685_lstm_cell_685_bias_m_read_readvariableop?savev2_adam_lstm_686_lstm_cell_686_kernel_m_read_readvariableopIsavev2_adam_lstm_686_lstm_cell_686_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_686_lstm_cell_686_bias_m_read_readvariableop2savev2_adam_dense_228_kernel_v_read_readvariableop0savev2_adam_dense_228_bias_v_read_readvariableop?savev2_adam_lstm_684_lstm_cell_684_kernel_v_read_readvariableopIsavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_684_lstm_cell_684_bias_v_read_readvariableop?savev2_adam_lstm_685_lstm_cell_685_kernel_v_read_readvariableopIsavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_685_lstm_cell_685_bias_v_read_readvariableop?savev2_adam_lstm_686_lstm_cell_686_kernel_v_read_readvariableopIsavev2_adam_lstm_686_lstm_cell_686_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_686_lstm_cell_686_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4300536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4300679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301089

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
lstm_686_while_cond_4298967.
*lstm_686_while_lstm_686_while_loop_counter4
0lstm_686_while_lstm_686_while_maximum_iterations
lstm_686_while_placeholder 
lstm_686_while_placeholder_1 
lstm_686_while_placeholder_2 
lstm_686_while_placeholder_30
,lstm_686_while_less_lstm_686_strided_slice_1G
Clstm_686_while_lstm_686_while_cond_4298967___redundant_placeholder0G
Clstm_686_while_lstm_686_while_cond_4298967___redundant_placeholder1G
Clstm_686_while_lstm_686_while_cond_4298967___redundant_placeholder2G
Clstm_686_while_lstm_686_while_cond_4298967___redundant_placeholder3
lstm_686_while_identity
�
lstm_686/while/LessLesslstm_686_while_placeholder,lstm_686_while_less_lstm_686_strided_slice_1*
T0*
_output_shapes
: ]
lstm_686/while/IdentityIdentitylstm_686/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_686_while_identity lstm_686/while/Identity:output:0*(
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
while_body_4299590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4296321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_709_4296345_0:	d�0
while_lstm_cell_709_4296347_0:	2�,
while_lstm_cell_709_4296349_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_709_4296345:	d�.
while_lstm_cell_709_4296347:	2�*
while_lstm_cell_709_4296349:	���+while/lstm_cell_709/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_709_4296345_0while_lstm_cell_709_4296347_0while_lstm_cell_709_4296349_0*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296307�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_709/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_709/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_709_4296345while_lstm_cell_709_4296345_0"<
while_lstm_cell_709_4296347while_lstm_cell_709_4296347_0"<
while_lstm_cell_709_4296349while_lstm_cell_709_4296349_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_709/StatefulPartitionedCall+while/lstm_cell_709/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4296862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_710_4296886_0:2(/
while_lstm_cell_710_4296888_0:
(+
while_lstm_cell_710_4296890_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_710_4296886:2(-
while_lstm_cell_710_4296888:
()
while_lstm_cell_710_4296890:(��+while/lstm_cell_710/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_710_4296886_0while_lstm_cell_710_4296888_0while_lstm_cell_710_4296890_0*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296803�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_710/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_710/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_710/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_710_4296886while_lstm_cell_710_4296886_0"<
while_lstm_cell_710_4296888while_lstm_cell_710_4296888_0"<
while_lstm_cell_710_4296890while_lstm_cell_710_4296890_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_710/StatefulPartitionedCall+while/lstm_cell_710/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4300822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_685_layer_call_fn_4299685
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4296390|
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

�
lstm_686_while_cond_4298540.
*lstm_686_while_lstm_686_while_loop_counter4
0lstm_686_while_lstm_686_while_maximum_iterations
lstm_686_while_placeholder 
lstm_686_while_placeholder_1 
lstm_686_while_placeholder_2 
lstm_686_while_placeholder_30
,lstm_686_while_less_lstm_686_strided_slice_1G
Clstm_686_while_lstm_686_while_cond_4298540___redundant_placeholder0G
Clstm_686_while_lstm_686_while_cond_4298540___redundant_placeholder1G
Clstm_686_while_lstm_686_while_cond_4298540___redundant_placeholder2G
Clstm_686_while_lstm_686_while_cond_4298540___redundant_placeholder3
lstm_686_while_identity
�
lstm_686/while/LessLesslstm_686_while_placeholder,lstm_686_while_less_lstm_686_strided_slice_1*
T0*
_output_shapes
: ]
lstm_686/while/IdentityIdentitylstm_686/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_686_while_identity lstm_686/while/Identity:output:0*(
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
while_cond_4299303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299303___redundant_placeholder05
1while_while_cond_4299303___redundant_placeholder15
1while_while_cond_4299303___redundant_placeholder25
1while_while_cond_4299303___redundant_placeholder3
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300147

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4300063*
condR
while_cond_4300062*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�#
�
while_body_4296162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_708_4296186_0:	�0
while_lstm_cell_708_4296188_0:	d�,
while_lstm_cell_708_4296190_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_708_4296186:	�.
while_lstm_cell_708_4296188:	d�*
while_lstm_cell_708_4296190:	���+while/lstm_cell_708/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_708_4296186_0while_lstm_cell_708_4296188_0while_lstm_cell_708_4296190_0*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4296103�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_708/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_708/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_708/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_708_4296186while_lstm_cell_708_4296186_0"<
while_lstm_cell_708_4296188while_lstm_cell_708_4296188_0"<
while_lstm_cell_708_4296190while_lstm_cell_708_4296190_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_708/StatefulPartitionedCall+while/lstm_cell_708/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301121

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
�C
�

lstm_684_while_body_4298690.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_3-
)lstm_684_while_lstm_684_strided_slice_1_0i
elstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0:	�R
?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�M
>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
lstm_684_while_identity
lstm_684_while_identity_1
lstm_684_while_identity_2
lstm_684_while_identity_3
lstm_684_while_identity_4
lstm_684_while_identity_5+
'lstm_684_while_lstm_684_strided_slice_1g
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorN
;lstm_684_while_lstm_cell_708_matmul_readvariableop_resource:	�P
=lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource:	d�K
<lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource:	���3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp�2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp�4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp�
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0lstm_684_while_placeholderIlstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_684/while/lstm_cell_708/MatMulMatMul9lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_684/while/lstm_cell_708/MatMul_1MatMullstm_684_while_placeholder_2<lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_684/while/lstm_cell_708/addAddV2-lstm_684/while/lstm_cell_708/MatMul:product:0/lstm_684/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_684/while/lstm_cell_708/BiasAddBiasAdd$lstm_684/while/lstm_cell_708/add:z:0;lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_684/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_684/while/lstm_cell_708/splitSplit5lstm_684/while/lstm_cell_708/split/split_dim:output:0-lstm_684/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_684/while/lstm_cell_708/SigmoidSigmoid+lstm_684/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_684/while/lstm_cell_708/Sigmoid_1Sigmoid+lstm_684/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_684/while/lstm_cell_708/mulMul*lstm_684/while/lstm_cell_708/Sigmoid_1:y:0lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_684/while/lstm_cell_708/ReluRelu+lstm_684/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/mul_1Mul(lstm_684/while/lstm_cell_708/Sigmoid:y:0/lstm_684/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/add_1AddV2$lstm_684/while/lstm_cell_708/mul:z:0&lstm_684/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_684/while/lstm_cell_708/Sigmoid_2Sigmoid+lstm_684/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_684/while/lstm_cell_708/Relu_1Relu&lstm_684/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_684/while/lstm_cell_708/mul_2Mul*lstm_684/while/lstm_cell_708/Sigmoid_2:y:01lstm_684/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_684_while_placeholder_1lstm_684_while_placeholder&lstm_684/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_684/while/addAddV2lstm_684_while_placeholderlstm_684/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_684/while/add_1AddV2*lstm_684_while_lstm_684_while_loop_counterlstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_684/while/IdentityIdentitylstm_684/while/add_1:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_1Identity0lstm_684_while_lstm_684_while_maximum_iterations^lstm_684/while/NoOp*
T0*
_output_shapes
: t
lstm_684/while/Identity_2Identitylstm_684/while/add:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_3IdentityClstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_684/while/NoOp*
T0*
_output_shapes
: �
lstm_684/while/Identity_4Identity&lstm_684/while/lstm_cell_708/mul_2:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_684/while/Identity_5Identity&lstm_684/while/lstm_cell_708/add_1:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_684/while/NoOpNoOp4^lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp3^lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp5^lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_684_while_identity lstm_684/while/Identity:output:0"?
lstm_684_while_identity_1"lstm_684/while/Identity_1:output:0"?
lstm_684_while_identity_2"lstm_684/while/Identity_2:output:0"?
lstm_684_while_identity_3"lstm_684/while/Identity_3:output:0"?
lstm_684_while_identity_4"lstm_684/while/Identity_4:output:0"?
lstm_684_while_identity_5"lstm_684/while/Identity_5:output:0"T
'lstm_684_while_lstm_684_strided_slice_1)lstm_684_while_lstm_684_strided_slice_1_0"~
<lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource>lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0"�
=lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource?lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0"|
;lstm_684_while_lstm_cell_708_matmul_readvariableop_resource=lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0"�
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp3lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp2h
2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp2lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp2l
4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp4lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4299861
inputs_0?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4299777*
condR
while_cond_4299776*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298085
lstm_684_input#
lstm_684_4298058:	�#
lstm_684_4298060:	d�
lstm_684_4298062:	�#
lstm_685_4298065:	d�#
lstm_685_4298067:	2�
lstm_685_4298069:	�"
lstm_686_4298072:2("
lstm_686_4298074:
(
lstm_686_4298076:(#
dense_228_4298079:

dense_228_4298081:
identity��!dense_228/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall� lstm_686/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCalllstm_684_inputlstm_684_4298058lstm_684_4298060lstm_684_4298062*
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297089�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0lstm_685_4298065lstm_685_4298067lstm_685_4298069*
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297239�
 lstm_686/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0lstm_686_4298072lstm_686_4298074lstm_686_4298076*
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297389�
!dense_228/StatefulPartitionedCallStatefulPartitionedCall)lstm_686/StatefulPartitionedCall:output:0dense_228_4298079dense_228_4298081*
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407y
IdentityIdentity*dense_228/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_228/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall!^lstm_686/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_228/StatefulPartitionedCall!dense_228/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall2D
 lstm_686/StatefulPartitionedCall lstm_686/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_684_input
�T
�
*sequential_228_lstm_685_while_body_4295661L
Hsequential_228_lstm_685_while_sequential_228_lstm_685_while_loop_counterR
Nsequential_228_lstm_685_while_sequential_228_lstm_685_while_maximum_iterations-
)sequential_228_lstm_685_while_placeholder/
+sequential_228_lstm_685_while_placeholder_1/
+sequential_228_lstm_685_while_placeholder_2/
+sequential_228_lstm_685_while_placeholder_3K
Gsequential_228_lstm_685_while_sequential_228_lstm_685_strided_slice_1_0�
�sequential_228_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_685_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_228_lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0:	d�a
Nsequential_228_lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�\
Msequential_228_lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0:	�*
&sequential_228_lstm_685_while_identity,
(sequential_228_lstm_685_while_identity_1,
(sequential_228_lstm_685_while_identity_2,
(sequential_228_lstm_685_while_identity_3,
(sequential_228_lstm_685_while_identity_4,
(sequential_228_lstm_685_while_identity_5I
Esequential_228_lstm_685_while_sequential_228_lstm_685_strided_slice_1�
�sequential_228_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_685_tensorarrayunstack_tensorlistfromtensor]
Jsequential_228_lstm_685_while_lstm_cell_709_matmul_readvariableop_resource:	d�_
Lsequential_228_lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource:	2�Z
Ksequential_228_lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource:	���Bsequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp�Asequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp�Csequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp�
Osequential_228/lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_228/lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_228_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_685_tensorarrayunstack_tensorlistfromtensor_0)sequential_228_lstm_685_while_placeholderXsequential_228/lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOpLsequential_228_lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_228/lstm_685/while/lstm_cell_709/MatMulMatMulHsequential_228/lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOpNsequential_228_lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_228/lstm_685/while/lstm_cell_709/MatMul_1MatMul+sequential_228_lstm_685_while_placeholder_2Ksequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_228/lstm_685/while/lstm_cell_709/addAddV2<sequential_228/lstm_685/while/lstm_cell_709/MatMul:product:0>sequential_228/lstm_685/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOpMsequential_228_lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_228/lstm_685/while/lstm_cell_709/BiasAddBiasAdd3sequential_228/lstm_685/while/lstm_cell_709/add:z:0Jsequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_228/lstm_685/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_228/lstm_685/while/lstm_cell_709/splitSplitDsequential_228/lstm_685/while/lstm_cell_709/split/split_dim:output:0<sequential_228/lstm_685/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_228/lstm_685/while/lstm_cell_709/SigmoidSigmoid:sequential_228/lstm_685/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_228/lstm_685/while/lstm_cell_709/Sigmoid_1Sigmoid:sequential_228/lstm_685/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_228/lstm_685/while/lstm_cell_709/mulMul9sequential_228/lstm_685/while/lstm_cell_709/Sigmoid_1:y:0+sequential_228_lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_228/lstm_685/while/lstm_cell_709/ReluRelu:sequential_228/lstm_685/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_228/lstm_685/while/lstm_cell_709/mul_1Mul7sequential_228/lstm_685/while/lstm_cell_709/Sigmoid:y:0>sequential_228/lstm_685/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_228/lstm_685/while/lstm_cell_709/add_1AddV23sequential_228/lstm_685/while/lstm_cell_709/mul:z:05sequential_228/lstm_685/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_228/lstm_685/while/lstm_cell_709/Sigmoid_2Sigmoid:sequential_228/lstm_685/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_228/lstm_685/while/lstm_cell_709/Relu_1Relu5sequential_228/lstm_685/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_228/lstm_685/while/lstm_cell_709/mul_2Mul9sequential_228/lstm_685/while/lstm_cell_709/Sigmoid_2:y:0@sequential_228/lstm_685/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_228/lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_228_lstm_685_while_placeholder_1)sequential_228_lstm_685_while_placeholder5sequential_228/lstm_685/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_228/lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_228/lstm_685/while/addAddV2)sequential_228_lstm_685_while_placeholder,sequential_228/lstm_685/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_228/lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_228/lstm_685/while/add_1AddV2Hsequential_228_lstm_685_while_sequential_228_lstm_685_while_loop_counter.sequential_228/lstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_228/lstm_685/while/IdentityIdentity'sequential_228/lstm_685/while/add_1:z:0#^sequential_228/lstm_685/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_685/while/Identity_1IdentityNsequential_228_lstm_685_while_sequential_228_lstm_685_while_maximum_iterations#^sequential_228/lstm_685/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_685/while/Identity_2Identity%sequential_228/lstm_685/while/add:z:0#^sequential_228/lstm_685/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_685/while/Identity_3IdentityRsequential_228/lstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_228/lstm_685/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_685/while/Identity_4Identity5sequential_228/lstm_685/while/lstm_cell_709/mul_2:z:0#^sequential_228/lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_228/lstm_685/while/Identity_5Identity5sequential_228/lstm_685/while/lstm_cell_709/add_1:z:0#^sequential_228/lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_228/lstm_685/while/NoOpNoOpC^sequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOpB^sequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOpD^sequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_228_lstm_685_while_identity/sequential_228/lstm_685/while/Identity:output:0"]
(sequential_228_lstm_685_while_identity_11sequential_228/lstm_685/while/Identity_1:output:0"]
(sequential_228_lstm_685_while_identity_21sequential_228/lstm_685/while/Identity_2:output:0"]
(sequential_228_lstm_685_while_identity_31sequential_228/lstm_685/while/Identity_3:output:0"]
(sequential_228_lstm_685_while_identity_41sequential_228/lstm_685/while/Identity_4:output:0"]
(sequential_228_lstm_685_while_identity_51sequential_228/lstm_685/while/Identity_5:output:0"�
Ksequential_228_lstm_685_while_lstm_cell_709_biasadd_readvariableop_resourceMsequential_228_lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0"�
Lsequential_228_lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resourceNsequential_228_lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0"�
Jsequential_228_lstm_685_while_lstm_cell_709_matmul_readvariableop_resourceLsequential_228_lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0"�
Esequential_228_lstm_685_while_sequential_228_lstm_685_strided_slice_1Gsequential_228_lstm_685_while_sequential_228_lstm_685_strided_slice_1_0"�
�sequential_228_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_685_tensorarrayunstack_tensorlistfromtensor�sequential_228_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOpBsequential_228/lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp2�
Asequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOpAsequential_228/lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp2�
Csequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOpCsequential_228/lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4296931

inputs'
lstm_cell_710_4296849:2('
lstm_cell_710_4296851:
(#
lstm_cell_710_4296853:(
identity��%lstm_cell_710/StatefulPartitionedCall�while;
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
%lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_710_4296849lstm_cell_710_4296851lstm_cell_710_4296853*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296803n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_710_4296849lstm_cell_710_4296851lstm_cell_710_4296853*
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
while_body_4296862*
condR
while_cond_4296861*K
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
NoOpNoOp&^lstm_cell_710/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_710/StatefulPartitionedCall%lstm_cell_710/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
��
�
K__inference_sequential_228_layer_call_and_return_conditional_losses_4299058

inputsH
5lstm_684_lstm_cell_708_matmul_readvariableop_resource:	�J
7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource:	d�E
6lstm_684_lstm_cell_708_biasadd_readvariableop_resource:	�H
5lstm_685_lstm_cell_709_matmul_readvariableop_resource:	d�J
7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource:	2�E
6lstm_685_lstm_cell_709_biasadd_readvariableop_resource:	�G
5lstm_686_lstm_cell_710_matmul_readvariableop_resource:2(I
7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource:
(D
6lstm_686_lstm_cell_710_biasadd_readvariableop_resource:(:
(dense_228_matmul_readvariableop_resource:
7
)dense_228_biasadd_readvariableop_resource:
identity�� dense_228/BiasAdd/ReadVariableOp�dense_228/MatMul/ReadVariableOp�-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp�,lstm_684/lstm_cell_708/MatMul/ReadVariableOp�.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp�lstm_684/while�-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp�,lstm_685/lstm_cell_709/MatMul/ReadVariableOp�.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp�lstm_685/while�-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp�,lstm_686/lstm_cell_710/MatMul/ReadVariableOp�.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp�lstm_686/whileD
lstm_684/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_sliceStridedSlicelstm_684/Shape:output:0%lstm_684/strided_slice/stack:output:0'lstm_684/strided_slice/stack_1:output:0'lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_684/zeros/packedPacklstm_684/strided_slice:output:0 lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_684/zerosFilllstm_684/zeros/packed:output:0lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_684/zeros_1/packedPacklstm_684/strided_slice:output:0"lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_684/zeros_1Fill lstm_684/zeros_1/packed:output:0lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_684/transpose	Transposeinputs lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_684/Shape_1Shapelstm_684/transpose:y:0*
T0*
_output_shapes
:h
lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_1StridedSlicelstm_684/Shape_1:output:0'lstm_684/strided_slice_1/stack:output:0)lstm_684/strided_slice_1/stack_1:output:0)lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_684/TensorArrayV2TensorListReserve-lstm_684/TensorArrayV2/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_684/transpose:y:0Glstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_2StridedSlicelstm_684/transpose:y:0'lstm_684/strided_slice_2/stack:output:0)lstm_684/strided_slice_2/stack_1:output:0)lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_684/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp5lstm_684_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_684/lstm_cell_708/MatMulMatMul!lstm_684/strided_slice_2:output:04lstm_684/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_684/lstm_cell_708/MatMul_1MatMullstm_684/zeros:output:06lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_684/lstm_cell_708/addAddV2'lstm_684/lstm_cell_708/MatMul:product:0)lstm_684/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp6lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_684/lstm_cell_708/BiasAddBiasAddlstm_684/lstm_cell_708/add:z:05lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_684/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_684/lstm_cell_708/splitSplit/lstm_684/lstm_cell_708/split/split_dim:output:0'lstm_684/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_684/lstm_cell_708/SigmoidSigmoid%lstm_684/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_684/lstm_cell_708/Sigmoid_1Sigmoid%lstm_684/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mulMul$lstm_684/lstm_cell_708/Sigmoid_1:y:0lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_684/lstm_cell_708/ReluRelu%lstm_684/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mul_1Mul"lstm_684/lstm_cell_708/Sigmoid:y:0)lstm_684/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/add_1AddV2lstm_684/lstm_cell_708/mul:z:0 lstm_684/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_684/lstm_cell_708/Sigmoid_2Sigmoid%lstm_684/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_684/lstm_cell_708/Relu_1Relu lstm_684/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mul_2Mul$lstm_684/lstm_cell_708/Sigmoid_2:y:0+lstm_684/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_684/TensorArrayV2_1TensorListReserve/lstm_684/TensorArrayV2_1/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_684/whileWhile$lstm_684/while/loop_counter:output:0*lstm_684/while/maximum_iterations:output:0lstm_684/time:output:0!lstm_684/TensorArrayV2_1:handle:0lstm_684/zeros:output:0lstm_684/zeros_1:output:0!lstm_684/strided_slice_1:output:0@lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_684_lstm_cell_708_matmul_readvariableop_resource7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource6lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
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
lstm_684_while_body_4298690*'
condR
lstm_684_while_cond_4298689*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_684/TensorArrayV2Stack/TensorListStackTensorListStacklstm_684/while:output:3Blstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_3StridedSlice4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_684/strided_slice_3/stack:output:0)lstm_684/strided_slice_3/stack_1:output:0)lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_684/transpose_1	Transpose4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_685/ShapeShapelstm_684/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_sliceStridedSlicelstm_685/Shape:output:0%lstm_685/strided_slice/stack:output:0'lstm_685/strided_slice/stack_1:output:0'lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_685/zeros/packedPacklstm_685/strided_slice:output:0 lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_685/zerosFilllstm_685/zeros/packed:output:0lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_685/zeros_1/packedPacklstm_685/strided_slice:output:0"lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_685/zeros_1Fill lstm_685/zeros_1/packed:output:0lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_685/transpose	Transposelstm_684/transpose_1:y:0 lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_685/Shape_1Shapelstm_685/transpose:y:0*
T0*
_output_shapes
:h
lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_1StridedSlicelstm_685/Shape_1:output:0'lstm_685/strided_slice_1/stack:output:0)lstm_685/strided_slice_1/stack_1:output:0)lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_685/TensorArrayV2TensorListReserve-lstm_685/TensorArrayV2/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_685/transpose:y:0Glstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_2StridedSlicelstm_685/transpose:y:0'lstm_685/strided_slice_2/stack:output:0)lstm_685/strided_slice_2/stack_1:output:0)lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_685/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp5lstm_685_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_685/lstm_cell_709/MatMulMatMul!lstm_685/strided_slice_2:output:04lstm_685/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_685/lstm_cell_709/MatMul_1MatMullstm_685/zeros:output:06lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_685/lstm_cell_709/addAddV2'lstm_685/lstm_cell_709/MatMul:product:0)lstm_685/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp6lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_685/lstm_cell_709/BiasAddBiasAddlstm_685/lstm_cell_709/add:z:05lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_685/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_685/lstm_cell_709/splitSplit/lstm_685/lstm_cell_709/split/split_dim:output:0'lstm_685/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_685/lstm_cell_709/SigmoidSigmoid%lstm_685/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_685/lstm_cell_709/Sigmoid_1Sigmoid%lstm_685/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mulMul$lstm_685/lstm_cell_709/Sigmoid_1:y:0lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_685/lstm_cell_709/ReluRelu%lstm_685/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mul_1Mul"lstm_685/lstm_cell_709/Sigmoid:y:0)lstm_685/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/add_1AddV2lstm_685/lstm_cell_709/mul:z:0 lstm_685/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_685/lstm_cell_709/Sigmoid_2Sigmoid%lstm_685/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_685/lstm_cell_709/Relu_1Relu lstm_685/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mul_2Mul$lstm_685/lstm_cell_709/Sigmoid_2:y:0+lstm_685/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_685/TensorArrayV2_1TensorListReserve/lstm_685/TensorArrayV2_1/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_685/whileWhile$lstm_685/while/loop_counter:output:0*lstm_685/while/maximum_iterations:output:0lstm_685/time:output:0!lstm_685/TensorArrayV2_1:handle:0lstm_685/zeros:output:0lstm_685/zeros_1:output:0!lstm_685/strided_slice_1:output:0@lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_685_lstm_cell_709_matmul_readvariableop_resource7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource6lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
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
lstm_685_while_body_4298829*'
condR
lstm_685_while_cond_4298828*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_685/TensorArrayV2Stack/TensorListStackTensorListStacklstm_685/while:output:3Blstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_3StridedSlice4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_685/strided_slice_3/stack:output:0)lstm_685/strided_slice_3/stack_1:output:0)lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_685/transpose_1	Transpose4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_686/ShapeShapelstm_685/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_686/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_686/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_686/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_sliceStridedSlicelstm_686/Shape:output:0%lstm_686/strided_slice/stack:output:0'lstm_686/strided_slice/stack_1:output:0'lstm_686/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_686/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_686/zeros/packedPacklstm_686/strided_slice:output:0 lstm_686/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_686/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_686/zerosFilllstm_686/zeros/packed:output:0lstm_686/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_686/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_686/zeros_1/packedPacklstm_686/strided_slice:output:0"lstm_686/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_686/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_686/zeros_1Fill lstm_686/zeros_1/packed:output:0lstm_686/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_686/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_686/transpose	Transposelstm_685/transpose_1:y:0 lstm_686/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_686/Shape_1Shapelstm_686/transpose:y:0*
T0*
_output_shapes
:h
lstm_686/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_686/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_1StridedSlicelstm_686/Shape_1:output:0'lstm_686/strided_slice_1/stack:output:0)lstm_686/strided_slice_1/stack_1:output:0)lstm_686/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_686/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_686/TensorArrayV2TensorListReserve-lstm_686/TensorArrayV2/element_shape:output:0!lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_686/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_686/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_686/transpose:y:0Glstm_686/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_686/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_686/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_2StridedSlicelstm_686/transpose:y:0'lstm_686/strided_slice_2/stack:output:0)lstm_686/strided_slice_2/stack_1:output:0)lstm_686/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_686/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp5lstm_686_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_686/lstm_cell_710/MatMulMatMul!lstm_686/strided_slice_2:output:04lstm_686/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_686/lstm_cell_710/MatMul_1MatMullstm_686/zeros:output:06lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_686/lstm_cell_710/addAddV2'lstm_686/lstm_cell_710/MatMul:product:0)lstm_686/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp6lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_686/lstm_cell_710/BiasAddBiasAddlstm_686/lstm_cell_710/add:z:05lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_686/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_686/lstm_cell_710/splitSplit/lstm_686/lstm_cell_710/split/split_dim:output:0'lstm_686/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_686/lstm_cell_710/SigmoidSigmoid%lstm_686/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_686/lstm_cell_710/Sigmoid_1Sigmoid%lstm_686/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mulMul$lstm_686/lstm_cell_710/Sigmoid_1:y:0lstm_686/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_686/lstm_cell_710/ReluRelu%lstm_686/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mul_1Mul"lstm_686/lstm_cell_710/Sigmoid:y:0)lstm_686/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/add_1AddV2lstm_686/lstm_cell_710/mul:z:0 lstm_686/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_686/lstm_cell_710/Sigmoid_2Sigmoid%lstm_686/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_686/lstm_cell_710/Relu_1Relu lstm_686/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mul_2Mul$lstm_686/lstm_cell_710/Sigmoid_2:y:0+lstm_686/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_686/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_686/TensorArrayV2_1TensorListReserve/lstm_686/TensorArrayV2_1/element_shape:output:0!lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_686/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_686/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_686/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_686/whileWhile$lstm_686/while/loop_counter:output:0*lstm_686/while/maximum_iterations:output:0lstm_686/time:output:0!lstm_686/TensorArrayV2_1:handle:0lstm_686/zeros:output:0lstm_686/zeros_1:output:0!lstm_686/strided_slice_1:output:0@lstm_686/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_686_lstm_cell_710_matmul_readvariableop_resource7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource6lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
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
lstm_686_while_body_4298968*'
condR
lstm_686_while_cond_4298967*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_686/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_686/TensorArrayV2Stack/TensorListStackTensorListStacklstm_686/while:output:3Blstm_686/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_686/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_686/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_3StridedSlice4lstm_686/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_686/strided_slice_3/stack:output:0)lstm_686/strided_slice_3/stack_1:output:0)lstm_686/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_686/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_686/transpose_1	Transpose4lstm_686/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_686/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_686/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_228/MatMul/ReadVariableOpReadVariableOp(dense_228_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_228/MatMulMatMul!lstm_686/strided_slice_3:output:0'dense_228/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_228/BiasAdd/ReadVariableOpReadVariableOp)dense_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_228/BiasAddBiasAdddense_228/MatMul:product:0(dense_228/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_228/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_228/BiasAdd/ReadVariableOp ^dense_228/MatMul/ReadVariableOp.^lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp-^lstm_684/lstm_cell_708/MatMul/ReadVariableOp/^lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp^lstm_684/while.^lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp-^lstm_685/lstm_cell_709/MatMul/ReadVariableOp/^lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp^lstm_685/while.^lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp-^lstm_686/lstm_cell_710/MatMul/ReadVariableOp/^lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp^lstm_686/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_228/BiasAdd/ReadVariableOp dense_228/BiasAdd/ReadVariableOp2B
dense_228/MatMul/ReadVariableOpdense_228/MatMul/ReadVariableOp2^
-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp2\
,lstm_684/lstm_cell_708/MatMul/ReadVariableOp,lstm_684/lstm_cell_708/MatMul/ReadVariableOp2`
.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp2 
lstm_684/whilelstm_684/while2^
-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp2\
,lstm_685/lstm_cell_709/MatMul/ReadVariableOp,lstm_685/lstm_cell_709/MatMul/ReadVariableOp2`
.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp2 
lstm_685/whilelstm_685/while2^
-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp2\
,lstm_686/lstm_cell_710/MatMul/ReadVariableOp,lstm_686/lstm_cell_710/MatMul/ReadVariableOp2`
.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp2 
lstm_686/whilelstm_686/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_4300206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_710_layer_call_fn_4301155

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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296803o
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
�
�
K__inference_sequential_228_layer_call_and_return_conditional_losses_4297414

inputs#
lstm_684_4297090:	�#
lstm_684_4297092:	d�
lstm_684_4297094:	�#
lstm_685_4297240:	d�#
lstm_685_4297242:	2�
lstm_685_4297244:	�"
lstm_686_4297390:2("
lstm_686_4297392:
(
lstm_686_4297394:(#
dense_228_4297408:

dense_228_4297410:
identity��!dense_228/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall� lstm_686/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCallinputslstm_684_4297090lstm_684_4297092lstm_684_4297094*
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297089�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0lstm_685_4297240lstm_685_4297242lstm_685_4297244*
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297239�
 lstm_686/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0lstm_686_4297390lstm_686_4297392lstm_686_4297394*
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297389�
!dense_228/StatefulPartitionedCallStatefulPartitionedCall)lstm_686/StatefulPartitionedCall:output:0dense_228_4297408dense_228_4297410*
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407y
IdentityIdentity*dense_228/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_228/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall!^lstm_686/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_228/StatefulPartitionedCall!dense_228/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall2D
 lstm_686/StatefulPartitionedCall lstm_686/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�T
�
*sequential_228_lstm_686_while_body_4295800L
Hsequential_228_lstm_686_while_sequential_228_lstm_686_while_loop_counterR
Nsequential_228_lstm_686_while_sequential_228_lstm_686_while_maximum_iterations-
)sequential_228_lstm_686_while_placeholder/
+sequential_228_lstm_686_while_placeholder_1/
+sequential_228_lstm_686_while_placeholder_2/
+sequential_228_lstm_686_while_placeholder_3K
Gsequential_228_lstm_686_while_sequential_228_lstm_686_strided_slice_1_0�
�sequential_228_lstm_686_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_686_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_228_lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0:2(`
Nsequential_228_lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
([
Msequential_228_lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0:(*
&sequential_228_lstm_686_while_identity,
(sequential_228_lstm_686_while_identity_1,
(sequential_228_lstm_686_while_identity_2,
(sequential_228_lstm_686_while_identity_3,
(sequential_228_lstm_686_while_identity_4,
(sequential_228_lstm_686_while_identity_5I
Esequential_228_lstm_686_while_sequential_228_lstm_686_strided_slice_1�
�sequential_228_lstm_686_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_686_tensorarrayunstack_tensorlistfromtensor\
Jsequential_228_lstm_686_while_lstm_cell_710_matmul_readvariableop_resource:2(^
Lsequential_228_lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource:
(Y
Ksequential_228_lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource:(��Bsequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp�Asequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp�Csequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp�
Osequential_228/lstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_228/lstm_686/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_228_lstm_686_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_686_tensorarrayunstack_tensorlistfromtensor_0)sequential_228_lstm_686_while_placeholderXsequential_228/lstm_686/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOpLsequential_228_lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_228/lstm_686/while/lstm_cell_710/MatMulMatMulHsequential_228/lstm_686/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOpNsequential_228_lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_228/lstm_686/while/lstm_cell_710/MatMul_1MatMul+sequential_228_lstm_686_while_placeholder_2Ksequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_228/lstm_686/while/lstm_cell_710/addAddV2<sequential_228/lstm_686/while/lstm_cell_710/MatMul:product:0>sequential_228/lstm_686/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOpMsequential_228_lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_228/lstm_686/while/lstm_cell_710/BiasAddBiasAdd3sequential_228/lstm_686/while/lstm_cell_710/add:z:0Jsequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_228/lstm_686/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_228/lstm_686/while/lstm_cell_710/splitSplitDsequential_228/lstm_686/while/lstm_cell_710/split/split_dim:output:0<sequential_228/lstm_686/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_228/lstm_686/while/lstm_cell_710/SigmoidSigmoid:sequential_228/lstm_686/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_228/lstm_686/while/lstm_cell_710/Sigmoid_1Sigmoid:sequential_228/lstm_686/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_228/lstm_686/while/lstm_cell_710/mulMul9sequential_228/lstm_686/while/lstm_cell_710/Sigmoid_1:y:0+sequential_228_lstm_686_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_228/lstm_686/while/lstm_cell_710/ReluRelu:sequential_228/lstm_686/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_228/lstm_686/while/lstm_cell_710/mul_1Mul7sequential_228/lstm_686/while/lstm_cell_710/Sigmoid:y:0>sequential_228/lstm_686/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_228/lstm_686/while/lstm_cell_710/add_1AddV23sequential_228/lstm_686/while/lstm_cell_710/mul:z:05sequential_228/lstm_686/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_228/lstm_686/while/lstm_cell_710/Sigmoid_2Sigmoid:sequential_228/lstm_686/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_228/lstm_686/while/lstm_cell_710/Relu_1Relu5sequential_228/lstm_686/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_228/lstm_686/while/lstm_cell_710/mul_2Mul9sequential_228/lstm_686/while/lstm_cell_710/Sigmoid_2:y:0@sequential_228/lstm_686/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_228/lstm_686/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_228_lstm_686_while_placeholder_1)sequential_228_lstm_686_while_placeholder5sequential_228/lstm_686/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_228/lstm_686/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_228/lstm_686/while/addAddV2)sequential_228_lstm_686_while_placeholder,sequential_228/lstm_686/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_228/lstm_686/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_228/lstm_686/while/add_1AddV2Hsequential_228_lstm_686_while_sequential_228_lstm_686_while_loop_counter.sequential_228/lstm_686/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_228/lstm_686/while/IdentityIdentity'sequential_228/lstm_686/while/add_1:z:0#^sequential_228/lstm_686/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_686/while/Identity_1IdentityNsequential_228_lstm_686_while_sequential_228_lstm_686_while_maximum_iterations#^sequential_228/lstm_686/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_686/while/Identity_2Identity%sequential_228/lstm_686/while/add:z:0#^sequential_228/lstm_686/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_686/while/Identity_3IdentityRsequential_228/lstm_686/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_228/lstm_686/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_686/while/Identity_4Identity5sequential_228/lstm_686/while/lstm_cell_710/mul_2:z:0#^sequential_228/lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_228/lstm_686/while/Identity_5Identity5sequential_228/lstm_686/while/lstm_cell_710/add_1:z:0#^sequential_228/lstm_686/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_228/lstm_686/while/NoOpNoOpC^sequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOpB^sequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOpD^sequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_228_lstm_686_while_identity/sequential_228/lstm_686/while/Identity:output:0"]
(sequential_228_lstm_686_while_identity_11sequential_228/lstm_686/while/Identity_1:output:0"]
(sequential_228_lstm_686_while_identity_21sequential_228/lstm_686/while/Identity_2:output:0"]
(sequential_228_lstm_686_while_identity_31sequential_228/lstm_686/while/Identity_3:output:0"]
(sequential_228_lstm_686_while_identity_41sequential_228/lstm_686/while/Identity_4:output:0"]
(sequential_228_lstm_686_while_identity_51sequential_228/lstm_686/while/Identity_5:output:0"�
Ksequential_228_lstm_686_while_lstm_cell_710_biasadd_readvariableop_resourceMsequential_228_lstm_686_while_lstm_cell_710_biasadd_readvariableop_resource_0"�
Lsequential_228_lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resourceNsequential_228_lstm_686_while_lstm_cell_710_matmul_1_readvariableop_resource_0"�
Jsequential_228_lstm_686_while_lstm_cell_710_matmul_readvariableop_resourceLsequential_228_lstm_686_while_lstm_cell_710_matmul_readvariableop_resource_0"�
Esequential_228_lstm_686_while_sequential_228_lstm_686_strided_slice_1Gsequential_228_lstm_686_while_sequential_228_lstm_686_strided_slice_1_0"�
�sequential_228_lstm_686_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_686_tensorarrayunstack_tensorlistfromtensor�sequential_228_lstm_686_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_686_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOpBsequential_228/lstm_686/while/lstm_cell_710/BiasAdd/ReadVariableOp2�
Asequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOpAsequential_228/lstm_686/while/lstm_cell_710/MatMul/ReadVariableOp2�
Csequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOpCsequential_228/lstm_686/while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_684_while_cond_4298689.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_30
,lstm_684_while_less_lstm_684_strided_slice_1G
Clstm_684_while_lstm_684_while_cond_4298689___redundant_placeholder0G
Clstm_684_while_lstm_684_while_cond_4298689___redundant_placeholder1G
Clstm_684_while_lstm_684_while_cond_4298689___redundant_placeholder2G
Clstm_684_while_lstm_684_while_cond_4298689___redundant_placeholder3
lstm_684_while_identity
�
lstm_684/while/LessLesslstm_684_while_placeholder,lstm_684_while_less_lstm_684_strided_slice_1*
T0*
_output_shapes
: ]
lstm_684/while/IdentityIdentitylstm_684/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_684_while_identity lstm_684/while/Identity:output:0*(
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
while_cond_4297004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297004___redundant_placeholder05
1while_while_cond_4297004___redundant_placeholder15
1while_while_cond_4297004___redundant_placeholder25
1while_while_cond_4297004___redundant_placeholder3
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
lstm_685_while_cond_4298828.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_30
,lstm_685_while_less_lstm_685_strided_slice_1G
Clstm_685_while_lstm_685_while_cond_4298828___redundant_placeholder0G
Clstm_685_while_lstm_685_while_cond_4298828___redundant_placeholder1G
Clstm_685_while_lstm_685_while_cond_4298828___redundant_placeholder2G
Clstm_685_while_lstm_685_while_cond_4298828___redundant_placeholder3
lstm_685_while_identity
�
lstm_685/while/LessLesslstm_685_while_placeholder,lstm_685_while_less_lstm_685_strided_slice_1*
T0*
_output_shapes
: ]
lstm_685/while/IdentityIdentitylstm_685/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_685_while_identity lstm_685/while/Identity:output:0*(
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
while_body_4295971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_708_4295995_0:	�0
while_lstm_cell_708_4295997_0:	d�,
while_lstm_cell_708_4295999_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_708_4295995:	�.
while_lstm_cell_708_4295997:	d�*
while_lstm_cell_708_4295999:	���+while/lstm_cell_708/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_708_4295995_0while_lstm_cell_708_4295997_0while_lstm_cell_708_4295999_0*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4295957�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_708/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_708/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_708/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_708_4295995while_lstm_cell_708_4295995_0"<
while_lstm_cell_708_4295997while_lstm_cell_708_4295997_0"<
while_lstm_cell_708_4295999while_lstm_cell_708_4295999_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_708/StatefulPartitionedCall+while/lstm_cell_708/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4297305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(��*while/lstm_cell_710/BiasAdd/ReadVariableOp�)while/lstm_cell_710/MatMul/ReadVariableOp�+while/lstm_cell_710/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297089

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4297005*
condR
while_cond_4297004*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4296161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4296161___redundant_placeholder05
1while_while_cond_4296161___redundant_placeholder15
1while_while_cond_4296161___redundant_placeholder25
1while_while_cond_4296161___redundant_placeholder3
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
��
�
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298631

inputsH
5lstm_684_lstm_cell_708_matmul_readvariableop_resource:	�J
7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource:	d�E
6lstm_684_lstm_cell_708_biasadd_readvariableop_resource:	�H
5lstm_685_lstm_cell_709_matmul_readvariableop_resource:	d�J
7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource:	2�E
6lstm_685_lstm_cell_709_biasadd_readvariableop_resource:	�G
5lstm_686_lstm_cell_710_matmul_readvariableop_resource:2(I
7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource:
(D
6lstm_686_lstm_cell_710_biasadd_readvariableop_resource:(:
(dense_228_matmul_readvariableop_resource:
7
)dense_228_biasadd_readvariableop_resource:
identity�� dense_228/BiasAdd/ReadVariableOp�dense_228/MatMul/ReadVariableOp�-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp�,lstm_684/lstm_cell_708/MatMul/ReadVariableOp�.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp�lstm_684/while�-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp�,lstm_685/lstm_cell_709/MatMul/ReadVariableOp�.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp�lstm_685/while�-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp�,lstm_686/lstm_cell_710/MatMul/ReadVariableOp�.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp�lstm_686/whileD
lstm_684/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_sliceStridedSlicelstm_684/Shape:output:0%lstm_684/strided_slice/stack:output:0'lstm_684/strided_slice/stack_1:output:0'lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_684/zeros/packedPacklstm_684/strided_slice:output:0 lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_684/zerosFilllstm_684/zeros/packed:output:0lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_684/zeros_1/packedPacklstm_684/strided_slice:output:0"lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_684/zeros_1Fill lstm_684/zeros_1/packed:output:0lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_684/transpose	Transposeinputs lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_684/Shape_1Shapelstm_684/transpose:y:0*
T0*
_output_shapes
:h
lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_1StridedSlicelstm_684/Shape_1:output:0'lstm_684/strided_slice_1/stack:output:0)lstm_684/strided_slice_1/stack_1:output:0)lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_684/TensorArrayV2TensorListReserve-lstm_684/TensorArrayV2/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_684/transpose:y:0Glstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_2StridedSlicelstm_684/transpose:y:0'lstm_684/strided_slice_2/stack:output:0)lstm_684/strided_slice_2/stack_1:output:0)lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_684/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp5lstm_684_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_684/lstm_cell_708/MatMulMatMul!lstm_684/strided_slice_2:output:04lstm_684/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_684/lstm_cell_708/MatMul_1MatMullstm_684/zeros:output:06lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_684/lstm_cell_708/addAddV2'lstm_684/lstm_cell_708/MatMul:product:0)lstm_684/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp6lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_684/lstm_cell_708/BiasAddBiasAddlstm_684/lstm_cell_708/add:z:05lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_684/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_684/lstm_cell_708/splitSplit/lstm_684/lstm_cell_708/split/split_dim:output:0'lstm_684/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_684/lstm_cell_708/SigmoidSigmoid%lstm_684/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_684/lstm_cell_708/Sigmoid_1Sigmoid%lstm_684/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mulMul$lstm_684/lstm_cell_708/Sigmoid_1:y:0lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_684/lstm_cell_708/ReluRelu%lstm_684/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mul_1Mul"lstm_684/lstm_cell_708/Sigmoid:y:0)lstm_684/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/add_1AddV2lstm_684/lstm_cell_708/mul:z:0 lstm_684/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_684/lstm_cell_708/Sigmoid_2Sigmoid%lstm_684/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_684/lstm_cell_708/Relu_1Relu lstm_684/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_684/lstm_cell_708/mul_2Mul$lstm_684/lstm_cell_708/Sigmoid_2:y:0+lstm_684/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_684/TensorArrayV2_1TensorListReserve/lstm_684/TensorArrayV2_1/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_684/whileWhile$lstm_684/while/loop_counter:output:0*lstm_684/while/maximum_iterations:output:0lstm_684/time:output:0!lstm_684/TensorArrayV2_1:handle:0lstm_684/zeros:output:0lstm_684/zeros_1:output:0!lstm_684/strided_slice_1:output:0@lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_684_lstm_cell_708_matmul_readvariableop_resource7lstm_684_lstm_cell_708_matmul_1_readvariableop_resource6lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
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
lstm_684_while_body_4298263*'
condR
lstm_684_while_cond_4298262*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_684/TensorArrayV2Stack/TensorListStackTensorListStacklstm_684/while:output:3Blstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_684/strided_slice_3StridedSlice4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_684/strided_slice_3/stack:output:0)lstm_684/strided_slice_3/stack_1:output:0)lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_684/transpose_1	Transpose4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_685/ShapeShapelstm_684/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_sliceStridedSlicelstm_685/Shape:output:0%lstm_685/strided_slice/stack:output:0'lstm_685/strided_slice/stack_1:output:0'lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_685/zeros/packedPacklstm_685/strided_slice:output:0 lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_685/zerosFilllstm_685/zeros/packed:output:0lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_685/zeros_1/packedPacklstm_685/strided_slice:output:0"lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_685/zeros_1Fill lstm_685/zeros_1/packed:output:0lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_685/transpose	Transposelstm_684/transpose_1:y:0 lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_685/Shape_1Shapelstm_685/transpose:y:0*
T0*
_output_shapes
:h
lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_1StridedSlicelstm_685/Shape_1:output:0'lstm_685/strided_slice_1/stack:output:0)lstm_685/strided_slice_1/stack_1:output:0)lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_685/TensorArrayV2TensorListReserve-lstm_685/TensorArrayV2/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_685/transpose:y:0Glstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_2StridedSlicelstm_685/transpose:y:0'lstm_685/strided_slice_2/stack:output:0)lstm_685/strided_slice_2/stack_1:output:0)lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_685/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp5lstm_685_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_685/lstm_cell_709/MatMulMatMul!lstm_685/strided_slice_2:output:04lstm_685/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_685/lstm_cell_709/MatMul_1MatMullstm_685/zeros:output:06lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_685/lstm_cell_709/addAddV2'lstm_685/lstm_cell_709/MatMul:product:0)lstm_685/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp6lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_685/lstm_cell_709/BiasAddBiasAddlstm_685/lstm_cell_709/add:z:05lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_685/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_685/lstm_cell_709/splitSplit/lstm_685/lstm_cell_709/split/split_dim:output:0'lstm_685/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_685/lstm_cell_709/SigmoidSigmoid%lstm_685/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_685/lstm_cell_709/Sigmoid_1Sigmoid%lstm_685/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mulMul$lstm_685/lstm_cell_709/Sigmoid_1:y:0lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_685/lstm_cell_709/ReluRelu%lstm_685/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mul_1Mul"lstm_685/lstm_cell_709/Sigmoid:y:0)lstm_685/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/add_1AddV2lstm_685/lstm_cell_709/mul:z:0 lstm_685/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_685/lstm_cell_709/Sigmoid_2Sigmoid%lstm_685/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_685/lstm_cell_709/Relu_1Relu lstm_685/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_685/lstm_cell_709/mul_2Mul$lstm_685/lstm_cell_709/Sigmoid_2:y:0+lstm_685/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_685/TensorArrayV2_1TensorListReserve/lstm_685/TensorArrayV2_1/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_685/whileWhile$lstm_685/while/loop_counter:output:0*lstm_685/while/maximum_iterations:output:0lstm_685/time:output:0!lstm_685/TensorArrayV2_1:handle:0lstm_685/zeros:output:0lstm_685/zeros_1:output:0!lstm_685/strided_slice_1:output:0@lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_685_lstm_cell_709_matmul_readvariableop_resource7lstm_685_lstm_cell_709_matmul_1_readvariableop_resource6lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
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
lstm_685_while_body_4298402*'
condR
lstm_685_while_cond_4298401*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_685/TensorArrayV2Stack/TensorListStackTensorListStacklstm_685/while:output:3Blstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_685/strided_slice_3StridedSlice4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_685/strided_slice_3/stack:output:0)lstm_685/strided_slice_3/stack_1:output:0)lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_685/transpose_1	Transpose4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_686/ShapeShapelstm_685/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_686/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_686/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_686/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_sliceStridedSlicelstm_686/Shape:output:0%lstm_686/strided_slice/stack:output:0'lstm_686/strided_slice/stack_1:output:0'lstm_686/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_686/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_686/zeros/packedPacklstm_686/strided_slice:output:0 lstm_686/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_686/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_686/zerosFilllstm_686/zeros/packed:output:0lstm_686/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_686/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_686/zeros_1/packedPacklstm_686/strided_slice:output:0"lstm_686/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_686/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_686/zeros_1Fill lstm_686/zeros_1/packed:output:0lstm_686/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_686/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_686/transpose	Transposelstm_685/transpose_1:y:0 lstm_686/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_686/Shape_1Shapelstm_686/transpose:y:0*
T0*
_output_shapes
:h
lstm_686/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_686/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_1StridedSlicelstm_686/Shape_1:output:0'lstm_686/strided_slice_1/stack:output:0)lstm_686/strided_slice_1/stack_1:output:0)lstm_686/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_686/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_686/TensorArrayV2TensorListReserve-lstm_686/TensorArrayV2/element_shape:output:0!lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_686/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_686/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_686/transpose:y:0Glstm_686/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_686/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_686/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_2StridedSlicelstm_686/transpose:y:0'lstm_686/strided_slice_2/stack:output:0)lstm_686/strided_slice_2/stack_1:output:0)lstm_686/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_686/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp5lstm_686_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_686/lstm_cell_710/MatMulMatMul!lstm_686/strided_slice_2:output:04lstm_686/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_686/lstm_cell_710/MatMul_1MatMullstm_686/zeros:output:06lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_686/lstm_cell_710/addAddV2'lstm_686/lstm_cell_710/MatMul:product:0)lstm_686/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp6lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_686/lstm_cell_710/BiasAddBiasAddlstm_686/lstm_cell_710/add:z:05lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_686/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_686/lstm_cell_710/splitSplit/lstm_686/lstm_cell_710/split/split_dim:output:0'lstm_686/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_686/lstm_cell_710/SigmoidSigmoid%lstm_686/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_686/lstm_cell_710/Sigmoid_1Sigmoid%lstm_686/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mulMul$lstm_686/lstm_cell_710/Sigmoid_1:y:0lstm_686/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_686/lstm_cell_710/ReluRelu%lstm_686/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mul_1Mul"lstm_686/lstm_cell_710/Sigmoid:y:0)lstm_686/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/add_1AddV2lstm_686/lstm_cell_710/mul:z:0 lstm_686/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_686/lstm_cell_710/Sigmoid_2Sigmoid%lstm_686/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_686/lstm_cell_710/Relu_1Relu lstm_686/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_686/lstm_cell_710/mul_2Mul$lstm_686/lstm_cell_710/Sigmoid_2:y:0+lstm_686/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_686/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_686/TensorArrayV2_1TensorListReserve/lstm_686/TensorArrayV2_1/element_shape:output:0!lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_686/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_686/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_686/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_686/whileWhile$lstm_686/while/loop_counter:output:0*lstm_686/while/maximum_iterations:output:0lstm_686/time:output:0!lstm_686/TensorArrayV2_1:handle:0lstm_686/zeros:output:0lstm_686/zeros_1:output:0!lstm_686/strided_slice_1:output:0@lstm_686/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_686_lstm_cell_710_matmul_readvariableop_resource7lstm_686_lstm_cell_710_matmul_1_readvariableop_resource6lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
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
lstm_686_while_body_4298541*'
condR
lstm_686_while_cond_4298540*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_686/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_686/TensorArrayV2Stack/TensorListStackTensorListStacklstm_686/while:output:3Blstm_686/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_686/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_686/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_686/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_686/strided_slice_3StridedSlice4lstm_686/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_686/strided_slice_3/stack:output:0)lstm_686/strided_slice_3/stack_1:output:0)lstm_686/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_686/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_686/transpose_1	Transpose4lstm_686/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_686/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_686/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_228/MatMul/ReadVariableOpReadVariableOp(dense_228_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_228/MatMulMatMul!lstm_686/strided_slice_3:output:0'dense_228/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_228/BiasAdd/ReadVariableOpReadVariableOp)dense_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_228/BiasAddBiasAdddense_228/MatMul:product:0(dense_228/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_228/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_228/BiasAdd/ReadVariableOp ^dense_228/MatMul/ReadVariableOp.^lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp-^lstm_684/lstm_cell_708/MatMul/ReadVariableOp/^lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp^lstm_684/while.^lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp-^lstm_685/lstm_cell_709/MatMul/ReadVariableOp/^lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp^lstm_685/while.^lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp-^lstm_686/lstm_cell_710/MatMul/ReadVariableOp/^lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp^lstm_686/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_228/BiasAdd/ReadVariableOp dense_228/BiasAdd/ReadVariableOp2B
dense_228/MatMul/ReadVariableOpdense_228/MatMul/ReadVariableOp2^
-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp-lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp2\
,lstm_684/lstm_cell_708/MatMul/ReadVariableOp,lstm_684/lstm_cell_708/MatMul/ReadVariableOp2`
.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp.lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp2 
lstm_684/whilelstm_684/while2^
-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp-lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp2\
,lstm_685/lstm_cell_709/MatMul/ReadVariableOp,lstm_685/lstm_cell_709/MatMul/ReadVariableOp2`
.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp.lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp2 
lstm_685/whilelstm_685/while2^
-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp-lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp2\
,lstm_686/lstm_cell_710/MatMul/ReadVariableOp,lstm_686/lstm_cell_710/MatMul/ReadVariableOp2`
.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp.lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp2 
lstm_686/whilelstm_686/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
F__inference_dense_228_layer_call_and_return_conditional_losses_4300925

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
while_cond_4299446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4299446___redundant_placeholder05
1while_while_cond_4299446___redundant_placeholder15
1while_while_cond_4299446___redundant_placeholder25
1while_while_cond_4299446___redundant_placeholder3
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
while_body_4299161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4299447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_685_layer_call_fn_4299707

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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297239s
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
�
�
/__inference_lstm_cell_710_layer_call_fn_4301138

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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296657o
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
�
*__inference_lstm_684_layer_call_fn_4299102

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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297935s
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297770

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4297686*
condR
while_cond_4297685*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_708_layer_call_fn_4300942

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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4295957o
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297935

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4297851*
condR
while_cond_4297850*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_4296671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_710_4296695_0:2(/
while_lstm_cell_710_4296697_0:
(+
while_lstm_cell_710_4296699_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_710_4296695:2(-
while_lstm_cell_710_4296697:
()
while_lstm_cell_710_4296699:(��+while/lstm_cell_710/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_710_4296695_0while_lstm_cell_710_4296697_0while_lstm_cell_710_4296699_0*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296657�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_710/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_710/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_710/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_710_4296695while_lstm_cell_710_4296695_0"<
while_lstm_cell_710_4296697while_lstm_cell_710_4296697_0"<
while_lstm_cell_710_4296699while_lstm_cell_710_4296699_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_710/StatefulPartitionedCall+while/lstm_cell_710/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299531

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4299447*
condR
while_cond_4299446*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_4299304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_685_while_body_4298829.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_3-
)lstm_685_while_lstm_685_strided_slice_1_0i
elstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0:	d�R
?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�M
>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
lstm_685_while_identity
lstm_685_while_identity_1
lstm_685_while_identity_2
lstm_685_while_identity_3
lstm_685_while_identity_4
lstm_685_while_identity_5+
'lstm_685_while_lstm_685_strided_slice_1g
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorN
;lstm_685_while_lstm_cell_709_matmul_readvariableop_resource:	d�P
=lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource:	2�K
<lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource:	���3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp�2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp�4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp�
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0lstm_685_while_placeholderIlstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_685/while/lstm_cell_709/MatMulMatMul9lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_685/while/lstm_cell_709/MatMul_1MatMullstm_685_while_placeholder_2<lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_685/while/lstm_cell_709/addAddV2-lstm_685/while/lstm_cell_709/MatMul:product:0/lstm_685/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_685/while/lstm_cell_709/BiasAddBiasAdd$lstm_685/while/lstm_cell_709/add:z:0;lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_685/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_685/while/lstm_cell_709/splitSplit5lstm_685/while/lstm_cell_709/split/split_dim:output:0-lstm_685/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_685/while/lstm_cell_709/SigmoidSigmoid+lstm_685/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_685/while/lstm_cell_709/Sigmoid_1Sigmoid+lstm_685/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_685/while/lstm_cell_709/mulMul*lstm_685/while/lstm_cell_709/Sigmoid_1:y:0lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_685/while/lstm_cell_709/ReluRelu+lstm_685/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/mul_1Mul(lstm_685/while/lstm_cell_709/Sigmoid:y:0/lstm_685/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/add_1AddV2$lstm_685/while/lstm_cell_709/mul:z:0&lstm_685/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_685/while/lstm_cell_709/Sigmoid_2Sigmoid+lstm_685/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_685/while/lstm_cell_709/Relu_1Relu&lstm_685/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_685/while/lstm_cell_709/mul_2Mul*lstm_685/while/lstm_cell_709/Sigmoid_2:y:01lstm_685/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_685_while_placeholder_1lstm_685_while_placeholder&lstm_685/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_685/while/addAddV2lstm_685_while_placeholderlstm_685/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_685/while/add_1AddV2*lstm_685_while_lstm_685_while_loop_counterlstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_685/while/IdentityIdentitylstm_685/while/add_1:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_1Identity0lstm_685_while_lstm_685_while_maximum_iterations^lstm_685/while/NoOp*
T0*
_output_shapes
: t
lstm_685/while/Identity_2Identitylstm_685/while/add:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_3IdentityClstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_685/while/NoOp*
T0*
_output_shapes
: �
lstm_685/while/Identity_4Identity&lstm_685/while/lstm_cell_709/mul_2:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_685/while/Identity_5Identity&lstm_685/while/lstm_cell_709/add_1:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_685/while/NoOpNoOp4^lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp3^lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp5^lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_685_while_identity lstm_685/while/Identity:output:0"?
lstm_685_while_identity_1"lstm_685/while/Identity_1:output:0"?
lstm_685_while_identity_2"lstm_685/while/Identity_2:output:0"?
lstm_685_while_identity_3"lstm_685/while/Identity_3:output:0"?
lstm_685_while_identity_4"lstm_685/while/Identity_4:output:0"?
lstm_685_while_identity_5"lstm_685/while/Identity_5:output:0"T
'lstm_685_while_lstm_685_strided_slice_1)lstm_685_while_lstm_685_strided_slice_1_0"~
<lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource>lstm_685_while_lstm_cell_709_biasadd_readvariableop_resource_0"�
=lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource?lstm_685_while_lstm_cell_709_matmul_1_readvariableop_resource_0"|
;lstm_685_while_lstm_cell_709_matmul_readvariableop_resource=lstm_685_while_lstm_cell_709_matmul_readvariableop_resource_0"�
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp3lstm_685/while/lstm_cell_709/BiasAdd/ReadVariableOp2h
2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp2lstm_685/while/lstm_cell_709/MatMul/ReadVariableOp2l
4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp4lstm_685/while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300763

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4300679*
condR
while_cond_4300678*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297239

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4297155*
condR
while_cond_4297154*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�J
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300290

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4300206*
condR
while_cond_4300205*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_684_layer_call_fn_4299080
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4296231|
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
�K
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300004
inputs_0?
,lstm_cell_709_matmul_readvariableop_resource:	d�A
.lstm_cell_709_matmul_1_readvariableop_resource:	2�<
-lstm_cell_709_biasadd_readvariableop_resource:	�
identity��$lstm_cell_709/BiasAdd/ReadVariableOp�#lstm_cell_709/MatMul/ReadVariableOp�%lstm_cell_709/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4299920*
condR
while_cond_4299919*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�K
�
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300620
inputs_0>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4300536*
condR
while_cond_4300535*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�

�
0__inference_sequential_228_layer_call_fn_4298177

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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4297414o
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
while_cond_4300062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4300062___redundant_placeholder05
1while_while_cond_4300062___redundant_placeholder15
1while_while_cond_4300062___redundant_placeholder25
1while_while_cond_4300062___redundant_placeholder3
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
"__inference__wrapped_model_4295890
lstm_684_inputW
Dsequential_228_lstm_684_lstm_cell_708_matmul_readvariableop_resource:	�Y
Fsequential_228_lstm_684_lstm_cell_708_matmul_1_readvariableop_resource:	d�T
Esequential_228_lstm_684_lstm_cell_708_biasadd_readvariableop_resource:	�W
Dsequential_228_lstm_685_lstm_cell_709_matmul_readvariableop_resource:	d�Y
Fsequential_228_lstm_685_lstm_cell_709_matmul_1_readvariableop_resource:	2�T
Esequential_228_lstm_685_lstm_cell_709_biasadd_readvariableop_resource:	�V
Dsequential_228_lstm_686_lstm_cell_710_matmul_readvariableop_resource:2(X
Fsequential_228_lstm_686_lstm_cell_710_matmul_1_readvariableop_resource:
(S
Esequential_228_lstm_686_lstm_cell_710_biasadd_readvariableop_resource:(I
7sequential_228_dense_228_matmul_readvariableop_resource:
F
8sequential_228_dense_228_biasadd_readvariableop_resource:
identity��/sequential_228/dense_228/BiasAdd/ReadVariableOp�.sequential_228/dense_228/MatMul/ReadVariableOp�<sequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp�;sequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOp�=sequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp�sequential_228/lstm_684/while�<sequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp�;sequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOp�=sequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp�sequential_228/lstm_685/while�<sequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp�;sequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOp�=sequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp�sequential_228/lstm_686/while[
sequential_228/lstm_684/ShapeShapelstm_684_input*
T0*
_output_shapes
:u
+sequential_228/lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_228/lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_228/lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_228/lstm_684/strided_sliceStridedSlice&sequential_228/lstm_684/Shape:output:04sequential_228/lstm_684/strided_slice/stack:output:06sequential_228/lstm_684/strided_slice/stack_1:output:06sequential_228/lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_228/lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_228/lstm_684/zeros/packedPack.sequential_228/lstm_684/strided_slice:output:0/sequential_228/lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_228/lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_684/zerosFill-sequential_228/lstm_684/zeros/packed:output:0,sequential_228/lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_228/lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_228/lstm_684/zeros_1/packedPack.sequential_228/lstm_684/strided_slice:output:01sequential_228/lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_228/lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_684/zeros_1Fill/sequential_228/lstm_684/zeros_1/packed:output:0.sequential_228/lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_228/lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_228/lstm_684/transpose	Transposelstm_684_input/sequential_228/lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_228/lstm_684/Shape_1Shape%sequential_228/lstm_684/transpose:y:0*
T0*
_output_shapes
:w
-sequential_228/lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_684/strided_slice_1StridedSlice(sequential_228/lstm_684/Shape_1:output:06sequential_228/lstm_684/strided_slice_1/stack:output:08sequential_228/lstm_684/strided_slice_1/stack_1:output:08sequential_228/lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_228/lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_228/lstm_684/TensorArrayV2TensorListReserve<sequential_228/lstm_684/TensorArrayV2/element_shape:output:00sequential_228/lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_228/lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_228/lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_228/lstm_684/transpose:y:0Vsequential_228/lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_228/lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_684/strided_slice_2StridedSlice%sequential_228/lstm_684/transpose:y:06sequential_228/lstm_684/strided_slice_2/stack:output:08sequential_228/lstm_684/strided_slice_2/stack_1:output:08sequential_228/lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOpReadVariableOpDsequential_228_lstm_684_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_228/lstm_684/lstm_cell_708/MatMulMatMul0sequential_228/lstm_684/strided_slice_2:output:0Csequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOpFsequential_228_lstm_684_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_228/lstm_684/lstm_cell_708/MatMul_1MatMul&sequential_228/lstm_684/zeros:output:0Esequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_228/lstm_684/lstm_cell_708/addAddV26sequential_228/lstm_684/lstm_cell_708/MatMul:product:08sequential_228/lstm_684/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOpEsequential_228_lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_228/lstm_684/lstm_cell_708/BiasAddBiasAdd-sequential_228/lstm_684/lstm_cell_708/add:z:0Dsequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_228/lstm_684/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_228/lstm_684/lstm_cell_708/splitSplit>sequential_228/lstm_684/lstm_cell_708/split/split_dim:output:06sequential_228/lstm_684/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_228/lstm_684/lstm_cell_708/SigmoidSigmoid4sequential_228/lstm_684/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_228/lstm_684/lstm_cell_708/Sigmoid_1Sigmoid4sequential_228/lstm_684/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_228/lstm_684/lstm_cell_708/mulMul3sequential_228/lstm_684/lstm_cell_708/Sigmoid_1:y:0(sequential_228/lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_228/lstm_684/lstm_cell_708/ReluRelu4sequential_228/lstm_684/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_228/lstm_684/lstm_cell_708/mul_1Mul1sequential_228/lstm_684/lstm_cell_708/Sigmoid:y:08sequential_228/lstm_684/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_228/lstm_684/lstm_cell_708/add_1AddV2-sequential_228/lstm_684/lstm_cell_708/mul:z:0/sequential_228/lstm_684/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_228/lstm_684/lstm_cell_708/Sigmoid_2Sigmoid4sequential_228/lstm_684/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_228/lstm_684/lstm_cell_708/Relu_1Relu/sequential_228/lstm_684/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_228/lstm_684/lstm_cell_708/mul_2Mul3sequential_228/lstm_684/lstm_cell_708/Sigmoid_2:y:0:sequential_228/lstm_684/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_228/lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_228/lstm_684/TensorArrayV2_1TensorListReserve>sequential_228/lstm_684/TensorArrayV2_1/element_shape:output:00sequential_228/lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_228/lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_228/lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_228/lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_228/lstm_684/whileWhile3sequential_228/lstm_684/while/loop_counter:output:09sequential_228/lstm_684/while/maximum_iterations:output:0%sequential_228/lstm_684/time:output:00sequential_228/lstm_684/TensorArrayV2_1:handle:0&sequential_228/lstm_684/zeros:output:0(sequential_228/lstm_684/zeros_1:output:00sequential_228/lstm_684/strided_slice_1:output:0Osequential_228/lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_228_lstm_684_lstm_cell_708_matmul_readvariableop_resourceFsequential_228_lstm_684_lstm_cell_708_matmul_1_readvariableop_resourceEsequential_228_lstm_684_lstm_cell_708_biasadd_readvariableop_resource*
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
*sequential_228_lstm_684_while_body_4295522*6
cond.R,
*sequential_228_lstm_684_while_cond_4295521*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_228/lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_228/lstm_684/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_228/lstm_684/while:output:3Qsequential_228/lstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_228/lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_228/lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_684/strided_slice_3StridedSliceCsequential_228/lstm_684/TensorArrayV2Stack/TensorListStack:tensor:06sequential_228/lstm_684/strided_slice_3/stack:output:08sequential_228/lstm_684/strided_slice_3/stack_1:output:08sequential_228/lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_228/lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_228/lstm_684/transpose_1	TransposeCsequential_228/lstm_684/TensorArrayV2Stack/TensorListStack:tensor:01sequential_228/lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_228/lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_228/lstm_685/ShapeShape'sequential_228/lstm_684/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_228/lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_228/lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_228/lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_228/lstm_685/strided_sliceStridedSlice&sequential_228/lstm_685/Shape:output:04sequential_228/lstm_685/strided_slice/stack:output:06sequential_228/lstm_685/strided_slice/stack_1:output:06sequential_228/lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_228/lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_228/lstm_685/zeros/packedPack.sequential_228/lstm_685/strided_slice:output:0/sequential_228/lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_228/lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_685/zerosFill-sequential_228/lstm_685/zeros/packed:output:0,sequential_228/lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_228/lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_228/lstm_685/zeros_1/packedPack.sequential_228/lstm_685/strided_slice:output:01sequential_228/lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_228/lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_685/zeros_1Fill/sequential_228/lstm_685/zeros_1/packed:output:0.sequential_228/lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_228/lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_228/lstm_685/transpose	Transpose'sequential_228/lstm_684/transpose_1:y:0/sequential_228/lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_228/lstm_685/Shape_1Shape%sequential_228/lstm_685/transpose:y:0*
T0*
_output_shapes
:w
-sequential_228/lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_685/strided_slice_1StridedSlice(sequential_228/lstm_685/Shape_1:output:06sequential_228/lstm_685/strided_slice_1/stack:output:08sequential_228/lstm_685/strided_slice_1/stack_1:output:08sequential_228/lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_228/lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_228/lstm_685/TensorArrayV2TensorListReserve<sequential_228/lstm_685/TensorArrayV2/element_shape:output:00sequential_228/lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_228/lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_228/lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_228/lstm_685/transpose:y:0Vsequential_228/lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_228/lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_685/strided_slice_2StridedSlice%sequential_228/lstm_685/transpose:y:06sequential_228/lstm_685/strided_slice_2/stack:output:08sequential_228/lstm_685/strided_slice_2/stack_1:output:08sequential_228/lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOpReadVariableOpDsequential_228_lstm_685_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_228/lstm_685/lstm_cell_709/MatMulMatMul0sequential_228/lstm_685/strided_slice_2:output:0Csequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOpFsequential_228_lstm_685_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_228/lstm_685/lstm_cell_709/MatMul_1MatMul&sequential_228/lstm_685/zeros:output:0Esequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_228/lstm_685/lstm_cell_709/addAddV26sequential_228/lstm_685/lstm_cell_709/MatMul:product:08sequential_228/lstm_685/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOpEsequential_228_lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_228/lstm_685/lstm_cell_709/BiasAddBiasAdd-sequential_228/lstm_685/lstm_cell_709/add:z:0Dsequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_228/lstm_685/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_228/lstm_685/lstm_cell_709/splitSplit>sequential_228/lstm_685/lstm_cell_709/split/split_dim:output:06sequential_228/lstm_685/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_228/lstm_685/lstm_cell_709/SigmoidSigmoid4sequential_228/lstm_685/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_228/lstm_685/lstm_cell_709/Sigmoid_1Sigmoid4sequential_228/lstm_685/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_228/lstm_685/lstm_cell_709/mulMul3sequential_228/lstm_685/lstm_cell_709/Sigmoid_1:y:0(sequential_228/lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_228/lstm_685/lstm_cell_709/ReluRelu4sequential_228/lstm_685/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_228/lstm_685/lstm_cell_709/mul_1Mul1sequential_228/lstm_685/lstm_cell_709/Sigmoid:y:08sequential_228/lstm_685/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_228/lstm_685/lstm_cell_709/add_1AddV2-sequential_228/lstm_685/lstm_cell_709/mul:z:0/sequential_228/lstm_685/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_228/lstm_685/lstm_cell_709/Sigmoid_2Sigmoid4sequential_228/lstm_685/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_228/lstm_685/lstm_cell_709/Relu_1Relu/sequential_228/lstm_685/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_228/lstm_685/lstm_cell_709/mul_2Mul3sequential_228/lstm_685/lstm_cell_709/Sigmoid_2:y:0:sequential_228/lstm_685/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_228/lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_228/lstm_685/TensorArrayV2_1TensorListReserve>sequential_228/lstm_685/TensorArrayV2_1/element_shape:output:00sequential_228/lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_228/lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_228/lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_228/lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_228/lstm_685/whileWhile3sequential_228/lstm_685/while/loop_counter:output:09sequential_228/lstm_685/while/maximum_iterations:output:0%sequential_228/lstm_685/time:output:00sequential_228/lstm_685/TensorArrayV2_1:handle:0&sequential_228/lstm_685/zeros:output:0(sequential_228/lstm_685/zeros_1:output:00sequential_228/lstm_685/strided_slice_1:output:0Osequential_228/lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_228_lstm_685_lstm_cell_709_matmul_readvariableop_resourceFsequential_228_lstm_685_lstm_cell_709_matmul_1_readvariableop_resourceEsequential_228_lstm_685_lstm_cell_709_biasadd_readvariableop_resource*
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
*sequential_228_lstm_685_while_body_4295661*6
cond.R,
*sequential_228_lstm_685_while_cond_4295660*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_228/lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_228/lstm_685/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_228/lstm_685/while:output:3Qsequential_228/lstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_228/lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_228/lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_685/strided_slice_3StridedSliceCsequential_228/lstm_685/TensorArrayV2Stack/TensorListStack:tensor:06sequential_228/lstm_685/strided_slice_3/stack:output:08sequential_228/lstm_685/strided_slice_3/stack_1:output:08sequential_228/lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_228/lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_228/lstm_685/transpose_1	TransposeCsequential_228/lstm_685/TensorArrayV2Stack/TensorListStack:tensor:01sequential_228/lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_228/lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_228/lstm_686/ShapeShape'sequential_228/lstm_685/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_228/lstm_686/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_228/lstm_686/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_228/lstm_686/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_228/lstm_686/strided_sliceStridedSlice&sequential_228/lstm_686/Shape:output:04sequential_228/lstm_686/strided_slice/stack:output:06sequential_228/lstm_686/strided_slice/stack_1:output:06sequential_228/lstm_686/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_228/lstm_686/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_228/lstm_686/zeros/packedPack.sequential_228/lstm_686/strided_slice:output:0/sequential_228/lstm_686/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_228/lstm_686/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_686/zerosFill-sequential_228/lstm_686/zeros/packed:output:0,sequential_228/lstm_686/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_228/lstm_686/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_228/lstm_686/zeros_1/packedPack.sequential_228/lstm_686/strided_slice:output:01sequential_228/lstm_686/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_228/lstm_686/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_228/lstm_686/zeros_1Fill/sequential_228/lstm_686/zeros_1/packed:output:0.sequential_228/lstm_686/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_228/lstm_686/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_228/lstm_686/transpose	Transpose'sequential_228/lstm_685/transpose_1:y:0/sequential_228/lstm_686/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_228/lstm_686/Shape_1Shape%sequential_228/lstm_686/transpose:y:0*
T0*
_output_shapes
:w
-sequential_228/lstm_686/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_686/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_686/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_686/strided_slice_1StridedSlice(sequential_228/lstm_686/Shape_1:output:06sequential_228/lstm_686/strided_slice_1/stack:output:08sequential_228/lstm_686/strided_slice_1/stack_1:output:08sequential_228/lstm_686/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_228/lstm_686/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_228/lstm_686/TensorArrayV2TensorListReserve<sequential_228/lstm_686/TensorArrayV2/element_shape:output:00sequential_228/lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_228/lstm_686/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_228/lstm_686/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_228/lstm_686/transpose:y:0Vsequential_228/lstm_686/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_228/lstm_686/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_686/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_228/lstm_686/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_686/strided_slice_2StridedSlice%sequential_228/lstm_686/transpose:y:06sequential_228/lstm_686/strided_slice_2/stack:output:08sequential_228/lstm_686/strided_slice_2/stack_1:output:08sequential_228/lstm_686/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOpReadVariableOpDsequential_228_lstm_686_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_228/lstm_686/lstm_cell_710/MatMulMatMul0sequential_228/lstm_686/strided_slice_2:output:0Csequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOpFsequential_228_lstm_686_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_228/lstm_686/lstm_cell_710/MatMul_1MatMul&sequential_228/lstm_686/zeros:output:0Esequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_228/lstm_686/lstm_cell_710/addAddV26sequential_228/lstm_686/lstm_cell_710/MatMul:product:08sequential_228/lstm_686/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOpEsequential_228_lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_228/lstm_686/lstm_cell_710/BiasAddBiasAdd-sequential_228/lstm_686/lstm_cell_710/add:z:0Dsequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_228/lstm_686/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_228/lstm_686/lstm_cell_710/splitSplit>sequential_228/lstm_686/lstm_cell_710/split/split_dim:output:06sequential_228/lstm_686/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_228/lstm_686/lstm_cell_710/SigmoidSigmoid4sequential_228/lstm_686/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_228/lstm_686/lstm_cell_710/Sigmoid_1Sigmoid4sequential_228/lstm_686/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_228/lstm_686/lstm_cell_710/mulMul3sequential_228/lstm_686/lstm_cell_710/Sigmoid_1:y:0(sequential_228/lstm_686/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_228/lstm_686/lstm_cell_710/ReluRelu4sequential_228/lstm_686/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_228/lstm_686/lstm_cell_710/mul_1Mul1sequential_228/lstm_686/lstm_cell_710/Sigmoid:y:08sequential_228/lstm_686/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_228/lstm_686/lstm_cell_710/add_1AddV2-sequential_228/lstm_686/lstm_cell_710/mul:z:0/sequential_228/lstm_686/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_228/lstm_686/lstm_cell_710/Sigmoid_2Sigmoid4sequential_228/lstm_686/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_228/lstm_686/lstm_cell_710/Relu_1Relu/sequential_228/lstm_686/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_228/lstm_686/lstm_cell_710/mul_2Mul3sequential_228/lstm_686/lstm_cell_710/Sigmoid_2:y:0:sequential_228/lstm_686/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_228/lstm_686/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_228/lstm_686/TensorArrayV2_1TensorListReserve>sequential_228/lstm_686/TensorArrayV2_1/element_shape:output:00sequential_228/lstm_686/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_228/lstm_686/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_228/lstm_686/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_228/lstm_686/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_228/lstm_686/whileWhile3sequential_228/lstm_686/while/loop_counter:output:09sequential_228/lstm_686/while/maximum_iterations:output:0%sequential_228/lstm_686/time:output:00sequential_228/lstm_686/TensorArrayV2_1:handle:0&sequential_228/lstm_686/zeros:output:0(sequential_228/lstm_686/zeros_1:output:00sequential_228/lstm_686/strided_slice_1:output:0Osequential_228/lstm_686/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_228_lstm_686_lstm_cell_710_matmul_readvariableop_resourceFsequential_228_lstm_686_lstm_cell_710_matmul_1_readvariableop_resourceEsequential_228_lstm_686_lstm_cell_710_biasadd_readvariableop_resource*
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
*sequential_228_lstm_686_while_body_4295800*6
cond.R,
*sequential_228_lstm_686_while_cond_4295799*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_228/lstm_686/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_228/lstm_686/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_228/lstm_686/while:output:3Qsequential_228/lstm_686/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_228/lstm_686/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_228/lstm_686/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_228/lstm_686/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_228/lstm_686/strided_slice_3StridedSliceCsequential_228/lstm_686/TensorArrayV2Stack/TensorListStack:tensor:06sequential_228/lstm_686/strided_slice_3/stack:output:08sequential_228/lstm_686/strided_slice_3/stack_1:output:08sequential_228/lstm_686/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_228/lstm_686/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_228/lstm_686/transpose_1	TransposeCsequential_228/lstm_686/TensorArrayV2Stack/TensorListStack:tensor:01sequential_228/lstm_686/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_228/lstm_686/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_228/dense_228/MatMul/ReadVariableOpReadVariableOp7sequential_228_dense_228_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_228/dense_228/MatMulMatMul0sequential_228/lstm_686/strided_slice_3:output:06sequential_228/dense_228/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_228/dense_228/BiasAdd/ReadVariableOpReadVariableOp8sequential_228_dense_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_228/dense_228/BiasAddBiasAdd)sequential_228/dense_228/MatMul:product:07sequential_228/dense_228/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_228/dense_228/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_228/dense_228/BiasAdd/ReadVariableOp/^sequential_228/dense_228/MatMul/ReadVariableOp=^sequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp<^sequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOp>^sequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp^sequential_228/lstm_684/while=^sequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp<^sequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOp>^sequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp^sequential_228/lstm_685/while=^sequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp<^sequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOp>^sequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp^sequential_228/lstm_686/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_228/dense_228/BiasAdd/ReadVariableOp/sequential_228/dense_228/BiasAdd/ReadVariableOp2`
.sequential_228/dense_228/MatMul/ReadVariableOp.sequential_228/dense_228/MatMul/ReadVariableOp2|
<sequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp<sequential_228/lstm_684/lstm_cell_708/BiasAdd/ReadVariableOp2z
;sequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOp;sequential_228/lstm_684/lstm_cell_708/MatMul/ReadVariableOp2~
=sequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp=sequential_228/lstm_684/lstm_cell_708/MatMul_1/ReadVariableOp2>
sequential_228/lstm_684/whilesequential_228/lstm_684/while2|
<sequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp<sequential_228/lstm_685/lstm_cell_709/BiasAdd/ReadVariableOp2z
;sequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOp;sequential_228/lstm_685/lstm_cell_709/MatMul/ReadVariableOp2~
=sequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp=sequential_228/lstm_685/lstm_cell_709/MatMul_1/ReadVariableOp2>
sequential_228/lstm_685/whilesequential_228/lstm_685/while2|
<sequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp<sequential_228/lstm_686/lstm_cell_710/BiasAdd/ReadVariableOp2z
;sequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOp;sequential_228/lstm_686/lstm_cell_710/MatMul/ReadVariableOp2~
=sequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp=sequential_228/lstm_686/lstm_cell_710/MatMul_1/ReadVariableOp2>
sequential_228/lstm_686/whilesequential_228/lstm_686/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_684_input
�J
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299674

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4299590*
condR
while_cond_4299589*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298115
lstm_684_input#
lstm_684_4298088:	�#
lstm_684_4298090:	d�
lstm_684_4298092:	�#
lstm_685_4298095:	d�#
lstm_685_4298097:	2�
lstm_685_4298099:	�"
lstm_686_4298102:2("
lstm_686_4298104:
(
lstm_686_4298106:(#
dense_228_4298109:

dense_228_4298111:
identity��!dense_228/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall� lstm_686/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCalllstm_684_inputlstm_684_4298088lstm_684_4298090lstm_684_4298092*
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4297935�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0lstm_685_4298095lstm_685_4298097lstm_685_4298099*
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4297770�
 lstm_686/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0lstm_686_4298102lstm_686_4298104lstm_686_4298106*
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297605�
!dense_228/StatefulPartitionedCallStatefulPartitionedCall)lstm_686/StatefulPartitionedCall:output:0dense_228_4298109dense_228_4298111*
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4297407y
IdentityIdentity*dense_228/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_228/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall!^lstm_686/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_228/StatefulPartitionedCall!dense_228/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall2D
 lstm_686/StatefulPartitionedCall lstm_686/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_684_input
�
�
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4295957

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
�
�
*sequential_228_lstm_686_while_cond_4295799L
Hsequential_228_lstm_686_while_sequential_228_lstm_686_while_loop_counterR
Nsequential_228_lstm_686_while_sequential_228_lstm_686_while_maximum_iterations-
)sequential_228_lstm_686_while_placeholder/
+sequential_228_lstm_686_while_placeholder_1/
+sequential_228_lstm_686_while_placeholder_2/
+sequential_228_lstm_686_while_placeholder_3N
Jsequential_228_lstm_686_while_less_sequential_228_lstm_686_strided_slice_1e
asequential_228_lstm_686_while_sequential_228_lstm_686_while_cond_4295799___redundant_placeholder0e
asequential_228_lstm_686_while_sequential_228_lstm_686_while_cond_4295799___redundant_placeholder1e
asequential_228_lstm_686_while_sequential_228_lstm_686_while_cond_4295799___redundant_placeholder2e
asequential_228_lstm_686_while_sequential_228_lstm_686_while_cond_4295799___redundant_placeholder3*
&sequential_228_lstm_686_while_identity
�
"sequential_228/lstm_686/while/LessLess)sequential_228_lstm_686_while_placeholderJsequential_228_lstm_686_while_less_sequential_228_lstm_686_strided_slice_1*
T0*
_output_shapes
: {
&sequential_228/lstm_686/while/IdentityIdentity&sequential_228/lstm_686/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_228_lstm_686_while_identity/sequential_228/lstm_686/while/Identity:output:0*(
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296307

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
�T
�
*sequential_228_lstm_684_while_body_4295522L
Hsequential_228_lstm_684_while_sequential_228_lstm_684_while_loop_counterR
Nsequential_228_lstm_684_while_sequential_228_lstm_684_while_maximum_iterations-
)sequential_228_lstm_684_while_placeholder/
+sequential_228_lstm_684_while_placeholder_1/
+sequential_228_lstm_684_while_placeholder_2/
+sequential_228_lstm_684_while_placeholder_3K
Gsequential_228_lstm_684_while_sequential_228_lstm_684_strided_slice_1_0�
�sequential_228_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_684_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_228_lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0:	�a
Nsequential_228_lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�\
Msequential_228_lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0:	�*
&sequential_228_lstm_684_while_identity,
(sequential_228_lstm_684_while_identity_1,
(sequential_228_lstm_684_while_identity_2,
(sequential_228_lstm_684_while_identity_3,
(sequential_228_lstm_684_while_identity_4,
(sequential_228_lstm_684_while_identity_5I
Esequential_228_lstm_684_while_sequential_228_lstm_684_strided_slice_1�
�sequential_228_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_684_tensorarrayunstack_tensorlistfromtensor]
Jsequential_228_lstm_684_while_lstm_cell_708_matmul_readvariableop_resource:	�_
Lsequential_228_lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource:	d�Z
Ksequential_228_lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource:	���Bsequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp�Asequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp�Csequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp�
Osequential_228/lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_228/lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_228_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_684_tensorarrayunstack_tensorlistfromtensor_0)sequential_228_lstm_684_while_placeholderXsequential_228/lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOpLsequential_228_lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_228/lstm_684/while/lstm_cell_708/MatMulMatMulHsequential_228/lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOpNsequential_228_lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_228/lstm_684/while/lstm_cell_708/MatMul_1MatMul+sequential_228_lstm_684_while_placeholder_2Ksequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_228/lstm_684/while/lstm_cell_708/addAddV2<sequential_228/lstm_684/while/lstm_cell_708/MatMul:product:0>sequential_228/lstm_684/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOpMsequential_228_lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_228/lstm_684/while/lstm_cell_708/BiasAddBiasAdd3sequential_228/lstm_684/while/lstm_cell_708/add:z:0Jsequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_228/lstm_684/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_228/lstm_684/while/lstm_cell_708/splitSplitDsequential_228/lstm_684/while/lstm_cell_708/split/split_dim:output:0<sequential_228/lstm_684/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_228/lstm_684/while/lstm_cell_708/SigmoidSigmoid:sequential_228/lstm_684/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_228/lstm_684/while/lstm_cell_708/Sigmoid_1Sigmoid:sequential_228/lstm_684/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_228/lstm_684/while/lstm_cell_708/mulMul9sequential_228/lstm_684/while/lstm_cell_708/Sigmoid_1:y:0+sequential_228_lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_228/lstm_684/while/lstm_cell_708/ReluRelu:sequential_228/lstm_684/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_228/lstm_684/while/lstm_cell_708/mul_1Mul7sequential_228/lstm_684/while/lstm_cell_708/Sigmoid:y:0>sequential_228/lstm_684/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_228/lstm_684/while/lstm_cell_708/add_1AddV23sequential_228/lstm_684/while/lstm_cell_708/mul:z:05sequential_228/lstm_684/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_228/lstm_684/while/lstm_cell_708/Sigmoid_2Sigmoid:sequential_228/lstm_684/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_228/lstm_684/while/lstm_cell_708/Relu_1Relu5sequential_228/lstm_684/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_228/lstm_684/while/lstm_cell_708/mul_2Mul9sequential_228/lstm_684/while/lstm_cell_708/Sigmoid_2:y:0@sequential_228/lstm_684/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_228/lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_228_lstm_684_while_placeholder_1)sequential_228_lstm_684_while_placeholder5sequential_228/lstm_684/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_228/lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_228/lstm_684/while/addAddV2)sequential_228_lstm_684_while_placeholder,sequential_228/lstm_684/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_228/lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_228/lstm_684/while/add_1AddV2Hsequential_228_lstm_684_while_sequential_228_lstm_684_while_loop_counter.sequential_228/lstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_228/lstm_684/while/IdentityIdentity'sequential_228/lstm_684/while/add_1:z:0#^sequential_228/lstm_684/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_684/while/Identity_1IdentityNsequential_228_lstm_684_while_sequential_228_lstm_684_while_maximum_iterations#^sequential_228/lstm_684/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_684/while/Identity_2Identity%sequential_228/lstm_684/while/add:z:0#^sequential_228/lstm_684/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_684/while/Identity_3IdentityRsequential_228/lstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_228/lstm_684/while/NoOp*
T0*
_output_shapes
: �
(sequential_228/lstm_684/while/Identity_4Identity5sequential_228/lstm_684/while/lstm_cell_708/mul_2:z:0#^sequential_228/lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_228/lstm_684/while/Identity_5Identity5sequential_228/lstm_684/while/lstm_cell_708/add_1:z:0#^sequential_228/lstm_684/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_228/lstm_684/while/NoOpNoOpC^sequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOpB^sequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOpD^sequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_228_lstm_684_while_identity/sequential_228/lstm_684/while/Identity:output:0"]
(sequential_228_lstm_684_while_identity_11sequential_228/lstm_684/while/Identity_1:output:0"]
(sequential_228_lstm_684_while_identity_21sequential_228/lstm_684/while/Identity_2:output:0"]
(sequential_228_lstm_684_while_identity_31sequential_228/lstm_684/while/Identity_3:output:0"]
(sequential_228_lstm_684_while_identity_41sequential_228/lstm_684/while/Identity_4:output:0"]
(sequential_228_lstm_684_while_identity_51sequential_228/lstm_684/while/Identity_5:output:0"�
Ksequential_228_lstm_684_while_lstm_cell_708_biasadd_readvariableop_resourceMsequential_228_lstm_684_while_lstm_cell_708_biasadd_readvariableop_resource_0"�
Lsequential_228_lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resourceNsequential_228_lstm_684_while_lstm_cell_708_matmul_1_readvariableop_resource_0"�
Jsequential_228_lstm_684_while_lstm_cell_708_matmul_readvariableop_resourceLsequential_228_lstm_684_while_lstm_cell_708_matmul_readvariableop_resource_0"�
Esequential_228_lstm_684_while_sequential_228_lstm_684_strided_slice_1Gsequential_228_lstm_684_while_sequential_228_lstm_684_strided_slice_1_0"�
�sequential_228_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_684_tensorarrayunstack_tensorlistfromtensor�sequential_228_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_228_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOpBsequential_228/lstm_684/while/lstm_cell_708/BiasAdd/ReadVariableOp2�
Asequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOpAsequential_228/lstm_684/while/lstm_cell_708/MatMul/ReadVariableOp2�
Csequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOpCsequential_228/lstm_684/while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299388
inputs_0?
,lstm_cell_708_matmul_readvariableop_resource:	�A
.lstm_cell_708_matmul_1_readvariableop_resource:	d�<
-lstm_cell_708_biasadd_readvariableop_resource:	�
identity��$lstm_cell_708/BiasAdd/ReadVariableOp�#lstm_cell_708/MatMul/ReadVariableOp�%lstm_cell_708/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4299304*
condR
while_cond_4299303*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�#
�
while_body_4296512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_709_4296536_0:	d�0
while_lstm_cell_709_4296538_0:	2�,
while_lstm_cell_709_4296540_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_709_4296536:	d�.
while_lstm_cell_709_4296538:	2�*
while_lstm_cell_709_4296540:	���+while/lstm_cell_709/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_709_4296536_0while_lstm_cell_709_4296538_0while_lstm_cell_709_4296540_0*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296453�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_709/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_709/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_709_4296536while_lstm_cell_709_4296536_0"<
while_lstm_cell_709_4296538while_lstm_cell_709_4296538_0"<
while_lstm_cell_709_4296540while_lstm_cell_709_4296540_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_709/StatefulPartitionedCall+while/lstm_cell_709/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4299920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296453

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
�
*__inference_lstm_684_layer_call_fn_4299069
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4296040|
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
�
while_cond_4297154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4297154___redundant_placeholder05
1while_while_cond_4297154___redundant_placeholder15
1while_while_cond_4297154___redundant_placeholder25
1while_while_cond_4297154___redundant_placeholder3
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
while_cond_4296861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4296861___redundant_placeholder05
1while_while_cond_4296861___redundant_placeholder15
1while_while_cond_4296861___redundant_placeholder25
1while_while_cond_4296861___redundant_placeholder3
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300477
inputs_0>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity��$lstm_cell_710/BiasAdd/ReadVariableOp�#lstm_cell_710/MatMul/ReadVariableOp�%lstm_cell_710/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4300393*
condR
while_cond_4300392*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�8
�
while_body_4297005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	�G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_708_biasadd_readvariableop_resource:	���*while/lstm_cell_708/BiasAdd/ReadVariableOp�)while/lstm_cell_708/MatMul/ReadVariableOp�+while/lstm_cell_708/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4296740

inputs'
lstm_cell_710_4296658:2('
lstm_cell_710_4296660:
(#
lstm_cell_710_4296662:(
identity��%lstm_cell_710/StatefulPartitionedCall�while;
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
%lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_710_4296658lstm_cell_710_4296660lstm_cell_710_4296662*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4296657n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_710_4296658lstm_cell_710_4296660lstm_cell_710_4296662*
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
while_body_4296671*
condR
while_cond_4296670*K
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
NoOpNoOp&^lstm_cell_710/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_710/StatefulPartitionedCall%lstm_cell_710/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_686_layer_call_fn_4300334

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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4297605o
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
/__inference_lstm_cell_709_layer_call_fn_4301057

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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296453o
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
/__inference_lstm_cell_709_layer_call_fn_4301040

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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4296307o
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
�8
�
while_body_4299777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4300063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d�G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_709_biasadd_readvariableop_resource:	���*while/lstm_cell_709/BiasAdd/ReadVariableOp�)while/lstm_cell_709/MatMul/ReadVariableOp�+while/lstm_cell_709/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_4301492
file_prefix3
!assignvariableop_dense_228_kernel:
/
!assignvariableop_1_dense_228_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_684_lstm_cell_684_kernel:	�M
:assignvariableop_8_lstm_684_lstm_cell_684_recurrent_kernel:	d�=
.assignvariableop_9_lstm_684_lstm_cell_684_bias:	�D
1assignvariableop_10_lstm_685_lstm_cell_685_kernel:	d�N
;assignvariableop_11_lstm_685_lstm_cell_685_recurrent_kernel:	2�>
/assignvariableop_12_lstm_685_lstm_cell_685_bias:	�C
1assignvariableop_13_lstm_686_lstm_cell_686_kernel:2(M
;assignvariableop_14_lstm_686_lstm_cell_686_recurrent_kernel:
(=
/assignvariableop_15_lstm_686_lstm_cell_686_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_228_kernel_m:
7
)assignvariableop_19_adam_dense_228_bias_m:K
8assignvariableop_20_adam_lstm_684_lstm_cell_684_kernel_m:	�U
Bassignvariableop_21_adam_lstm_684_lstm_cell_684_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_684_lstm_cell_684_bias_m:	�K
8assignvariableop_23_adam_lstm_685_lstm_cell_685_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_685_lstm_cell_685_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_685_lstm_cell_685_bias_m:	�J
8assignvariableop_26_adam_lstm_686_lstm_cell_686_kernel_m:2(T
Bassignvariableop_27_adam_lstm_686_lstm_cell_686_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_686_lstm_cell_686_bias_m:(=
+assignvariableop_29_adam_dense_228_kernel_v:
7
)assignvariableop_30_adam_dense_228_bias_v:K
8assignvariableop_31_adam_lstm_684_lstm_cell_684_kernel_v:	�U
Bassignvariableop_32_adam_lstm_684_lstm_cell_684_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_684_lstm_cell_684_bias_v:	�K
8assignvariableop_34_adam_lstm_685_lstm_cell_685_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_685_lstm_cell_685_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_685_lstm_cell_685_bias_v:	�J
8assignvariableop_37_adam_lstm_686_lstm_cell_686_kernel_v:2(T
Bassignvariableop_38_adam_lstm_686_lstm_cell_686_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_686_lstm_cell_686_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_228_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_228_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_684_lstm_cell_684_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_684_lstm_cell_684_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_684_lstm_cell_684_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_685_lstm_cell_685_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_685_lstm_cell_685_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_685_lstm_cell_685_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_686_lstm_cell_686_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_686_lstm_cell_686_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_686_lstm_cell_686_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_228_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_228_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_684_lstm_cell_684_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_684_lstm_cell_684_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_684_lstm_cell_684_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_685_lstm_cell_685_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_685_lstm_cell_685_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_685_lstm_cell_685_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_686_lstm_cell_686_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_686_lstm_cell_686_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_686_lstm_cell_686_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_228_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_228_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_684_lstm_cell_684_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_684_lstm_cell_684_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_684_lstm_cell_684_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_685_lstm_cell_685_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_685_lstm_cell_685_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_685_lstm_cell_685_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_686_lstm_cell_686_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_686_lstm_cell_686_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_686_lstm_cell_686_bias_vIdentity_39:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_684_input;
 serving_default_lstm_684_input:0���������=
	dense_2280
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
2dense_228/kernel
:2dense_228/bias
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
0:.	�2lstm_684/lstm_cell_684/kernel
::8	d�2'lstm_684/lstm_cell_684/recurrent_kernel
*:(�2lstm_684/lstm_cell_684/bias
0:.	d�2lstm_685/lstm_cell_685/kernel
::8	2�2'lstm_685/lstm_cell_685/recurrent_kernel
*:(�2lstm_685/lstm_cell_685/bias
/:-2(2lstm_686/lstm_cell_686/kernel
9:7
(2'lstm_686/lstm_cell_686/recurrent_kernel
):'(2lstm_686/lstm_cell_686/bias
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
2Adam/dense_228/kernel/m
!:2Adam/dense_228/bias/m
5:3	�2$Adam/lstm_684/lstm_cell_684/kernel/m
?:=	d�2.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m
/:-�2"Adam/lstm_684/lstm_cell_684/bias/m
5:3	d�2$Adam/lstm_685/lstm_cell_685/kernel/m
?:=	2�2.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m
/:-�2"Adam/lstm_685/lstm_cell_685/bias/m
4:22(2$Adam/lstm_686/lstm_cell_686/kernel/m
>:<
(2.Adam/lstm_686/lstm_cell_686/recurrent_kernel/m
.:,(2"Adam/lstm_686/lstm_cell_686/bias/m
':%
2Adam/dense_228/kernel/v
!:2Adam/dense_228/bias/v
5:3	�2$Adam/lstm_684/lstm_cell_684/kernel/v
?:=	d�2.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v
/:-�2"Adam/lstm_684/lstm_cell_684/bias/v
5:3	d�2$Adam/lstm_685/lstm_cell_685/kernel/v
?:=	2�2.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v
/:-�2"Adam/lstm_685/lstm_cell_685/bias/v
4:22(2$Adam/lstm_686/lstm_cell_686/kernel/v
>:<
(2.Adam/lstm_686/lstm_cell_686/recurrent_kernel/v
.:,(2"Adam/lstm_686/lstm_cell_686/bias/v
�2�
0__inference_sequential_228_layer_call_fn_4297439
0__inference_sequential_228_layer_call_fn_4298177
0__inference_sequential_228_layer_call_fn_4298204
0__inference_sequential_228_layer_call_fn_4298055�
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298631
K__inference_sequential_228_layer_call_and_return_conditional_losses_4299058
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298085
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298115�
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
"__inference__wrapped_model_4295890lstm_684_input"�
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
*__inference_lstm_684_layer_call_fn_4299069
*__inference_lstm_684_layer_call_fn_4299080
*__inference_lstm_684_layer_call_fn_4299091
*__inference_lstm_684_layer_call_fn_4299102�
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299245
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299388
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299531
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299674�
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
*__inference_lstm_685_layer_call_fn_4299685
*__inference_lstm_685_layer_call_fn_4299696
*__inference_lstm_685_layer_call_fn_4299707
*__inference_lstm_685_layer_call_fn_4299718�
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4299861
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300004
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300147
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300290�
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
*__inference_lstm_686_layer_call_fn_4300301
*__inference_lstm_686_layer_call_fn_4300312
*__inference_lstm_686_layer_call_fn_4300323
*__inference_lstm_686_layer_call_fn_4300334�
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300477
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300620
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300763
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300906�
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
+__inference_dense_228_layer_call_fn_4300915�
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
F__inference_dense_228_layer_call_and_return_conditional_losses_4300925�
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
%__inference_signature_wrapper_4298150lstm_684_input"�
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
/__inference_lstm_cell_708_layer_call_fn_4300942
/__inference_lstm_cell_708_layer_call_fn_4300959�
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4300991
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4301023�
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
/__inference_lstm_cell_709_layer_call_fn_4301040
/__inference_lstm_cell_709_layer_call_fn_4301057�
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301089
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301121�
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
/__inference_lstm_cell_710_layer_call_fn_4301138
/__inference_lstm_cell_710_layer_call_fn_4301155�
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301187
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301219�
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
"__inference__wrapped_model_4295890�-./012345!";�8
1�.
,�)
lstm_684_input���������
� "5�2
0
	dense_228#� 
	dense_228����������
F__inference_dense_228_layer_call_and_return_conditional_losses_4300925\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_228_layer_call_fn_4300915O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299245�-./O�L
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299388�-./O�L
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299531q-./?�<
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
E__inference_lstm_684_layer_call_and_return_conditional_losses_4299674q-./?�<
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
*__inference_lstm_684_layer_call_fn_4299069}-./O�L
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
*__inference_lstm_684_layer_call_fn_4299080}-./O�L
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
*__inference_lstm_684_layer_call_fn_4299091d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_684_layer_call_fn_4299102d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_685_layer_call_and_return_conditional_losses_4299861�012O�L
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300004�012O�L
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300147q012?�<
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
E__inference_lstm_685_layer_call_and_return_conditional_losses_4300290q012?�<
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
*__inference_lstm_685_layer_call_fn_4299685}012O�L
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
*__inference_lstm_685_layer_call_fn_4299696}012O�L
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
*__inference_lstm_685_layer_call_fn_4299707d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_685_layer_call_fn_4299718d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300477}345O�L
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300620}345O�L
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300763m345?�<
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
E__inference_lstm_686_layer_call_and_return_conditional_losses_4300906m345?�<
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
*__inference_lstm_686_layer_call_fn_4300301p345O�L
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
*__inference_lstm_686_layer_call_fn_4300312p345O�L
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
*__inference_lstm_686_layer_call_fn_4300323`345?�<
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
*__inference_lstm_686_layer_call_fn_4300334`345?�<
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4300991�-./��}
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4301023�-./��}
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
/__inference_lstm_cell_708_layer_call_fn_4300942�-./��}
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
/__inference_lstm_cell_708_layer_call_fn_4300959�-./��}
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301089�012��}
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4301121�012��}
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
/__inference_lstm_cell_709_layer_call_fn_4301040�012��}
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
/__inference_lstm_cell_709_layer_call_fn_4301057�012��}
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301187�345��}
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4301219�345��}
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
/__inference_lstm_cell_710_layer_call_fn_4301138�345��}
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
/__inference_lstm_cell_710_layer_call_fn_4301155�345��}
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298085y-./012345!"C�@
9�6
,�)
lstm_684_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298115y-./012345!"C�@
9�6
,�)
lstm_684_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_228_layer_call_and_return_conditional_losses_4298631q-./012345!";�8
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
K__inference_sequential_228_layer_call_and_return_conditional_losses_4299058q-./012345!";�8
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
0__inference_sequential_228_layer_call_fn_4297439l-./012345!"C�@
9�6
,�)
lstm_684_input���������
p 

 
� "�����������
0__inference_sequential_228_layer_call_fn_4298055l-./012345!"C�@
9�6
,�)
lstm_684_input���������
p

 
� "�����������
0__inference_sequential_228_layer_call_fn_4298177d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_228_layer_call_fn_4298204d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_4298150�-./012345!"M�J
� 
C�@
>
lstm_684_input,�)
lstm_684_input���������"5�2
0
	dense_228#� 
	dense_228���������