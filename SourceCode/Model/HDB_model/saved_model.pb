љј.
Е
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28њ-
z
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_33/kernel
s
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes

:
*
dtype0
r
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_33/bias
k
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
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

lstm_99/lstm_cell_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_99/lstm_cell_99/kernel

/lstm_99/lstm_cell_99/kernel/Read/ReadVariableOpReadVariableOplstm_99/lstm_cell_99/kernel*
_output_shapes
:	*
dtype0
Ї
%lstm_99/lstm_cell_99/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_99/lstm_cell_99/recurrent_kernel
 
9lstm_99/lstm_cell_99/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_99/lstm_cell_99/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_99/lstm_cell_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_99/lstm_cell_99/bias

-lstm_99/lstm_cell_99/bias/Read/ReadVariableOpReadVariableOplstm_99/lstm_cell_99/bias*
_output_shapes	
:*
dtype0

lstm_100/lstm_cell_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*.
shared_namelstm_100/lstm_cell_100/kernel

1lstm_100/lstm_cell_100/kernel/Read/ReadVariableOpReadVariableOplstm_100/lstm_cell_100/kernel*
_output_shapes
:	dШ*
dtype0
Ћ
'lstm_100/lstm_cell_100/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*8
shared_name)'lstm_100/lstm_cell_100/recurrent_kernel
Є
;lstm_100/lstm_cell_100/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_100/lstm_cell_100/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_100/lstm_cell_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*,
shared_namelstm_100/lstm_cell_100/bias

/lstm_100/lstm_cell_100/bias/Read/ReadVariableOpReadVariableOplstm_100/lstm_cell_100/bias*
_output_shapes	
:Ш*
dtype0

lstm_101/lstm_cell_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_101/lstm_cell_101/kernel

1lstm_101/lstm_cell_101/kernel/Read/ReadVariableOpReadVariableOplstm_101/lstm_cell_101/kernel*
_output_shapes

:2(*
dtype0
Њ
'lstm_101/lstm_cell_101/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_101/lstm_cell_101/recurrent_kernel
Ѓ
;lstm_101/lstm_cell_101/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_101/lstm_cell_101/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_101/lstm_cell_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_101/lstm_cell_101/bias

/lstm_101/lstm_cell_101/bias/Read/ReadVariableOpReadVariableOplstm_101/lstm_cell_101/bias*
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

Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_33/kernel/m

*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/m
y
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_99/lstm_cell_99/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_99/lstm_cell_99/kernel/m

6Adam/lstm_99/lstm_cell_99/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_99/lstm_cell_99/kernel/m*
_output_shapes
:	*
dtype0
Е
,Adam/lstm_99/lstm_cell_99/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_99/lstm_cell_99/recurrent_kernel/m
Ў
@Adam/lstm_99/lstm_cell_99/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_99/lstm_cell_99/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_99/lstm_cell_99/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_99/lstm_cell_99/bias/m

4Adam/lstm_99/lstm_cell_99/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_99/lstm_cell_99/bias/m*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_100/lstm_cell_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_100/lstm_cell_100/kernel/m

8Adam/lstm_100/lstm_cell_100/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_100/lstm_cell_100/kernel/m*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_100/lstm_cell_100/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_100/lstm_cell_100/recurrent_kernel/m
В
BAdam/lstm_100/lstm_cell_100/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_100/lstm_cell_100/recurrent_kernel/m*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_100/lstm_cell_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_100/lstm_cell_100/bias/m

6Adam/lstm_100/lstm_cell_100/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_100/lstm_cell_100/bias/m*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_101/lstm_cell_101/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_101/lstm_cell_101/kernel/m

8Adam/lstm_101/lstm_cell_101/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_101/lstm_cell_101/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_101/lstm_cell_101/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_101/lstm_cell_101/recurrent_kernel/m
Б
BAdam/lstm_101/lstm_cell_101/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_101/lstm_cell_101/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_101/lstm_cell_101/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_101/lstm_cell_101/bias/m

6Adam/lstm_101/lstm_cell_101/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_101/lstm_cell_101/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_33/kernel/v

*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/v
y
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_99/lstm_cell_99/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_99/lstm_cell_99/kernel/v

6Adam/lstm_99/lstm_cell_99/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_99/lstm_cell_99/kernel/v*
_output_shapes
:	*
dtype0
Е
,Adam/lstm_99/lstm_cell_99/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_99/lstm_cell_99/recurrent_kernel/v
Ў
@Adam/lstm_99/lstm_cell_99/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_99/lstm_cell_99/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_99/lstm_cell_99/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_99/lstm_cell_99/bias/v

4Adam/lstm_99/lstm_cell_99/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_99/lstm_cell_99/bias/v*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_100/lstm_cell_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_100/lstm_cell_100/kernel/v

8Adam/lstm_100/lstm_cell_100/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_100/lstm_cell_100/kernel/v*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_100/lstm_cell_100/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_100/lstm_cell_100/recurrent_kernel/v
В
BAdam/lstm_100/lstm_cell_100/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_100/lstm_cell_100/recurrent_kernel/v*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_100/lstm_cell_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_100/lstm_cell_100/bias/v

6Adam/lstm_100/lstm_cell_100/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_100/lstm_cell_100/bias/v*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_101/lstm_cell_101/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_101/lstm_cell_101/kernel/v

8Adam/lstm_101/lstm_cell_101/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_101/lstm_cell_101/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_101/lstm_cell_101/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_101/lstm_cell_101/recurrent_kernel/v
Б
BAdam/lstm_101/lstm_cell_101/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_101/lstm_cell_101/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_101/lstm_cell_101/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_101/lstm_cell_101/bias/v

6Adam/lstm_101/lstm_cell_101/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_101/lstm_cell_101/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ЭA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*A
valueў@Bћ@ Bє@
В
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

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
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
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
Г
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
Й

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

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
VARIABLE_VALUEdense_33/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_33/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
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
VARIABLE_VALUElstm_99/lstm_cell_99/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_99/lstm_cell_99/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_99/lstm_cell_99/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_100/lstm_cell_100/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_100/lstm_cell_100/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_100/lstm_cell_100/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_101/lstm_cell_101/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_101/lstm_cell_101/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_101/lstm_cell_101/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_99/lstm_cell_99/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_99/lstm_cell_99/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_99/lstm_cell_99/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_100/lstm_cell_100/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_100/lstm_cell_100/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_100/lstm_cell_100/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_101/lstm_cell_101/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_101/lstm_cell_101/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_101/lstm_cell_101/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_99/lstm_cell_99/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_99/lstm_cell_99/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_99/lstm_cell_99/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_100/lstm_cell_100/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_100/lstm_cell_100/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_100/lstm_cell_100/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_101/lstm_cell_101/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_101/lstm_cell_101/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_101/lstm_cell_101/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_99_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_99_inputlstm_99/lstm_cell_99/kernel%lstm_99/lstm_cell_99/recurrent_kernellstm_99/lstm_cell_99/biaslstm_100/lstm_cell_100/kernel'lstm_100/lstm_cell_100/recurrent_kernellstm_100/lstm_cell_100/biaslstm_101/lstm_cell_101/kernel'lstm_101/lstm_cell_101/recurrent_kernellstm_101/lstm_cell_101/biasdense_33/kerneldense_33/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_160752
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_99/lstm_cell_99/kernel/Read/ReadVariableOp9lstm_99/lstm_cell_99/recurrent_kernel/Read/ReadVariableOp-lstm_99/lstm_cell_99/bias/Read/ReadVariableOp1lstm_100/lstm_cell_100/kernel/Read/ReadVariableOp;lstm_100/lstm_cell_100/recurrent_kernel/Read/ReadVariableOp/lstm_100/lstm_cell_100/bias/Read/ReadVariableOp1lstm_101/lstm_cell_101/kernel/Read/ReadVariableOp;lstm_101/lstm_cell_101/recurrent_kernel/Read/ReadVariableOp/lstm_101/lstm_cell_101/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp6Adam/lstm_99/lstm_cell_99/kernel/m/Read/ReadVariableOp@Adam/lstm_99/lstm_cell_99/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_99/lstm_cell_99/bias/m/Read/ReadVariableOp8Adam/lstm_100/lstm_cell_100/kernel/m/Read/ReadVariableOpBAdam/lstm_100/lstm_cell_100/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_100/lstm_cell_100/bias/m/Read/ReadVariableOp8Adam/lstm_101/lstm_cell_101/kernel/m/Read/ReadVariableOpBAdam/lstm_101/lstm_cell_101/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_101/lstm_cell_101/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOp6Adam/lstm_99/lstm_cell_99/kernel/v/Read/ReadVariableOp@Adam/lstm_99/lstm_cell_99/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_99/lstm_cell_99/bias/v/Read/ReadVariableOp8Adam/lstm_100/lstm_cell_100/kernel/v/Read/ReadVariableOpBAdam/lstm_100/lstm_cell_100/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_100/lstm_cell_100/bias/v/Read/ReadVariableOp8Adam/lstm_101/lstm_cell_101/kernel/v/Read/ReadVariableOpBAdam/lstm_101/lstm_cell_101/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_101/lstm_cell_101/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *(
f#R!
__inference__traced_save_163964

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_33/kerneldense_33/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_99/lstm_cell_99/kernel%lstm_99/lstm_cell_99/recurrent_kernellstm_99/lstm_cell_99/biaslstm_100/lstm_cell_100/kernel'lstm_100/lstm_cell_100/recurrent_kernellstm_100/lstm_cell_100/biaslstm_101/lstm_cell_101/kernel'lstm_101/lstm_cell_101/recurrent_kernellstm_101/lstm_cell_101/biastotalcountAdam/dense_33/kernel/mAdam/dense_33/bias/m"Adam/lstm_99/lstm_cell_99/kernel/m,Adam/lstm_99/lstm_cell_99/recurrent_kernel/m Adam/lstm_99/lstm_cell_99/bias/m$Adam/lstm_100/lstm_cell_100/kernel/m.Adam/lstm_100/lstm_cell_100/recurrent_kernel/m"Adam/lstm_100/lstm_cell_100/bias/m$Adam/lstm_101/lstm_cell_101/kernel/m.Adam/lstm_101/lstm_cell_101/recurrent_kernel/m"Adam/lstm_101/lstm_cell_101/bias/mAdam/dense_33/kernel/vAdam/dense_33/bias/v"Adam/lstm_99/lstm_cell_99/kernel/v,Adam/lstm_99/lstm_cell_99/recurrent_kernel/v Adam/lstm_99/lstm_cell_99/bias/v$Adam/lstm_100/lstm_cell_100/kernel/v.Adam/lstm_100/lstm_cell_100/recurrent_kernel/v"Adam/lstm_100/lstm_cell_100/bias/v$Adam/lstm_101/lstm_cell_101/kernel/v.Adam/lstm_101/lstm_cell_101/recurrent_kernel/v"Adam/lstm_101/lstm_cell_101/bias/v*4
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_164094ЌЪ+
УЄ

"__inference__traced_restore_164094
file_prefix2
 assignvariableop_dense_33_kernel:
.
 assignvariableop_1_dense_33_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_99_lstm_cell_99_kernel:	K
8assignvariableop_8_lstm_99_lstm_cell_99_recurrent_kernel:	d;
,assignvariableop_9_lstm_99_lstm_cell_99_bias:	D
1assignvariableop_10_lstm_100_lstm_cell_100_kernel:	dШN
;assignvariableop_11_lstm_100_lstm_cell_100_recurrent_kernel:	2Ш>
/assignvariableop_12_lstm_100_lstm_cell_100_bias:	ШC
1assignvariableop_13_lstm_101_lstm_cell_101_kernel:2(M
;assignvariableop_14_lstm_101_lstm_cell_101_recurrent_kernel:
(=
/assignvariableop_15_lstm_101_lstm_cell_101_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_33_kernel_m:
6
(assignvariableop_19_adam_dense_33_bias_m:I
6assignvariableop_20_adam_lstm_99_lstm_cell_99_kernel_m:	S
@assignvariableop_21_adam_lstm_99_lstm_cell_99_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_99_lstm_cell_99_bias_m:	K
8assignvariableop_23_adam_lstm_100_lstm_cell_100_kernel_m:	dШU
Bassignvariableop_24_adam_lstm_100_lstm_cell_100_recurrent_kernel_m:	2ШE
6assignvariableop_25_adam_lstm_100_lstm_cell_100_bias_m:	ШJ
8assignvariableop_26_adam_lstm_101_lstm_cell_101_kernel_m:2(T
Bassignvariableop_27_adam_lstm_101_lstm_cell_101_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_101_lstm_cell_101_bias_m:(<
*assignvariableop_29_adam_dense_33_kernel_v:
6
(assignvariableop_30_adam_dense_33_bias_v:I
6assignvariableop_31_adam_lstm_99_lstm_cell_99_kernel_v:	S
@assignvariableop_32_adam_lstm_99_lstm_cell_99_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_99_lstm_cell_99_bias_v:	K
8assignvariableop_34_adam_lstm_100_lstm_cell_100_kernel_v:	dШU
Bassignvariableop_35_adam_lstm_100_lstm_cell_100_recurrent_kernel_v:	2ШE
6assignvariableop_36_adam_lstm_100_lstm_cell_100_bias_v:	ШJ
8assignvariableop_37_adam_lstm_101_lstm_cell_101_kernel_v:2(T
Bassignvariableop_38_adam_lstm_101_lstm_cell_101_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_101_lstm_cell_101_bias_v:(
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_33_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_33_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_99_lstm_cell_99_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_99_lstm_cell_99_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_99_lstm_cell_99_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_100_lstm_cell_100_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_100_lstm_cell_100_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_100_lstm_cell_100_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_101_lstm_cell_101_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_101_lstm_cell_101_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_101_lstm_cell_101_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_33_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_33_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_99_lstm_cell_99_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_99_lstm_cell_99_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_99_lstm_cell_99_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_100_lstm_cell_100_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_100_lstm_cell_100_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_100_lstm_cell_100_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_101_lstm_cell_101_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_101_lstm_cell_101_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_101_lstm_cell_101_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_33_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_33_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_99_lstm_cell_99_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_99_lstm_cell_99_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_99_lstm_cell_99_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_100_lstm_cell_100_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_100_lstm_cell_100_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_100_lstm_cell_100_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_101_lstm_cell_101_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_101_lstm_cell_101_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_101_lstm_cell_101_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 П
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ќ
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


у
lstm_99_while_cond_161291,
(lstm_99_while_lstm_99_while_loop_counter2
.lstm_99_while_lstm_99_while_maximum_iterations
lstm_99_while_placeholder
lstm_99_while_placeholder_1
lstm_99_while_placeholder_2
lstm_99_while_placeholder_3.
*lstm_99_while_less_lstm_99_strided_slice_1D
@lstm_99_while_lstm_99_while_cond_161291___redundant_placeholder0D
@lstm_99_while_lstm_99_while_cond_161291___redundant_placeholder1D
@lstm_99_while_lstm_99_while_cond_161291___redundant_placeholder2D
@lstm_99_while_lstm_99_while_cond_161291___redundant_placeholder3
lstm_99_while_identity

lstm_99/while/LessLesslstm_99_while_placeholder*lstm_99_while_less_lstm_99_strided_slice_1*
T0*
_output_shapes
: [
lstm_99/while/IdentityIdentitylstm_99/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_99_while_identitylstm_99/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_162664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162664___redundant_placeholder04
0while_while_cond_162664___redundant_placeholder14
0while_while_cond_162664___redundant_placeholder24
0while_while_cond_162664___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
я

Ё
.__inference_sequential_33_layer_call_fn_160041
lstm_99_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCalllstm_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_33_layer_call_and_return_conditional_losses_160016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input

ч
I__inference_sequential_33_layer_call_and_return_conditional_losses_160605

inputs!
lstm_99_160578:	!
lstm_99_160580:	d
lstm_99_160582:	"
lstm_100_160585:	dШ"
lstm_100_160587:	2Ш
lstm_100_160589:	Ш!
lstm_101_160592:2(!
lstm_101_160594:
(
lstm_101_160596:(!
dense_33_160599:

dense_33_160601:
identityЂ dense_33/StatefulPartitionedCallЂ lstm_100/StatefulPartitionedCallЂ lstm_101/StatefulPartitionedCallЂlstm_99/StatefulPartitionedCall
lstm_99/StatefulPartitionedCallStatefulPartitionedCallinputslstm_99_160578lstm_99_160580lstm_99_160582*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_160537Љ
 lstm_100/StatefulPartitionedCallStatefulPartitionedCall(lstm_99/StatefulPartitionedCall:output:0lstm_100_160585lstm_100_160587lstm_100_160589*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_160372І
 lstm_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_100/StatefulPartitionedCall:output:0lstm_101_160592lstm_101_160594lstm_101_160596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_160207
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)lstm_101/StatefulPartitionedCall:output:0dense_33_160599dense_33_160601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_160009x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp!^dense_33/StatefulPartitionedCall!^lstm_100/StatefulPartitionedCall!^lstm_101/StatefulPartitionedCall ^lstm_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 lstm_100/StatefulPartitionedCall lstm_100/StatefulPartitionedCall2D
 lstm_101/StatefulPartitionedCall lstm_101/StatefulPartitionedCall2B
lstm_99/StatefulPartitionedCalllstm_99/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к


.__inference_sequential_33_layer_call_fn_160779

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_33_layer_call_and_return_conditional_losses_160016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ХA
а

lstm_99_while_body_160865,
(lstm_99_while_lstm_99_while_loop_counter2
.lstm_99_while_lstm_99_while_maximum_iterations
lstm_99_while_placeholder
lstm_99_while_placeholder_1
lstm_99_while_placeholder_2
lstm_99_while_placeholder_3+
'lstm_99_while_lstm_99_strided_slice_1_0g
clstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0:	P
=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dK
<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0:	
lstm_99_while_identity
lstm_99_while_identity_1
lstm_99_while_identity_2
lstm_99_while_identity_3
lstm_99_while_identity_4
lstm_99_while_identity_5)
%lstm_99_while_lstm_99_strided_slice_1e
alstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensorL
9lstm_99_while_lstm_cell_24_matmul_readvariableop_resource:	N
;lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource:	dI
:lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpЂ0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpЂ2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp
?lstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_99/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0lstm_99_while_placeholderHlstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_99/while/lstm_cell_24/MatMulMatMul8lstm_99/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_99/while/lstm_cell_24/MatMul_1MatMullstm_99_while_placeholder_2:lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_99/while/lstm_cell_24/addAddV2+lstm_99/while/lstm_cell_24/MatMul:product:0-lstm_99/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_99/while/lstm_cell_24/BiasAddBiasAdd"lstm_99/while/lstm_cell_24/add:z:09lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_99/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_99/while/lstm_cell_24/splitSplit3lstm_99/while/lstm_cell_24/split/split_dim:output:0+lstm_99/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_99/while/lstm_cell_24/SigmoidSigmoid)lstm_99/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_99/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_99/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/lstm_cell_24/mulMul(lstm_99/while/lstm_cell_24/Sigmoid_1:y:0lstm_99_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/lstm_cell_24/ReluRelu)lstm_99/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_99/while/lstm_cell_24/mul_1Mul&lstm_99/while/lstm_cell_24/Sigmoid:y:0-lstm_99/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_99/while/lstm_cell_24/add_1AddV2"lstm_99/while/lstm_cell_24/mul:z:0$lstm_99/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_99/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_99/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_99/while/lstm_cell_24/Relu_1Relu$lstm_99/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_99/while/lstm_cell_24/mul_2Mul(lstm_99/while/lstm_cell_24/Sigmoid_2:y:0/lstm_99/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdх
2lstm_99/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_99_while_placeholder_1lstm_99_while_placeholder$lstm_99/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_99/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_99/while/addAddV2lstm_99_while_placeholderlstm_99/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_99/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_99/while/add_1AddV2(lstm_99_while_lstm_99_while_loop_counterlstm_99/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_99/while/IdentityIdentitylstm_99/while/add_1:z:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_1Identity.lstm_99_while_lstm_99_while_maximum_iterations^lstm_99/while/NoOp*
T0*
_output_shapes
: q
lstm_99/while/Identity_2Identitylstm_99/while/add:z:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_3IdentityBlstm_99/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_4Identity$lstm_99/while/lstm_cell_24/mul_2:z:0^lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/Identity_5Identity$lstm_99/while/lstm_cell_24/add_1:z:0^lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_99/while/NoOpNoOp2^lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_99_while_identitylstm_99/while/Identity:output:0"=
lstm_99_while_identity_1!lstm_99/while/Identity_1:output:0"=
lstm_99_while_identity_2!lstm_99/while/Identity_2:output:0"=
lstm_99_while_identity_3!lstm_99/while/Identity_3:output:0"=
lstm_99_while_identity_4!lstm_99/while/Identity_4:output:0"=
lstm_99_while_identity_5!lstm_99/while/Identity_5:output:0"P
%lstm_99_while_lstm_99_strided_slice_1'lstm_99_while_lstm_99_strided_slice_1_0"z
:lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_99_while_lstm_cell_24_matmul_readvariableop_resource;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0"Ш
alstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensorclstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
е

H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_159055

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Ы

H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159259

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
ЃJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_162133

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162049*
condR
while_cond_162048*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р"
н
while_body_159464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_26_159488_0:2(-
while_lstm_cell_26_159490_0:
()
while_lstm_cell_26_159492_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_26_159488:2(+
while_lstm_cell_26_159490:
('
while_lstm_cell_26_159492:(Ђ*while/lstm_cell_26/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_26/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_26_159488_0while_lstm_cell_26_159490_0while_lstm_cell_26_159492_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159405м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_26/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_26/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_26/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_26_159488while_lstm_cell_26_159488_0"8
while_lstm_cell_26_159490while_lstm_cell_26_159490_0"8
while_lstm_cell_26_159492while_lstm_cell_26_159492_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_26/StatefulPartitionedCall*while/lstm_cell_26/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_100_layer_call_and_return_conditional_losses_159183

inputs&
lstm_cell_25_159101:	dШ&
lstm_cell_25_159103:	2Ш"
lstm_cell_25_159105:	Ш
identityЂ$lstm_cell_25/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskѕ
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_159101lstm_cell_25_159103lstm_cell_25_159105*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_159055n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_159101lstm_cell_25_159103lstm_cell_25_159105*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159114*
condR
while_cond_159113*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
і
Г
)__inference_lstm_101_layer_call_fn_162925

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_159991o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
В

ї
lstm_100_while_cond_161003.
*lstm_100_while_lstm_100_while_loop_counter4
0lstm_100_while_lstm_100_while_maximum_iterations
lstm_100_while_placeholder 
lstm_100_while_placeholder_1 
lstm_100_while_placeholder_2 
lstm_100_while_placeholder_30
,lstm_100_while_less_lstm_100_strided_slice_1F
Blstm_100_while_lstm_100_while_cond_161003___redundant_placeholder0F
Blstm_100_while_lstm_100_while_cond_161003___redundant_placeholder1F
Blstm_100_while_lstm_100_while_cond_161003___redundant_placeholder2F
Blstm_100_while_lstm_100_while_cond_161003___redundant_placeholder3
lstm_100_while_identity

lstm_100/while/LessLesslstm_100_while_placeholder,lstm_100_while_less_lstm_100_strided_slice_1*
T0*
_output_shapes
: ]
lstm_100/while/IdentityIdentitylstm_100/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_100_while_identity lstm_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
8
а
while_body_162192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

Ж
)__inference_lstm_100_layer_call_fn_162320

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_160372s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ы
і
-__inference_lstm_cell_25_layer_call_fn_163642

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_158909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
Е
У
while_cond_161905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161905___redundant_placeholder04
0while_while_cond_161905___redundant_placeholder14
0while_while_cond_161905___redundant_placeholder24
0while_while_cond_161905___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
8
а
while_body_162808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
8
а
while_body_159607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
К

(sequential_33_lstm_101_while_cond_158401J
Fsequential_33_lstm_101_while_sequential_33_lstm_101_while_loop_counterP
Lsequential_33_lstm_101_while_sequential_33_lstm_101_while_maximum_iterations,
(sequential_33_lstm_101_while_placeholder.
*sequential_33_lstm_101_while_placeholder_1.
*sequential_33_lstm_101_while_placeholder_2.
*sequential_33_lstm_101_while_placeholder_3L
Hsequential_33_lstm_101_while_less_sequential_33_lstm_101_strided_slice_1b
^sequential_33_lstm_101_while_sequential_33_lstm_101_while_cond_158401___redundant_placeholder0b
^sequential_33_lstm_101_while_sequential_33_lstm_101_while_cond_158401___redundant_placeholder1b
^sequential_33_lstm_101_while_sequential_33_lstm_101_while_cond_158401___redundant_placeholder2b
^sequential_33_lstm_101_while_sequential_33_lstm_101_while_cond_158401___redundant_placeholder3)
%sequential_33_lstm_101_while_identity
О
!sequential_33/lstm_101/while/LessLess(sequential_33_lstm_101_while_placeholderHsequential_33_lstm_101_while_less_sequential_33_lstm_101_strided_slice_1*
T0*
_output_shapes
: y
%sequential_33/lstm_101/while/IdentityIdentity%sequential_33/lstm_101/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_33_lstm_101_while_identity.sequential_33/lstm_101/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
е

H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158705

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
Ћ
И
)__inference_lstm_100_layer_call_fn_162298
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_159183|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
дJ

D__inference_lstm_101_layer_call_and_return_conditional_losses_163079
inputs_0=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162995*
condR
while_cond_162994*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
8

C__inference_lstm_99_layer_call_and_return_conditional_losses_158642

inputs&
lstm_cell_24_158560:	&
lstm_cell_24_158562:	d"
lstm_cell_24_158564:	
identityЂ$lstm_cell_24/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_158560lstm_cell_24_158562lstm_cell_24_158564*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158559n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_158560lstm_cell_24_158562lstm_cell_24_158564*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158573*
condR
while_cond_158572*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
тJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_162463
inputs_0>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162379*
condR
while_cond_162378*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0

ћ
'sequential_33_lstm_99_while_cond_158123H
Dsequential_33_lstm_99_while_sequential_33_lstm_99_while_loop_counterN
Jsequential_33_lstm_99_while_sequential_33_lstm_99_while_maximum_iterations+
'sequential_33_lstm_99_while_placeholder-
)sequential_33_lstm_99_while_placeholder_1-
)sequential_33_lstm_99_while_placeholder_2-
)sequential_33_lstm_99_while_placeholder_3J
Fsequential_33_lstm_99_while_less_sequential_33_lstm_99_strided_slice_1`
\sequential_33_lstm_99_while_sequential_33_lstm_99_while_cond_158123___redundant_placeholder0`
\sequential_33_lstm_99_while_sequential_33_lstm_99_while_cond_158123___redundant_placeholder1`
\sequential_33_lstm_99_while_sequential_33_lstm_99_while_cond_158123___redundant_placeholder2`
\sequential_33_lstm_99_while_sequential_33_lstm_99_while_cond_158123___redundant_placeholder3(
$sequential_33_lstm_99_while_identity
К
 sequential_33/lstm_99/while/LessLess'sequential_33_lstm_99_while_placeholderFsequential_33_lstm_99_while_less_sequential_33_lstm_99_strided_slice_1*
T0*
_output_shapes
: w
$sequential_33/lstm_99/while/IdentityIdentity$sequential_33/lstm_99/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_33_lstm_99_while_identity-sequential_33/lstm_99/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
лB
№

lstm_100_while_body_161431.
*lstm_100_while_lstm_100_while_loop_counter4
0lstm_100_while_lstm_100_while_maximum_iterations
lstm_100_while_placeholder 
lstm_100_while_placeholder_1 
lstm_100_while_placeholder_2 
lstm_100_while_placeholder_3-
)lstm_100_while_lstm_100_strided_slice_1_0i
elstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0:	dШQ
>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШL
=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
lstm_100_while_identity
lstm_100_while_identity_1
lstm_100_while_identity_2
lstm_100_while_identity_3
lstm_100_while_identity_4
lstm_100_while_identity_5+
'lstm_100_while_lstm_100_strided_slice_1g
clstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensorM
:lstm_100_while_lstm_cell_25_matmul_readvariableop_resource:	dШO
<lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШJ
;lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpЂ1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpЂ3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp
@lstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0lstm_100_while_placeholderIlstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_100/while/lstm_cell_25/MatMulMatMul9lstm_100/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_100/while/lstm_cell_25/MatMul_1MatMullstm_100_while_placeholder_2;lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_100/while/lstm_cell_25/addAddV2,lstm_100/while/lstm_cell_25/MatMul:product:0.lstm_100/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_100/while/lstm_cell_25/BiasAddBiasAdd#lstm_100/while/lstm_cell_25/add:z:0:lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_100/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_100/while/lstm_cell_25/splitSplit4lstm_100/while/lstm_cell_25/split/split_dim:output:0,lstm_100/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_100/while/lstm_cell_25/SigmoidSigmoid*lstm_100/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_100/while/lstm_cell_25/Sigmoid_1Sigmoid*lstm_100/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_100/while/lstm_cell_25/mulMul)lstm_100/while/lstm_cell_25/Sigmoid_1:y:0lstm_100_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_100/while/lstm_cell_25/ReluRelu*lstm_100/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_100/while/lstm_cell_25/mul_1Mul'lstm_100/while/lstm_cell_25/Sigmoid:y:0.lstm_100/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_100/while/lstm_cell_25/add_1AddV2#lstm_100/while/lstm_cell_25/mul:z:0%lstm_100/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_100/while/lstm_cell_25/Sigmoid_2Sigmoid*lstm_100/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_100/while/lstm_cell_25/Relu_1Relu%lstm_100/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_100/while/lstm_cell_25/mul_2Mul)lstm_100/while/lstm_cell_25/Sigmoid_2:y:00lstm_100/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_100_while_placeholder_1lstm_100_while_placeholder%lstm_100/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_100/while/addAddV2lstm_100_while_placeholderlstm_100/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_100/while/add_1AddV2*lstm_100_while_lstm_100_while_loop_counterlstm_100/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_100/while/IdentityIdentitylstm_100/while/add_1:z:0^lstm_100/while/NoOp*
T0*
_output_shapes
: 
lstm_100/while/Identity_1Identity0lstm_100_while_lstm_100_while_maximum_iterations^lstm_100/while/NoOp*
T0*
_output_shapes
: t
lstm_100/while/Identity_2Identitylstm_100/while/add:z:0^lstm_100/while/NoOp*
T0*
_output_shapes
: Ё
lstm_100/while/Identity_3IdentityClstm_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_100/while/NoOp*
T0*
_output_shapes
: 
lstm_100/while/Identity_4Identity%lstm_100/while/lstm_cell_25/mul_2:z:0^lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/while/Identity_5Identity%lstm_100/while/lstm_cell_25/add_1:z:0^lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_100/while/NoOpNoOp3^lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2^lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp4^lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_100_while_identity lstm_100/while/Identity:output:0"?
lstm_100_while_identity_1"lstm_100/while/Identity_1:output:0"?
lstm_100_while_identity_2"lstm_100/while/Identity_2:output:0"?
lstm_100_while_identity_3"lstm_100/while/Identity_3:output:0"?
lstm_100_while_identity_4"lstm_100/while/Identity_4:output:0"?
lstm_100_while_identity_5"lstm_100/while/Identity_5:output:0"T
'lstm_100_while_lstm_100_strided_slice_1)lstm_100_while_lstm_100_strided_slice_1_0"|
;lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0"~
<lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0"z
:lstm_100_while_lstm_cell_25_matmul_readvariableop_resource<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0"Ь
clstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensorelstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2f
1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp2j
3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Љ
З
(__inference_lstm_99_layer_call_fn_161671
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_158642|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
џ
Е
(__inference_lstm_99_layer_call_fn_161704

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_160537s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы
і
-__inference_lstm_cell_24_layer_call_fn_163561

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
џ
ќ

I__inference_sequential_33_layer_call_and_return_conditional_losses_161233

inputsF
3lstm_99_lstm_cell_24_matmul_readvariableop_resource:	H
5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource:	dC
4lstm_99_lstm_cell_24_biasadd_readvariableop_resource:	G
4lstm_100_lstm_cell_25_matmul_readvariableop_resource:	dШI
6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource:	2ШD
5lstm_100_lstm_cell_25_biasadd_readvariableop_resource:	ШF
4lstm_101_lstm_cell_26_matmul_readvariableop_resource:2(H
6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource:
(C
5lstm_101_lstm_cell_26_biasadd_readvariableop_resource:(9
'dense_33_matmul_readvariableop_resource:
6
(dense_33_biasadd_readvariableop_resource:
identityЂdense_33/BiasAdd/ReadVariableOpЂdense_33/MatMul/ReadVariableOpЂ,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpЂ+lstm_100/lstm_cell_25/MatMul/ReadVariableOpЂ-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpЂlstm_100/whileЂ,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpЂ+lstm_101/lstm_cell_26/MatMul/ReadVariableOpЂ-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpЂlstm_101/whileЂ+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpЂ*lstm_99/lstm_cell_24/MatMul/ReadVariableOpЂ,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpЂlstm_99/whileC
lstm_99/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_99/strided_sliceStridedSlicelstm_99/Shape:output:0$lstm_99/strided_slice/stack:output:0&lstm_99/strided_slice/stack_1:output:0&lstm_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_99/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_99/zeros/packedPacklstm_99/strided_slice:output:0lstm_99/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_99/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_99/zerosFilllstm_99/zeros/packed:output:0lstm_99/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_99/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_99/zeros_1/packedPacklstm_99/strided_slice:output:0!lstm_99/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_99/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_99/zeros_1Filllstm_99/zeros_1/packed:output:0lstm_99/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_99/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_99/transpose	Transposeinputslstm_99/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_99/Shape_1Shapelstm_99/transpose:y:0*
T0*
_output_shapes
:g
lstm_99/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_99/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_99/strided_slice_1StridedSlicelstm_99/Shape_1:output:0&lstm_99/strided_slice_1/stack:output:0(lstm_99/strided_slice_1/stack_1:output:0(lstm_99/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_99/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_99/TensorArrayV2TensorListReserve,lstm_99/TensorArrayV2/element_shape:output:0 lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_99/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_99/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_99/transpose:y:0Flstm_99/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_99/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_99/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_99/strided_slice_2StridedSlicelstm_99/transpose:y:0&lstm_99/strided_slice_2/stack:output:0(lstm_99/strided_slice_2/stack_1:output:0(lstm_99/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_99/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_99_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_99/lstm_cell_24/MatMulMatMul lstm_99/strided_slice_2:output:02lstm_99/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_99/lstm_cell_24/MatMul_1MatMullstm_99/zeros:output:04lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_99/lstm_cell_24/addAddV2%lstm_99/lstm_cell_24/MatMul:product:0'lstm_99/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_99/lstm_cell_24/BiasAddBiasAddlstm_99/lstm_cell_24/add:z:03lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_99/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_99/lstm_cell_24/splitSplit-lstm_99/lstm_cell_24/split/split_dim:output:0%lstm_99/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_99/lstm_cell_24/SigmoidSigmoid#lstm_99/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/Sigmoid_1Sigmoid#lstm_99/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/mulMul"lstm_99/lstm_cell_24/Sigmoid_1:y:0lstm_99/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_99/lstm_cell_24/ReluRelu#lstm_99/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/mul_1Mul lstm_99/lstm_cell_24/Sigmoid:y:0'lstm_99/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/add_1AddV2lstm_99/lstm_cell_24/mul:z:0lstm_99/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/Sigmoid_2Sigmoid#lstm_99/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_99/lstm_cell_24/Relu_1Relulstm_99/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_99/lstm_cell_24/mul_2Mul"lstm_99/lstm_cell_24/Sigmoid_2:y:0)lstm_99/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_99/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   а
lstm_99/TensorArrayV2_1TensorListReserve.lstm_99/TensorArrayV2_1/element_shape:output:0 lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_99/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_99/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_99/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ђ
lstm_99/whileWhile#lstm_99/while/loop_counter:output:0)lstm_99/while/maximum_iterations:output:0lstm_99/time:output:0 lstm_99/TensorArrayV2_1:handle:0lstm_99/zeros:output:0lstm_99/zeros_1:output:0 lstm_99/strided_slice_1:output:0?lstm_99/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_99_lstm_cell_24_matmul_readvariableop_resource5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource4lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_99_while_body_160865*%
condR
lstm_99_while_cond_160864*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_99/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   к
*lstm_99/TensorArrayV2Stack/TensorListStackTensorListStacklstm_99/while:output:3Alstm_99/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0p
lstm_99/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_99/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_99/strided_slice_3StridedSlice3lstm_99/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_99/strided_slice_3/stack:output:0(lstm_99/strided_slice_3/stack_1:output:0(lstm_99/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_99/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_99/transpose_1	Transpose3lstm_99/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_99/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_99/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    U
lstm_100/ShapeShapelstm_99/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_100/strided_sliceStridedSlicelstm_100/Shape:output:0%lstm_100/strided_slice/stack:output:0'lstm_100/strided_slice/stack_1:output:0'lstm_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_100/zeros/packedPacklstm_100/strided_slice:output:0 lstm_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_100/zerosFilllstm_100/zeros/packed:output:0lstm_100/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_100/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_100/zeros_1/packedPacklstm_100/strided_slice:output:0"lstm_100/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_100/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_100/zeros_1Fill lstm_100/zeros_1/packed:output:0lstm_100/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_100/transpose	Transposelstm_99/transpose_1:y:0 lstm_100/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_100/Shape_1Shapelstm_100/transpose:y:0*
T0*
_output_shapes
:h
lstm_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_100/strided_slice_1StridedSlicelstm_100/Shape_1:output:0'lstm_100/strided_slice_1/stack:output:0)lstm_100/strided_slice_1/stack_1:output:0)lstm_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_100/TensorArrayV2TensorListReserve-lstm_100/TensorArrayV2/element_shape:output:0!lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_100/transpose:y:0Glstm_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_100/strided_slice_2StridedSlicelstm_100/transpose:y:0'lstm_100/strided_slice_2/stack:output:0)lstm_100/strided_slice_2/stack_1:output:0)lstm_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_100/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp4lstm_100_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_100/lstm_cell_25/MatMulMatMul!lstm_100/strided_slice_2:output:03lstm_100/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_100/lstm_cell_25/MatMul_1MatMullstm_100/zeros:output:05lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_100/lstm_cell_25/addAddV2&lstm_100/lstm_cell_25/MatMul:product:0(lstm_100/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp5lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_100/lstm_cell_25/BiasAddBiasAddlstm_100/lstm_cell_25/add:z:04lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_100/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_100/lstm_cell_25/splitSplit.lstm_100/lstm_cell_25/split/split_dim:output:0&lstm_100/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_100/lstm_cell_25/SigmoidSigmoid$lstm_100/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/Sigmoid_1Sigmoid$lstm_100/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/mulMul#lstm_100/lstm_cell_25/Sigmoid_1:y:0lstm_100/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_100/lstm_cell_25/ReluRelu$lstm_100/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_100/lstm_cell_25/mul_1Mul!lstm_100/lstm_cell_25/Sigmoid:y:0(lstm_100/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/add_1AddV2lstm_100/lstm_cell_25/mul:z:0lstm_100/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/Sigmoid_2Sigmoid$lstm_100/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_100/lstm_cell_25/Relu_1Relulstm_100/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_100/lstm_cell_25/mul_2Mul#lstm_100/lstm_cell_25/Sigmoid_2:y:0*lstm_100/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_100/TensorArrayV2_1TensorListReserve/lstm_100/TensorArrayV2_1/element_shape:output:0!lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_100/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_100/whileWhile$lstm_100/while/loop_counter:output:0*lstm_100/while/maximum_iterations:output:0lstm_100/time:output:0!lstm_100/TensorArrayV2_1:handle:0lstm_100/zeros:output:0lstm_100/zeros_1:output:0!lstm_100/strided_slice_1:output:0@lstm_100/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_100_lstm_cell_25_matmul_readvariableop_resource6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource5lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_100_while_body_161004*&
condR
lstm_100_while_cond_161003*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_100/TensorArrayV2Stack/TensorListStackTensorListStacklstm_100/while:output:3Blstm_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_100/strided_slice_3StridedSlice4lstm_100/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_100/strided_slice_3/stack:output:0)lstm_100/strided_slice_3/stack_1:output:0)lstm_100/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_100/transpose_1	Transpose4lstm_100/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_100/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_101/ShapeShapelstm_100/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_101/strided_sliceStridedSlicelstm_101/Shape:output:0%lstm_101/strided_slice/stack:output:0'lstm_101/strided_slice/stack_1:output:0'lstm_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_101/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_101/zeros/packedPacklstm_101/strided_slice:output:0 lstm_101/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_101/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_101/zerosFilllstm_101/zeros/packed:output:0lstm_101/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_101/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_101/zeros_1/packedPacklstm_101/strided_slice:output:0"lstm_101/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_101/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_101/zeros_1Fill lstm_101/zeros_1/packed:output:0lstm_101/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_101/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_101/transpose	Transposelstm_100/transpose_1:y:0 lstm_101/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_101/Shape_1Shapelstm_101/transpose:y:0*
T0*
_output_shapes
:h
lstm_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_101/strided_slice_1StridedSlicelstm_101/Shape_1:output:0'lstm_101/strided_slice_1/stack:output:0)lstm_101/strided_slice_1/stack_1:output:0)lstm_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_101/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_101/TensorArrayV2TensorListReserve-lstm_101/TensorArrayV2/element_shape:output:0!lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_101/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_101/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_101/transpose:y:0Glstm_101/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_101/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_101/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_101/strided_slice_2StridedSlicelstm_101/transpose:y:0'lstm_101/strided_slice_2/stack:output:0)lstm_101/strided_slice_2/stack_1:output:0)lstm_101/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_101/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp4lstm_101_lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_101/lstm_cell_26/MatMulMatMul!lstm_101/strided_slice_2:output:03lstm_101/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_101/lstm_cell_26/MatMul_1MatMullstm_101/zeros:output:05lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_101/lstm_cell_26/addAddV2&lstm_101/lstm_cell_26/MatMul:product:0(lstm_101/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp5lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_101/lstm_cell_26/BiasAddBiasAddlstm_101/lstm_cell_26/add:z:04lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_101/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_101/lstm_cell_26/splitSplit.lstm_101/lstm_cell_26/split/split_dim:output:0&lstm_101/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_101/lstm_cell_26/SigmoidSigmoid$lstm_101/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/Sigmoid_1Sigmoid$lstm_101/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/mulMul#lstm_101/lstm_cell_26/Sigmoid_1:y:0lstm_101/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_101/lstm_cell_26/ReluRelu$lstm_101/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_101/lstm_cell_26/mul_1Mul!lstm_101/lstm_cell_26/Sigmoid:y:0(lstm_101/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/add_1AddV2lstm_101/lstm_cell_26/mul:z:0lstm_101/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/Sigmoid_2Sigmoid$lstm_101/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_101/lstm_cell_26/Relu_1Relulstm_101/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_101/lstm_cell_26/mul_2Mul#lstm_101/lstm_cell_26/Sigmoid_2:y:0*lstm_101/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_101/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_101/TensorArrayV2_1TensorListReserve/lstm_101/TensorArrayV2_1/element_shape:output:0!lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_101/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_101/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_101/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_101/whileWhile$lstm_101/while/loop_counter:output:0*lstm_101/while/maximum_iterations:output:0lstm_101/time:output:0!lstm_101/TensorArrayV2_1:handle:0lstm_101/zeros:output:0lstm_101/zeros_1:output:0!lstm_101/strided_slice_1:output:0@lstm_101/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_101_lstm_cell_26_matmul_readvariableop_resource6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource5lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_101_while_body_161143*&
condR
lstm_101_while_cond_161142*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_101/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_101/TensorArrayV2Stack/TensorListStackTensorListStacklstm_101/while:output:3Blstm_101/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_101/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_101/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_101/strided_slice_3StridedSlice4lstm_101/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_101/strided_slice_3/stack:output:0)lstm_101/strided_slice_3/stack_1:output:0)lstm_101/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_101/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_101/transpose_1	Transpose4lstm_101/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_101/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_101/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_33/MatMulMatMul!lstm_101/strided_slice_3:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_33/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp-^lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp,^lstm_100/lstm_cell_25/MatMul/ReadVariableOp.^lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_100/while-^lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp,^lstm_101/lstm_cell_26/MatMul/ReadVariableOp.^lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp^lstm_101/while,^lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_99/lstm_cell_24/MatMul/ReadVariableOp-^lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_99/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2\
,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp2Z
+lstm_100/lstm_cell_25/MatMul/ReadVariableOp+lstm_100/lstm_cell_25/MatMul/ReadVariableOp2^
-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp2 
lstm_100/whilelstm_100/while2\
,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp2Z
+lstm_101/lstm_cell_26/MatMul/ReadVariableOp+lstm_101/lstm_cell_26/MatMul/ReadVariableOp2^
-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp2 
lstm_101/whilelstm_101/while2Z
+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_99/lstm_cell_24/MatMul/ReadVariableOp*lstm_99/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_99/whilelstm_99/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
сJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_161990
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161906*
condR
while_cond_161905*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
8
а
while_body_159757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ЮB
ъ

lstm_101_while_body_161143.
*lstm_101_while_lstm_101_while_loop_counter4
0lstm_101_while_lstm_101_while_maximum_iterations
lstm_101_while_placeholder 
lstm_101_while_placeholder_1 
lstm_101_while_placeholder_2 
lstm_101_while_placeholder_3-
)lstm_101_while_lstm_101_strided_slice_1_0i
elstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0:2(P
>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(K
=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0:(
lstm_101_while_identity
lstm_101_while_identity_1
lstm_101_while_identity_2
lstm_101_while_identity_3
lstm_101_while_identity_4
lstm_101_while_identity_5+
'lstm_101_while_lstm_101_strided_slice_1g
clstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensorL
:lstm_101_while_lstm_cell_26_matmul_readvariableop_resource:2(N
<lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource:
(I
;lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpЂ1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpЂ3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp
@lstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_101/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0lstm_101_while_placeholderIlstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_101/while/lstm_cell_26/MatMulMatMul9lstm_101/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_101/while/lstm_cell_26/MatMul_1MatMullstm_101_while_placeholder_2;lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_101/while/lstm_cell_26/addAddV2,lstm_101/while/lstm_cell_26/MatMul:product:0.lstm_101/while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_101/while/lstm_cell_26/BiasAddBiasAdd#lstm_101/while/lstm_cell_26/add:z:0:lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_101/while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_101/while/lstm_cell_26/splitSplit4lstm_101/while/lstm_cell_26/split/split_dim:output:0,lstm_101/while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_101/while/lstm_cell_26/SigmoidSigmoid*lstm_101/while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_101/while/lstm_cell_26/Sigmoid_1Sigmoid*lstm_101/while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_101/while/lstm_cell_26/mulMul)lstm_101/while/lstm_cell_26/Sigmoid_1:y:0lstm_101_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_101/while/lstm_cell_26/ReluRelu*lstm_101/while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_101/while/lstm_cell_26/mul_1Mul'lstm_101/while/lstm_cell_26/Sigmoid:y:0.lstm_101/while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_101/while/lstm_cell_26/add_1AddV2#lstm_101/while/lstm_cell_26/mul:z:0%lstm_101/while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_101/while/lstm_cell_26/Sigmoid_2Sigmoid*lstm_101/while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_101/while/lstm_cell_26/Relu_1Relu%lstm_101/while/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_101/while/lstm_cell_26/mul_2Mul)lstm_101/while/lstm_cell_26/Sigmoid_2:y:00lstm_101/while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_101/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_101_while_placeholder_1lstm_101_while_placeholder%lstm_101/while/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_101/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_101/while/addAddV2lstm_101_while_placeholderlstm_101/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_101/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_101/while/add_1AddV2*lstm_101_while_lstm_101_while_loop_counterlstm_101/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_101/while/IdentityIdentitylstm_101/while/add_1:z:0^lstm_101/while/NoOp*
T0*
_output_shapes
: 
lstm_101/while/Identity_1Identity0lstm_101_while_lstm_101_while_maximum_iterations^lstm_101/while/NoOp*
T0*
_output_shapes
: t
lstm_101/while/Identity_2Identitylstm_101/while/add:z:0^lstm_101/while/NoOp*
T0*
_output_shapes
: Ё
lstm_101/while/Identity_3IdentityClstm_101/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_101/while/NoOp*
T0*
_output_shapes
: 
lstm_101/while/Identity_4Identity%lstm_101/while/lstm_cell_26/mul_2:z:0^lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/while/Identity_5Identity%lstm_101/while/lstm_cell_26/add_1:z:0^lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_101/while/NoOpNoOp3^lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2^lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp4^lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_101_while_identity lstm_101/while/Identity:output:0"?
lstm_101_while_identity_1"lstm_101/while/Identity_1:output:0"?
lstm_101_while_identity_2"lstm_101/while/Identity_2:output:0"?
lstm_101_while_identity_3"lstm_101/while/Identity_3:output:0"?
lstm_101_while_identity_4"lstm_101/while/Identity_4:output:0"?
lstm_101_while_identity_5"lstm_101/while/Identity_5:output:0"T
'lstm_101_while_lstm_101_strided_slice_1)lstm_101_while_lstm_101_strided_slice_1_0"|
;lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0"~
<lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0"z
:lstm_101_while_lstm_cell_26_matmul_readvariableop_resource<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0"Ь
clstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensorelstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2f
1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp2j
3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_163137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163137___redundant_placeholder04
0while_while_cond_163137___redundant_placeholder14
0while_while_cond_163137___redundant_placeholder24
0while_while_cond_163137___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ЄJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_159841

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159757*
condR
while_cond_159756*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ЃJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_160537

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160453*
condR
while_cond_160452*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_162191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162191___redundant_placeholder04
0while_while_cond_162191___redundant_placeholder14
0while_while_cond_162191___redundant_placeholder24
0while_while_cond_162191___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
е

H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158559

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
ы
і
-__inference_lstm_cell_24_layer_call_fn_163544

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
оД
Й
!__inference__wrapped_model_158492
lstm_99_inputT
Asequential_33_lstm_99_lstm_cell_24_matmul_readvariableop_resource:	V
Csequential_33_lstm_99_lstm_cell_24_matmul_1_readvariableop_resource:	dQ
Bsequential_33_lstm_99_lstm_cell_24_biasadd_readvariableop_resource:	U
Bsequential_33_lstm_100_lstm_cell_25_matmul_readvariableop_resource:	dШW
Dsequential_33_lstm_100_lstm_cell_25_matmul_1_readvariableop_resource:	2ШR
Csequential_33_lstm_100_lstm_cell_25_biasadd_readvariableop_resource:	ШT
Bsequential_33_lstm_101_lstm_cell_26_matmul_readvariableop_resource:2(V
Dsequential_33_lstm_101_lstm_cell_26_matmul_1_readvariableop_resource:
(Q
Csequential_33_lstm_101_lstm_cell_26_biasadd_readvariableop_resource:(G
5sequential_33_dense_33_matmul_readvariableop_resource:
D
6sequential_33_dense_33_biasadd_readvariableop_resource:
identityЂ-sequential_33/dense_33/BiasAdd/ReadVariableOpЂ,sequential_33/dense_33/MatMul/ReadVariableOpЂ:sequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpЂ9sequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOpЂ;sequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpЂsequential_33/lstm_100/whileЂ:sequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpЂ9sequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOpЂ;sequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpЂsequential_33/lstm_101/whileЂ9sequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpЂ8sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOpЂ:sequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpЂsequential_33/lstm_99/whileX
sequential_33/lstm_99/ShapeShapelstm_99_input*
T0*
_output_shapes
:s
)sequential_33/lstm_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_33/lstm_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_33/lstm_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_33/lstm_99/strided_sliceStridedSlice$sequential_33/lstm_99/Shape:output:02sequential_33/lstm_99/strided_slice/stack:output:04sequential_33/lstm_99/strided_slice/stack_1:output:04sequential_33/lstm_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_33/lstm_99/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЕ
"sequential_33/lstm_99/zeros/packedPack,sequential_33/lstm_99/strided_slice:output:0-sequential_33/lstm_99/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_33/lstm_99/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_33/lstm_99/zerosFill+sequential_33/lstm_99/zeros/packed:output:0*sequential_33/lstm_99/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
&sequential_33/lstm_99/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЙ
$sequential_33/lstm_99/zeros_1/packedPack,sequential_33/lstm_99/strided_slice:output:0/sequential_33/lstm_99/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_33/lstm_99/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_33/lstm_99/zeros_1Fill-sequential_33/lstm_99/zeros_1/packed:output:0,sequential_33/lstm_99/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdy
$sequential_33/lstm_99/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_33/lstm_99/transpose	Transposelstm_99_input-sequential_33/lstm_99/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџp
sequential_33/lstm_99/Shape_1Shape#sequential_33/lstm_99/transpose:y:0*
T0*
_output_shapes
:u
+sequential_33/lstm_99/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_33/lstm_99/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_33/lstm_99/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_33/lstm_99/strided_slice_1StridedSlice&sequential_33/lstm_99/Shape_1:output:04sequential_33/lstm_99/strided_slice_1/stack:output:06sequential_33/lstm_99/strided_slice_1/stack_1:output:06sequential_33/lstm_99/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_33/lstm_99/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_33/lstm_99/TensorArrayV2TensorListReserve:sequential_33/lstm_99/TensorArrayV2/element_shape:output:0.sequential_33/lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_33/lstm_99/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential_33/lstm_99/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_33/lstm_99/transpose:y:0Tsequential_33/lstm_99/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_33/lstm_99/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_33/lstm_99/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_33/lstm_99/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%sequential_33/lstm_99/strided_slice_2StridedSlice#sequential_33/lstm_99/transpose:y:04sequential_33/lstm_99/strided_slice_2/stack:output:06sequential_33/lstm_99/strided_slice_2/stack_1:output:06sequential_33/lstm_99/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЛ
8sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOpReadVariableOpAsequential_33_lstm_99_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0и
)sequential_33/lstm_99/lstm_cell_24/MatMulMatMul.sequential_33/lstm_99/strided_slice_2:output:0@sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
:sequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpCsequential_33_lstm_99_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0в
+sequential_33/lstm_99/lstm_cell_24/MatMul_1MatMul$sequential_33/lstm_99/zeros:output:0Bsequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЮ
&sequential_33/lstm_99/lstm_cell_24/addAddV23sequential_33/lstm_99/lstm_cell_24/MatMul:product:05sequential_33/lstm_99/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
9sequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpBsequential_33_lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0з
*sequential_33/lstm_99/lstm_cell_24/BiasAddBiasAdd*sequential_33/lstm_99/lstm_cell_24/add:z:0Asequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџt
2sequential_33/lstm_99/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_33/lstm_99/lstm_cell_24/splitSplit;sequential_33/lstm_99/lstm_cell_24/split/split_dim:output:03sequential_33/lstm_99/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
*sequential_33/lstm_99/lstm_cell_24/SigmoidSigmoid1sequential_33/lstm_99/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_33/lstm_99/lstm_cell_24/Sigmoid_1Sigmoid1sequential_33/lstm_99/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЙ
&sequential_33/lstm_99/lstm_cell_24/mulMul0sequential_33/lstm_99/lstm_cell_24/Sigmoid_1:y:0&sequential_33/lstm_99/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
'sequential_33/lstm_99/lstm_cell_24/ReluRelu1sequential_33/lstm_99/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdШ
(sequential_33/lstm_99/lstm_cell_24/mul_1Mul.sequential_33/lstm_99/lstm_cell_24/Sigmoid:y:05sequential_33/lstm_99/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdН
(sequential_33/lstm_99/lstm_cell_24/add_1AddV2*sequential_33/lstm_99/lstm_cell_24/mul:z:0,sequential_33/lstm_99/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_33/lstm_99/lstm_cell_24/Sigmoid_2Sigmoid1sequential_33/lstm_99/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_33/lstm_99/lstm_cell_24/Relu_1Relu,sequential_33/lstm_99/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЬ
(sequential_33/lstm_99/lstm_cell_24/mul_2Mul0sequential_33/lstm_99/lstm_cell_24/Sigmoid_2:y:07sequential_33/lstm_99/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
3sequential_33/lstm_99/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   њ
%sequential_33/lstm_99/TensorArrayV2_1TensorListReserve<sequential_33/lstm_99/TensorArrayV2_1/element_shape:output:0.sequential_33/lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_33/lstm_99/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_33/lstm_99/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_33/lstm_99/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
sequential_33/lstm_99/whileWhile1sequential_33/lstm_99/while/loop_counter:output:07sequential_33/lstm_99/while/maximum_iterations:output:0#sequential_33/lstm_99/time:output:0.sequential_33/lstm_99/TensorArrayV2_1:handle:0$sequential_33/lstm_99/zeros:output:0&sequential_33/lstm_99/zeros_1:output:0.sequential_33/lstm_99/strided_slice_1:output:0Msequential_33/lstm_99/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_33_lstm_99_lstm_cell_24_matmul_readvariableop_resourceCsequential_33_lstm_99_lstm_cell_24_matmul_1_readvariableop_resourceBsequential_33_lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_33_lstm_99_while_body_158124*3
cond+R)
'sequential_33_lstm_99_while_cond_158123*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Fsequential_33/lstm_99/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
8sequential_33/lstm_99/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_33/lstm_99/while:output:3Osequential_33/lstm_99/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0~
+sequential_33/lstm_99/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_33/lstm_99/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_33/lstm_99/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential_33/lstm_99/strided_slice_3StridedSliceAsequential_33/lstm_99/TensorArrayV2Stack/TensorListStack:tensor:04sequential_33/lstm_99/strided_slice_3/stack:output:06sequential_33/lstm_99/strided_slice_3/stack_1:output:06sequential_33/lstm_99/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask{
&sequential_33/lstm_99/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential_33/lstm_99/transpose_1	TransposeAsequential_33/lstm_99/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_33/lstm_99/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdq
sequential_33/lstm_99/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    q
sequential_33/lstm_100/ShapeShape%sequential_33/lstm_99/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_33/lstm_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_33/lstm_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_33/lstm_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$sequential_33/lstm_100/strided_sliceStridedSlice%sequential_33/lstm_100/Shape:output:03sequential_33/lstm_100/strided_slice/stack:output:05sequential_33/lstm_100/strided_slice/stack_1:output:05sequential_33/lstm_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_33/lstm_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_33/lstm_100/zeros/packedPack-sequential_33/lstm_100/strided_slice:output:0.sequential_33/lstm_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_33/lstm_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential_33/lstm_100/zerosFill,sequential_33/lstm_100/zeros/packed:output:0+sequential_33/lstm_100/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
'sequential_33/lstm_100/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2М
%sequential_33/lstm_100/zeros_1/packedPack-sequential_33/lstm_100/strided_slice:output:00sequential_33/lstm_100/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_33/lstm_100/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
sequential_33/lstm_100/zeros_1Fill.sequential_33/lstm_100/zeros_1/packed:output:0-sequential_33/lstm_100/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
%sequential_33/lstm_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
 sequential_33/lstm_100/transpose	Transpose%sequential_33/lstm_99/transpose_1:y:0.sequential_33/lstm_100/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdr
sequential_33/lstm_100/Shape_1Shape$sequential_33/lstm_100/transpose:y:0*
T0*
_output_shapes
:v
,sequential_33/lstm_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_33/lstm_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&sequential_33/lstm_100/strided_slice_1StridedSlice'sequential_33/lstm_100/Shape_1:output:05sequential_33/lstm_100/strided_slice_1/stack:output:07sequential_33/lstm_100/strided_slice_1/stack_1:output:07sequential_33/lstm_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_33/lstm_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџљ
$sequential_33/lstm_100/TensorArrayV2TensorListReserve;sequential_33/lstm_100/TensorArrayV2/element_shape:output:0/sequential_33/lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Lsequential_33/lstm_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ѕ
>sequential_33/lstm_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_33/lstm_100/transpose:y:0Usequential_33/lstm_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвv
,sequential_33/lstm_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_33/lstm_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
&sequential_33/lstm_100/strided_slice_2StridedSlice$sequential_33/lstm_100/transpose:y:05sequential_33/lstm_100/strided_slice_2/stack:output:07sequential_33/lstm_100/strided_slice_2/stack_1:output:07sequential_33/lstm_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskН
9sequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpBsequential_33_lstm_100_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0л
*sequential_33/lstm_100/lstm_cell_25/MatMulMatMul/sequential_33/lstm_100/strided_slice_2:output:0Asequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШС
;sequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpDsequential_33_lstm_100_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0е
,sequential_33/lstm_100/lstm_cell_25/MatMul_1MatMul%sequential_33/lstm_100/zeros:output:0Csequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШб
'sequential_33/lstm_100/lstm_cell_25/addAddV24sequential_33/lstm_100/lstm_cell_25/MatMul:product:06sequential_33/lstm_100/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЛ
:sequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpCsequential_33_lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0к
+sequential_33/lstm_100/lstm_cell_25/BiasAddBiasAdd+sequential_33/lstm_100/lstm_cell_25/add:z:0Bsequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШu
3sequential_33/lstm_100/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
)sequential_33/lstm_100/lstm_cell_25/splitSplit<sequential_33/lstm_100/lstm_cell_25/split/split_dim:output:04sequential_33/lstm_100/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
+sequential_33/lstm_100/lstm_cell_25/SigmoidSigmoid2sequential_33/lstm_100/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
-sequential_33/lstm_100/lstm_cell_25/Sigmoid_1Sigmoid2sequential_33/lstm_100/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2М
'sequential_33/lstm_100/lstm_cell_25/mulMul1sequential_33/lstm_100/lstm_cell_25/Sigmoid_1:y:0'sequential_33/lstm_100/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
(sequential_33/lstm_100/lstm_cell_25/ReluRelu2sequential_33/lstm_100/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ы
)sequential_33/lstm_100/lstm_cell_25/mul_1Mul/sequential_33/lstm_100/lstm_cell_25/Sigmoid:y:06sequential_33/lstm_100/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Р
)sequential_33/lstm_100/lstm_cell_25/add_1AddV2+sequential_33/lstm_100/lstm_cell_25/mul:z:0-sequential_33/lstm_100/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
-sequential_33/lstm_100/lstm_cell_25/Sigmoid_2Sigmoid2sequential_33/lstm_100/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_33/lstm_100/lstm_cell_25/Relu_1Relu-sequential_33/lstm_100/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Я
)sequential_33/lstm_100/lstm_cell_25/mul_2Mul1sequential_33/lstm_100/lstm_cell_25/Sigmoid_2:y:08sequential_33/lstm_100/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
4sequential_33/lstm_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   §
&sequential_33/lstm_100/TensorArrayV2_1TensorListReserve=sequential_33/lstm_100/TensorArrayV2_1/element_shape:output:0/sequential_33/lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв]
sequential_33/lstm_100/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_33/lstm_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџk
)sequential_33/lstm_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
sequential_33/lstm_100/whileWhile2sequential_33/lstm_100/while/loop_counter:output:08sequential_33/lstm_100/while/maximum_iterations:output:0$sequential_33/lstm_100/time:output:0/sequential_33/lstm_100/TensorArrayV2_1:handle:0%sequential_33/lstm_100/zeros:output:0'sequential_33/lstm_100/zeros_1:output:0/sequential_33/lstm_100/strided_slice_1:output:0Nsequential_33/lstm_100/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_33_lstm_100_lstm_cell_25_matmul_readvariableop_resourceDsequential_33_lstm_100_lstm_cell_25_matmul_1_readvariableop_resourceCsequential_33_lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_33_lstm_100_while_body_158263*4
cond,R*
(sequential_33_lstm_100_while_cond_158262*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Gsequential_33/lstm_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
9sequential_33/lstm_100/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_33/lstm_100/while:output:3Psequential_33/lstm_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
,sequential_33/lstm_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџx
.sequential_33/lstm_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
&sequential_33/lstm_100/strided_slice_3StridedSliceBsequential_33/lstm_100/TensorArrayV2Stack/TensorListStack:tensor:05sequential_33/lstm_100/strided_slice_3/stack:output:07sequential_33/lstm_100/strided_slice_3/stack_1:output:07sequential_33/lstm_100/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask|
'sequential_33/lstm_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
"sequential_33/lstm_100/transpose_1	TransposeBsequential_33/lstm_100/TensorArrayV2Stack/TensorListStack:tensor:00sequential_33/lstm_100/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2r
sequential_33/lstm_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_33/lstm_101/ShapeShape&sequential_33/lstm_100/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_33/lstm_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_33/lstm_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_33/lstm_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$sequential_33/lstm_101/strided_sliceStridedSlice%sequential_33/lstm_101/Shape:output:03sequential_33/lstm_101/strided_slice/stack:output:05sequential_33/lstm_101/strided_slice/stack_1:output:05sequential_33/lstm_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_33/lstm_101/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_33/lstm_101/zeros/packedPack-sequential_33/lstm_101/strided_slice:output:0.sequential_33/lstm_101/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_33/lstm_101/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential_33/lstm_101/zerosFill,sequential_33/lstm_101/zeros/packed:output:0+sequential_33/lstm_101/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
i
'sequential_33/lstm_101/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
М
%sequential_33/lstm_101/zeros_1/packedPack-sequential_33/lstm_101/strided_slice:output:00sequential_33/lstm_101/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_33/lstm_101/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
sequential_33/lstm_101/zeros_1Fill.sequential_33/lstm_101/zeros_1/packed:output:0-sequential_33/lstm_101/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
%sequential_33/lstm_101/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
 sequential_33/lstm_101/transpose	Transpose&sequential_33/lstm_100/transpose_1:y:0.sequential_33/lstm_101/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2r
sequential_33/lstm_101/Shape_1Shape$sequential_33/lstm_101/transpose:y:0*
T0*
_output_shapes
:v
,sequential_33/lstm_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_33/lstm_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&sequential_33/lstm_101/strided_slice_1StridedSlice'sequential_33/lstm_101/Shape_1:output:05sequential_33/lstm_101/strided_slice_1/stack:output:07sequential_33/lstm_101/strided_slice_1/stack_1:output:07sequential_33/lstm_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_33/lstm_101/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџљ
$sequential_33/lstm_101/TensorArrayV2TensorListReserve;sequential_33/lstm_101/TensorArrayV2/element_shape:output:0/sequential_33/lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Lsequential_33/lstm_101/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ѕ
>sequential_33/lstm_101/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_33/lstm_101/transpose:y:0Usequential_33/lstm_101/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвv
,sequential_33/lstm_101/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_101/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_33/lstm_101/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
&sequential_33/lstm_101/strided_slice_2StridedSlice$sequential_33/lstm_101/transpose:y:05sequential_33/lstm_101/strided_slice_2/stack:output:07sequential_33/lstm_101/strided_slice_2/stack_1:output:07sequential_33/lstm_101/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskМ
9sequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOpReadVariableOpBsequential_33_lstm_101_lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0к
*sequential_33/lstm_101/lstm_cell_26/MatMulMatMul/sequential_33/lstm_101/strided_slice_2:output:0Asequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Р
;sequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOpDsequential_33_lstm_101_lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0д
,sequential_33/lstm_101/lstm_cell_26/MatMul_1MatMul%sequential_33/lstm_101/zeros:output:0Csequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(а
'sequential_33/lstm_101/lstm_cell_26/addAddV24sequential_33/lstm_101/lstm_cell_26/MatMul:product:06sequential_33/lstm_101/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(К
:sequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOpCsequential_33_lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0й
+sequential_33/lstm_101/lstm_cell_26/BiasAddBiasAdd+sequential_33/lstm_101/lstm_cell_26/add:z:0Bsequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(u
3sequential_33/lstm_101/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
)sequential_33/lstm_101/lstm_cell_26/splitSplit<sequential_33/lstm_101/lstm_cell_26/split/split_dim:output:04sequential_33/lstm_101/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
+sequential_33/lstm_101/lstm_cell_26/SigmoidSigmoid2sequential_33/lstm_101/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

-sequential_33/lstm_101/lstm_cell_26/Sigmoid_1Sigmoid2sequential_33/lstm_101/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
М
'sequential_33/lstm_101/lstm_cell_26/mulMul1sequential_33/lstm_101/lstm_cell_26/Sigmoid_1:y:0'sequential_33/lstm_101/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_33/lstm_101/lstm_cell_26/ReluRelu2sequential_33/lstm_101/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ы
)sequential_33/lstm_101/lstm_cell_26/mul_1Mul/sequential_33/lstm_101/lstm_cell_26/Sigmoid:y:06sequential_33/lstm_101/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Р
)sequential_33/lstm_101/lstm_cell_26/add_1AddV2+sequential_33/lstm_101/lstm_cell_26/mul:z:0-sequential_33/lstm_101/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

-sequential_33/lstm_101/lstm_cell_26/Sigmoid_2Sigmoid2sequential_33/lstm_101/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

*sequential_33/lstm_101/lstm_cell_26/Relu_1Relu-sequential_33/lstm_101/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Я
)sequential_33/lstm_101/lstm_cell_26/mul_2Mul1sequential_33/lstm_101/lstm_cell_26/Sigmoid_2:y:08sequential_33/lstm_101/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

4sequential_33/lstm_101/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   §
&sequential_33/lstm_101/TensorArrayV2_1TensorListReserve=sequential_33/lstm_101/TensorArrayV2_1/element_shape:output:0/sequential_33/lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв]
sequential_33/lstm_101/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_33/lstm_101/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџk
)sequential_33/lstm_101/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
sequential_33/lstm_101/whileWhile2sequential_33/lstm_101/while/loop_counter:output:08sequential_33/lstm_101/while/maximum_iterations:output:0$sequential_33/lstm_101/time:output:0/sequential_33/lstm_101/TensorArrayV2_1:handle:0%sequential_33/lstm_101/zeros:output:0'sequential_33/lstm_101/zeros_1:output:0/sequential_33/lstm_101/strided_slice_1:output:0Nsequential_33/lstm_101/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_33_lstm_101_lstm_cell_26_matmul_readvariableop_resourceDsequential_33_lstm_101_lstm_cell_26_matmul_1_readvariableop_resourceCsequential_33_lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_33_lstm_101_while_body_158402*4
cond,R*
(sequential_33_lstm_101_while_cond_158401*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
Gsequential_33/lstm_101/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
9sequential_33/lstm_101/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_33/lstm_101/while:output:3Psequential_33/lstm_101/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0
,sequential_33/lstm_101/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџx
.sequential_33/lstm_101/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_33/lstm_101/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
&sequential_33/lstm_101/strided_slice_3StridedSliceBsequential_33/lstm_101/TensorArrayV2Stack/TensorListStack:tensor:05sequential_33/lstm_101/strided_slice_3/stack:output:07sequential_33/lstm_101/strided_slice_3/stack_1:output:07sequential_33/lstm_101/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_mask|
'sequential_33/lstm_101/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
"sequential_33/lstm_101/transpose_1	TransposeBsequential_33/lstm_101/TensorArrayV2Stack/TensorListStack:tensor:00sequential_33/lstm_101/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
r
sequential_33/lstm_101/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Р
sequential_33/dense_33/MatMulMatMul/sequential_33/lstm_101/strided_slice_3:output:04sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_33/dense_33/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp;^sequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp:^sequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOp<^sequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp^sequential_33/lstm_100/while;^sequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp:^sequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOp<^sequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp^sequential_33/lstm_101/while:^sequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp9^sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOp;^sequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp^sequential_33/lstm_99/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp2x
:sequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp:sequential_33/lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp2v
9sequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOp9sequential_33/lstm_100/lstm_cell_25/MatMul/ReadVariableOp2z
;sequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp;sequential_33/lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp2<
sequential_33/lstm_100/whilesequential_33/lstm_100/while2x
:sequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp:sequential_33/lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp2v
9sequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOp9sequential_33/lstm_101/lstm_cell_26/MatMul/ReadVariableOp2z
;sequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp;sequential_33/lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp2<
sequential_33/lstm_101/whilesequential_33/lstm_101/while2v
9sequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp9sequential_33/lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp2t
8sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOp8sequential_33/lstm_99/lstm_cell_24/MatMul/ReadVariableOp2x
:sequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp:sequential_33/lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp2:
sequential_33/lstm_99/whilesequential_33/lstm_99/while:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input
Е
У
while_cond_162378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162378___redundant_placeholder04
0while_while_cond_162378___redundant_placeholder14
0while_while_cond_162378___redundant_placeholder24
0while_while_cond_162378___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
S
Г
(sequential_33_lstm_100_while_body_158263J
Fsequential_33_lstm_100_while_sequential_33_lstm_100_while_loop_counterP
Lsequential_33_lstm_100_while_sequential_33_lstm_100_while_maximum_iterations,
(sequential_33_lstm_100_while_placeholder.
*sequential_33_lstm_100_while_placeholder_1.
*sequential_33_lstm_100_while_placeholder_2.
*sequential_33_lstm_100_while_placeholder_3I
Esequential_33_lstm_100_while_sequential_33_lstm_100_strided_slice_1_0
sequential_33_lstm_100_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_100_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_33_lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0:	dШ_
Lsequential_33_lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШZ
Ksequential_33_lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш)
%sequential_33_lstm_100_while_identity+
'sequential_33_lstm_100_while_identity_1+
'sequential_33_lstm_100_while_identity_2+
'sequential_33_lstm_100_while_identity_3+
'sequential_33_lstm_100_while_identity_4+
'sequential_33_lstm_100_while_identity_5G
Csequential_33_lstm_100_while_sequential_33_lstm_100_strided_slice_1
sequential_33_lstm_100_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_100_tensorarrayunstack_tensorlistfromtensor[
Hsequential_33_lstm_100_while_lstm_cell_25_matmul_readvariableop_resource:	dШ]
Jsequential_33_lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШX
Isequential_33_lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ@sequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpЂ?sequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpЂAsequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp
Nsequential_33/lstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
@sequential_33/lstm_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_33_lstm_100_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_100_tensorarrayunstack_tensorlistfromtensor_0(sequential_33_lstm_100_while_placeholderWsequential_33/lstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Ы
?sequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpJsequential_33_lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0џ
0sequential_33/lstm_100/while/lstm_cell_25/MatMulMatMulGsequential_33/lstm_100/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЯ
Asequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpLsequential_33_lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0ц
2sequential_33/lstm_100/while/lstm_cell_25/MatMul_1MatMul*sequential_33_lstm_100_while_placeholder_2Isequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШу
-sequential_33/lstm_100/while/lstm_cell_25/addAddV2:sequential_33/lstm_100/while/lstm_cell_25/MatMul:product:0<sequential_33/lstm_100/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
@sequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpKsequential_33_lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0ь
1sequential_33/lstm_100/while/lstm_cell_25/BiasAddBiasAdd1sequential_33/lstm_100/while/lstm_cell_25/add:z:0Hsequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ{
9sequential_33/lstm_100/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
/sequential_33/lstm_100/while/lstm_cell_25/splitSplitBsequential_33/lstm_100/while/lstm_cell_25/split/split_dim:output:0:sequential_33/lstm_100/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitЈ
1sequential_33/lstm_100/while/lstm_cell_25/SigmoidSigmoid8sequential_33/lstm_100/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
3sequential_33/lstm_100/while/lstm_cell_25/Sigmoid_1Sigmoid8sequential_33/lstm_100/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ы
-sequential_33/lstm_100/while/lstm_cell_25/mulMul7sequential_33/lstm_100/while/lstm_cell_25/Sigmoid_1:y:0*sequential_33_lstm_100_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
.sequential_33/lstm_100/while/lstm_cell_25/ReluRelu8sequential_33/lstm_100/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2н
/sequential_33/lstm_100/while/lstm_cell_25/mul_1Mul5sequential_33/lstm_100/while/lstm_cell_25/Sigmoid:y:0<sequential_33/lstm_100/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
/sequential_33/lstm_100/while/lstm_cell_25/add_1AddV21sequential_33/lstm_100/while/lstm_cell_25/mul:z:03sequential_33/lstm_100/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
3sequential_33/lstm_100/while/lstm_cell_25/Sigmoid_2Sigmoid8sequential_33/lstm_100/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
0sequential_33/lstm_100/while/lstm_cell_25/Relu_1Relu3sequential_33/lstm_100/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2с
/sequential_33/lstm_100/while/lstm_cell_25/mul_2Mul7sequential_33/lstm_100/while/lstm_cell_25/Sigmoid_2:y:0>sequential_33/lstm_100/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
Asequential_33/lstm_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_33_lstm_100_while_placeholder_1(sequential_33_lstm_100_while_placeholder3sequential_33/lstm_100/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвd
"sequential_33/lstm_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ё
 sequential_33/lstm_100/while/addAddV2(sequential_33_lstm_100_while_placeholder+sequential_33/lstm_100/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_33/lstm_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :У
"sequential_33/lstm_100/while/add_1AddV2Fsequential_33_lstm_100_while_sequential_33_lstm_100_while_loop_counter-sequential_33/lstm_100/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_33/lstm_100/while/IdentityIdentity&sequential_33/lstm_100/while/add_1:z:0"^sequential_33/lstm_100/while/NoOp*
T0*
_output_shapes
: Ц
'sequential_33/lstm_100/while/Identity_1IdentityLsequential_33_lstm_100_while_sequential_33_lstm_100_while_maximum_iterations"^sequential_33/lstm_100/while/NoOp*
T0*
_output_shapes
: 
'sequential_33/lstm_100/while/Identity_2Identity$sequential_33/lstm_100/while/add:z:0"^sequential_33/lstm_100/while/NoOp*
T0*
_output_shapes
: Ы
'sequential_33/lstm_100/while/Identity_3IdentityQsequential_33/lstm_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_33/lstm_100/while/NoOp*
T0*
_output_shapes
: О
'sequential_33/lstm_100/while/Identity_4Identity3sequential_33/lstm_100/while/lstm_cell_25/mul_2:z:0"^sequential_33/lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2О
'sequential_33/lstm_100/while/Identity_5Identity3sequential_33/lstm_100/while/lstm_cell_25/add_1:z:0"^sequential_33/lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
!sequential_33/lstm_100/while/NoOpNoOpA^sequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp@^sequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpB^sequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_33_lstm_100_while_identity.sequential_33/lstm_100/while/Identity:output:0"[
'sequential_33_lstm_100_while_identity_10sequential_33/lstm_100/while/Identity_1:output:0"[
'sequential_33_lstm_100_while_identity_20sequential_33/lstm_100/while/Identity_2:output:0"[
'sequential_33_lstm_100_while_identity_30sequential_33/lstm_100/while/Identity_3:output:0"[
'sequential_33_lstm_100_while_identity_40sequential_33/lstm_100/while/Identity_4:output:0"[
'sequential_33_lstm_100_while_identity_50sequential_33/lstm_100/while/Identity_5:output:0"
Isequential_33_lstm_100_while_lstm_cell_25_biasadd_readvariableop_resourceKsequential_33_lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0"
Jsequential_33_lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resourceLsequential_33_lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0"
Hsequential_33_lstm_100_while_lstm_cell_25_matmul_readvariableop_resourceJsequential_33_lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0"
Csequential_33_lstm_100_while_sequential_33_lstm_100_strided_slice_1Esequential_33_lstm_100_while_sequential_33_lstm_100_strided_slice_1_0"
sequential_33_lstm_100_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_100_tensorarrayunstack_tensorlistfromtensorsequential_33_lstm_100_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2
@sequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp@sequential_33/lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2
?sequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp?sequential_33/lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp2
Asequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOpAsequential_33/lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
дJ

D__inference_lstm_101_layer_call_and_return_conditional_losses_163222
inputs_0=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_163138*
condR
while_cond_163137*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0

Е
)__inference_lstm_101_layer_call_fn_162903
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_159342o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0

Ж
)__inference_lstm_100_layer_call_fn_162309

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_159841s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ш
ѓ
-__inference_lstm_cell_26_layer_call_fn_163740

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
Е
У
while_cond_162994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162994___redundant_placeholder04
0while_while_cond_162994___redundant_placeholder14
0while_while_cond_162994___redundant_placeholder24
0while_while_cond_162994___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ц"
у
while_body_158764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_158788_0:	.
while_lstm_cell_24_158790_0:	d*
while_lstm_cell_24_158792_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_158788:	,
while_lstm_cell_24_158790:	d(
while_lstm_cell_24_158792:	Ђ*while/lstm_cell_24/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_158788_0while_lstm_cell_24_158790_0while_lstm_cell_24_158792_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158705м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_24_158788while_lstm_cell_24_158788_0"8
while_lstm_cell_24_158790while_lstm_cell_24_158790_0"8
while_lstm_cell_24_158792while_lstm_cell_24_158792_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
н

H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163625

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
Е
У
while_cond_159906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159906___redundant_placeholder04
0while_while_cond_159906___redundant_placeholder14
0while_while_cond_159906___redundant_placeholder24
0while_while_cond_159906___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
В

ї
lstm_100_while_cond_161430.
*lstm_100_while_lstm_100_while_loop_counter4
0lstm_100_while_lstm_100_while_maximum_iterations
lstm_100_while_placeholder 
lstm_100_while_placeholder_1 
lstm_100_while_placeholder_2 
lstm_100_while_placeholder_30
,lstm_100_while_less_lstm_100_strided_slice_1F
Blstm_100_while_lstm_100_while_cond_161430___redundant_placeholder0F
Blstm_100_while_lstm_100_while_cond_161430___redundant_placeholder1F
Blstm_100_while_lstm_100_while_cond_161430___redundant_placeholder2F
Blstm_100_while_lstm_100_while_cond_161430___redundant_placeholder3
lstm_100_while_identity

lstm_100/while/LessLesslstm_100_while_placeholder,lstm_100_while_less_lstm_100_strided_slice_1*
T0*
_output_shapes
: ]
lstm_100/while/IdentityIdentitylstm_100/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_100_while_identity lstm_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ц"
у
while_body_159114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_159138_0:	dШ.
while_lstm_cell_25_159140_0:	2Ш*
while_lstm_cell_25_159142_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_159138:	dШ,
while_lstm_cell_25_159140:	2Ш(
while_lstm_cell_25_159142:	ШЂ*while/lstm_cell_25/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_159138_0while_lstm_cell_25_159140_0while_lstm_cell_25_159142_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_159055м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_25_159138while_lstm_cell_25_159138_0"8
while_lstm_cell_25_159140while_lstm_cell_25_159140_0"8
while_lstm_cell_25_159142while_lstm_cell_25_159142_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_158763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158763___redundant_placeholder04
0while_while_cond_158763___redundant_placeholder14
0while_while_cond_158763___redundant_placeholder24
0while_while_cond_158763___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
џ7
Ъ
while_body_163424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_101_layer_call_and_return_conditional_losses_159533

inputs%
lstm_cell_26_159451:2(%
lstm_cell_26_159453:
(!
lstm_cell_26_159455:(
identityЂ$lstm_cell_26/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskѕ
$lstm_cell_26/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_26_159451lstm_cell_26_159453lstm_cell_26_159455*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159405n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_26_159451lstm_cell_26_159453lstm_cell_26_159455*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159464*
condR
while_cond_159463*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
u
NoOpNoOp%^lstm_cell_26/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_26/StatefulPartitionedCall$lstm_cell_26/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
Ы

H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159405

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
г

H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163821

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
К

(sequential_33_lstm_100_while_cond_158262J
Fsequential_33_lstm_100_while_sequential_33_lstm_100_while_loop_counterP
Lsequential_33_lstm_100_while_sequential_33_lstm_100_while_maximum_iterations,
(sequential_33_lstm_100_while_placeholder.
*sequential_33_lstm_100_while_placeholder_1.
*sequential_33_lstm_100_while_placeholder_2.
*sequential_33_lstm_100_while_placeholder_3L
Hsequential_33_lstm_100_while_less_sequential_33_lstm_100_strided_slice_1b
^sequential_33_lstm_100_while_sequential_33_lstm_100_while_cond_158262___redundant_placeholder0b
^sequential_33_lstm_100_while_sequential_33_lstm_100_while_cond_158262___redundant_placeholder1b
^sequential_33_lstm_100_while_sequential_33_lstm_100_while_cond_158262___redundant_placeholder2b
^sequential_33_lstm_100_while_sequential_33_lstm_100_while_cond_158262___redundant_placeholder3)
%sequential_33_lstm_100_while_identity
О
!sequential_33/lstm_100/while/LessLess(sequential_33_lstm_100_while_placeholderHsequential_33_lstm_100_while_less_sequential_33_lstm_100_strided_slice_1*
T0*
_output_shapes
: y
%sequential_33/lstm_100/while/IdentityIdentity%sequential_33/lstm_100/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_33_lstm_100_while_identity.sequential_33/lstm_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ч	
ѕ
D__inference_dense_33_layer_call_and_return_conditional_losses_160009

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
S
­
(sequential_33_lstm_101_while_body_158402J
Fsequential_33_lstm_101_while_sequential_33_lstm_101_while_loop_counterP
Lsequential_33_lstm_101_while_sequential_33_lstm_101_while_maximum_iterations,
(sequential_33_lstm_101_while_placeholder.
*sequential_33_lstm_101_while_placeholder_1.
*sequential_33_lstm_101_while_placeholder_2.
*sequential_33_lstm_101_while_placeholder_3I
Esequential_33_lstm_101_while_sequential_33_lstm_101_strided_slice_1_0
sequential_33_lstm_101_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_101_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_33_lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0:2(^
Lsequential_33_lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(Y
Ksequential_33_lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0:()
%sequential_33_lstm_101_while_identity+
'sequential_33_lstm_101_while_identity_1+
'sequential_33_lstm_101_while_identity_2+
'sequential_33_lstm_101_while_identity_3+
'sequential_33_lstm_101_while_identity_4+
'sequential_33_lstm_101_while_identity_5G
Csequential_33_lstm_101_while_sequential_33_lstm_101_strided_slice_1
sequential_33_lstm_101_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_101_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_33_lstm_101_while_lstm_cell_26_matmul_readvariableop_resource:2(\
Jsequential_33_lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource:
(W
Isequential_33_lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ@sequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpЂ?sequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpЂAsequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp
Nsequential_33/lstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
@sequential_33/lstm_101/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_33_lstm_101_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_101_tensorarrayunstack_tensorlistfromtensor_0(sequential_33_lstm_101_while_placeholderWsequential_33/lstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ъ
?sequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOpJsequential_33_lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ў
0sequential_33/lstm_101/while/lstm_cell_26/MatMulMatMulGsequential_33/lstm_101/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ю
Asequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOpLsequential_33_lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0х
2sequential_33/lstm_101/while/lstm_cell_26/MatMul_1MatMul*sequential_33_lstm_101_while_placeholder_2Isequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(т
-sequential_33/lstm_101/while/lstm_cell_26/addAddV2:sequential_33/lstm_101/while/lstm_cell_26/MatMul:product:0<sequential_33/lstm_101/while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ш
@sequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOpKsequential_33_lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
1sequential_33/lstm_101/while/lstm_cell_26/BiasAddBiasAdd1sequential_33/lstm_101/while/lstm_cell_26/add:z:0Hsequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ({
9sequential_33/lstm_101/while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
/sequential_33/lstm_101/while/lstm_cell_26/splitSplitBsequential_33/lstm_101/while/lstm_cell_26/split/split_dim:output:0:sequential_33/lstm_101/while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitЈ
1sequential_33/lstm_101/while/lstm_cell_26/SigmoidSigmoid8sequential_33/lstm_101/while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
3sequential_33/lstm_101/while/lstm_cell_26/Sigmoid_1Sigmoid8sequential_33/lstm_101/while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ы
-sequential_33/lstm_101/while/lstm_cell_26/mulMul7sequential_33/lstm_101/while/lstm_cell_26/Sigmoid_1:y:0*sequential_33_lstm_101_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
.sequential_33/lstm_101/while/lstm_cell_26/ReluRelu8sequential_33/lstm_101/while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
н
/sequential_33/lstm_101/while/lstm_cell_26/mul_1Mul5sequential_33/lstm_101/while/lstm_cell_26/Sigmoid:y:0<sequential_33/lstm_101/while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
в
/sequential_33/lstm_101/while/lstm_cell_26/add_1AddV21sequential_33/lstm_101/while/lstm_cell_26/mul:z:03sequential_33/lstm_101/while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
3sequential_33/lstm_101/while/lstm_cell_26/Sigmoid_2Sigmoid8sequential_33/lstm_101/while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

0sequential_33/lstm_101/while/lstm_cell_26/Relu_1Relu3sequential_33/lstm_101/while/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
с
/sequential_33/lstm_101/while/lstm_cell_26/mul_2Mul7sequential_33/lstm_101/while/lstm_cell_26/Sigmoid_2:y:0>sequential_33/lstm_101/while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Asequential_33/lstm_101/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_33_lstm_101_while_placeholder_1(sequential_33_lstm_101_while_placeholder3sequential_33/lstm_101/while/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвd
"sequential_33/lstm_101/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ё
 sequential_33/lstm_101/while/addAddV2(sequential_33_lstm_101_while_placeholder+sequential_33/lstm_101/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_33/lstm_101/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :У
"sequential_33/lstm_101/while/add_1AddV2Fsequential_33_lstm_101_while_sequential_33_lstm_101_while_loop_counter-sequential_33/lstm_101/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_33/lstm_101/while/IdentityIdentity&sequential_33/lstm_101/while/add_1:z:0"^sequential_33/lstm_101/while/NoOp*
T0*
_output_shapes
: Ц
'sequential_33/lstm_101/while/Identity_1IdentityLsequential_33_lstm_101_while_sequential_33_lstm_101_while_maximum_iterations"^sequential_33/lstm_101/while/NoOp*
T0*
_output_shapes
: 
'sequential_33/lstm_101/while/Identity_2Identity$sequential_33/lstm_101/while/add:z:0"^sequential_33/lstm_101/while/NoOp*
T0*
_output_shapes
: Ы
'sequential_33/lstm_101/while/Identity_3IdentityQsequential_33/lstm_101/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_33/lstm_101/while/NoOp*
T0*
_output_shapes
: О
'sequential_33/lstm_101/while/Identity_4Identity3sequential_33/lstm_101/while/lstm_cell_26/mul_2:z:0"^sequential_33/lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
О
'sequential_33/lstm_101/while/Identity_5Identity3sequential_33/lstm_101/while/lstm_cell_26/add_1:z:0"^sequential_33/lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
!sequential_33/lstm_101/while/NoOpNoOpA^sequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp@^sequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpB^sequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_33_lstm_101_while_identity.sequential_33/lstm_101/while/Identity:output:0"[
'sequential_33_lstm_101_while_identity_10sequential_33/lstm_101/while/Identity_1:output:0"[
'sequential_33_lstm_101_while_identity_20sequential_33/lstm_101/while/Identity_2:output:0"[
'sequential_33_lstm_101_while_identity_30sequential_33/lstm_101/while/Identity_3:output:0"[
'sequential_33_lstm_101_while_identity_40sequential_33/lstm_101/while/Identity_4:output:0"[
'sequential_33_lstm_101_while_identity_50sequential_33/lstm_101/while/Identity_5:output:0"
Isequential_33_lstm_101_while_lstm_cell_26_biasadd_readvariableop_resourceKsequential_33_lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0"
Jsequential_33_lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resourceLsequential_33_lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0"
Hsequential_33_lstm_101_while_lstm_cell_26_matmul_readvariableop_resourceJsequential_33_lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0"
Csequential_33_lstm_101_while_sequential_33_lstm_101_strided_slice_1Esequential_33_lstm_101_while_sequential_33_lstm_101_strided_slice_1_0"
sequential_33_lstm_101_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_101_tensorarrayunstack_tensorlistfromtensorsequential_33_lstm_101_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_101_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2
@sequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp@sequential_33/lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2
?sequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp?sequential_33/lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp2
Asequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOpAsequential_33/lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
ЄJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_162749

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162665*
condR
while_cond_162664*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ЄJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_160372

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160288*
condR
while_cond_160287*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
тJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_162606
inputs_0>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162522*
condR
while_cond_162521*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
Е
У
while_cond_162807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162807___redundant_placeholder04
0while_while_cond_162807___redundant_placeholder14
0while_while_cond_162807___redundant_placeholder24
0while_while_cond_162807___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_158572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158572___redundant_placeholder04
0while_while_cond_158572___redundant_placeholder14
0while_while_cond_158572___redundant_placeholder24
0while_while_cond_158572___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
8
а
while_body_160288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_159272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159272___redundant_placeholder04
0while_while_cond_159272___redundant_placeholder14
0while_while_cond_159272___redundant_placeholder24
0while_while_cond_159272___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8
а
while_body_162049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
џ7
Ъ
while_body_162995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Г
ю
I__inference_sequential_33_layer_call_and_return_conditional_losses_160687
lstm_99_input!
lstm_99_160660:	!
lstm_99_160662:	d
lstm_99_160664:	"
lstm_100_160667:	dШ"
lstm_100_160669:	2Ш
lstm_100_160671:	Ш!
lstm_101_160674:2(!
lstm_101_160676:
(
lstm_101_160678:(!
dense_33_160681:

dense_33_160683:
identityЂ dense_33/StatefulPartitionedCallЂ lstm_100/StatefulPartitionedCallЂ lstm_101/StatefulPartitionedCallЂlstm_99/StatefulPartitionedCall
lstm_99/StatefulPartitionedCallStatefulPartitionedCalllstm_99_inputlstm_99_160660lstm_99_160662lstm_99_160664*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_159691Љ
 lstm_100/StatefulPartitionedCallStatefulPartitionedCall(lstm_99/StatefulPartitionedCall:output:0lstm_100_160667lstm_100_160669lstm_100_160671*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_159841І
 lstm_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_100/StatefulPartitionedCall:output:0lstm_101_160674lstm_101_160676lstm_101_160678*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_159991
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)lstm_101/StatefulPartitionedCall:output:0dense_33_160681dense_33_160683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_160009x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp!^dense_33/StatefulPartitionedCall!^lstm_100/StatefulPartitionedCall!^lstm_101/StatefulPartitionedCall ^lstm_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 lstm_100/StatefulPartitionedCall lstm_100/StatefulPartitionedCall2D
 lstm_101/StatefulPartitionedCall lstm_101/StatefulPartitionedCall2B
lstm_99/StatefulPartitionedCalllstm_99/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input
J

D__inference_lstm_101_layer_call_and_return_conditional_losses_159991

inputs=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159907*
condR
while_cond_159906*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
р"
н
while_body_159273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_26_159297_0:2(-
while_lstm_cell_26_159299_0:
()
while_lstm_cell_26_159301_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_26_159297:2(+
while_lstm_cell_26_159299:
('
while_lstm_cell_26_159301:(Ђ*while/lstm_cell_26/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_26/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_26_159297_0while_lstm_cell_26_159299_0while_lstm_cell_26_159301_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159259м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_26/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_26/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_26/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_26_159297while_lstm_cell_26_159297_0"8
while_lstm_cell_26_159299while_lstm_cell_26_159299_0"8
while_lstm_cell_26_159301while_lstm_cell_26_159301_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_26/StatefulPartitionedCall*while/lstm_cell_26/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_101_layer_call_and_return_conditional_losses_163508

inputs=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_163424*
condR
while_cond_163423*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ЃJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_159691

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159607*
condR
while_cond_159606*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_158922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158922___redundant_placeholder04
0while_while_cond_158922___redundant_placeholder14
0while_while_cond_158922___redundant_placeholder24
0while_while_cond_158922___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
і
Г
)__inference_lstm_101_layer_call_fn_162936

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_160207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Н


$__inference_signature_wrapper_160752
lstm_99_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCalllstm_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_158492o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input
J

D__inference_lstm_101_layer_call_and_return_conditional_losses_160207

inputs=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160123*
condR
while_cond_160122*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8
а
while_body_162522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_160287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160287___redundant_placeholder04
0while_while_cond_160287___redundant_placeholder14
0while_while_cond_160287___redundant_placeholder24
0while_while_cond_160287___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
џ7
Ъ
while_body_159907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Г
ю
I__inference_sequential_33_layer_call_and_return_conditional_losses_160717
lstm_99_input!
lstm_99_160690:	!
lstm_99_160692:	d
lstm_99_160694:	"
lstm_100_160697:	dШ"
lstm_100_160699:	2Ш
lstm_100_160701:	Ш!
lstm_101_160704:2(!
lstm_101_160706:
(
lstm_101_160708:(!
dense_33_160711:

dense_33_160713:
identityЂ dense_33/StatefulPartitionedCallЂ lstm_100/StatefulPartitionedCallЂ lstm_101/StatefulPartitionedCallЂlstm_99/StatefulPartitionedCall
lstm_99/StatefulPartitionedCallStatefulPartitionedCalllstm_99_inputlstm_99_160690lstm_99_160692lstm_99_160694*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_160537Љ
 lstm_100/StatefulPartitionedCallStatefulPartitionedCall(lstm_99/StatefulPartitionedCall:output:0lstm_100_160697lstm_100_160699lstm_100_160701*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_160372І
 lstm_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_100/StatefulPartitionedCall:output:0lstm_101_160704lstm_101_160706lstm_101_160708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_160207
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)lstm_101/StatefulPartitionedCall:output:0dense_33_160711dense_33_160713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_160009x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp!^dense_33/StatefulPartitionedCall!^lstm_100/StatefulPartitionedCall!^lstm_101/StatefulPartitionedCall ^lstm_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 lstm_100/StatefulPartitionedCall lstm_100/StatefulPartitionedCall2D
 lstm_101/StatefulPartitionedCall lstm_101/StatefulPartitionedCall2B
lstm_99/StatefulPartitionedCalllstm_99/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input
лB
№

lstm_100_while_body_161004.
*lstm_100_while_lstm_100_while_loop_counter4
0lstm_100_while_lstm_100_while_maximum_iterations
lstm_100_while_placeholder 
lstm_100_while_placeholder_1 
lstm_100_while_placeholder_2 
lstm_100_while_placeholder_3-
)lstm_100_while_lstm_100_strided_slice_1_0i
elstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0:	dШQ
>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШL
=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
lstm_100_while_identity
lstm_100_while_identity_1
lstm_100_while_identity_2
lstm_100_while_identity_3
lstm_100_while_identity_4
lstm_100_while_identity_5+
'lstm_100_while_lstm_100_strided_slice_1g
clstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensorM
:lstm_100_while_lstm_cell_25_matmul_readvariableop_resource:	dШO
<lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШJ
;lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpЂ1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpЂ3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp
@lstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0lstm_100_while_placeholderIlstm_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_100/while/lstm_cell_25/MatMulMatMul9lstm_100/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_100/while/lstm_cell_25/MatMul_1MatMullstm_100_while_placeholder_2;lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_100/while/lstm_cell_25/addAddV2,lstm_100/while/lstm_cell_25/MatMul:product:0.lstm_100/while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_100/while/lstm_cell_25/BiasAddBiasAdd#lstm_100/while/lstm_cell_25/add:z:0:lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_100/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_100/while/lstm_cell_25/splitSplit4lstm_100/while/lstm_cell_25/split/split_dim:output:0,lstm_100/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_100/while/lstm_cell_25/SigmoidSigmoid*lstm_100/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_100/while/lstm_cell_25/Sigmoid_1Sigmoid*lstm_100/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_100/while/lstm_cell_25/mulMul)lstm_100/while/lstm_cell_25/Sigmoid_1:y:0lstm_100_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_100/while/lstm_cell_25/ReluRelu*lstm_100/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_100/while/lstm_cell_25/mul_1Mul'lstm_100/while/lstm_cell_25/Sigmoid:y:0.lstm_100/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_100/while/lstm_cell_25/add_1AddV2#lstm_100/while/lstm_cell_25/mul:z:0%lstm_100/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_100/while/lstm_cell_25/Sigmoid_2Sigmoid*lstm_100/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_100/while/lstm_cell_25/Relu_1Relu%lstm_100/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_100/while/lstm_cell_25/mul_2Mul)lstm_100/while/lstm_cell_25/Sigmoid_2:y:00lstm_100/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_100_while_placeholder_1lstm_100_while_placeholder%lstm_100/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_100/while/addAddV2lstm_100_while_placeholderlstm_100/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_100/while/add_1AddV2*lstm_100_while_lstm_100_while_loop_counterlstm_100/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_100/while/IdentityIdentitylstm_100/while/add_1:z:0^lstm_100/while/NoOp*
T0*
_output_shapes
: 
lstm_100/while/Identity_1Identity0lstm_100_while_lstm_100_while_maximum_iterations^lstm_100/while/NoOp*
T0*
_output_shapes
: t
lstm_100/while/Identity_2Identitylstm_100/while/add:z:0^lstm_100/while/NoOp*
T0*
_output_shapes
: Ё
lstm_100/while/Identity_3IdentityClstm_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_100/while/NoOp*
T0*
_output_shapes
: 
lstm_100/while/Identity_4Identity%lstm_100/while/lstm_cell_25/mul_2:z:0^lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/while/Identity_5Identity%lstm_100/while/lstm_cell_25/add_1:z:0^lstm_100/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_100/while/NoOpNoOp3^lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2^lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp4^lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_100_while_identity lstm_100/while/Identity:output:0"?
lstm_100_while_identity_1"lstm_100/while/Identity_1:output:0"?
lstm_100_while_identity_2"lstm_100/while/Identity_2:output:0"?
lstm_100_while_identity_3"lstm_100/while/Identity_3:output:0"?
lstm_100_while_identity_4"lstm_100/while/Identity_4:output:0"?
lstm_100_while_identity_5"lstm_100/while/Identity_5:output:0"T
'lstm_100_while_lstm_100_strided_slice_1)lstm_100_while_lstm_100_strided_slice_1_0"|
;lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource=lstm_100_while_lstm_cell_25_biasadd_readvariableop_resource_0"~
<lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource>lstm_100_while_lstm_cell_25_matmul_1_readvariableop_resource_0"z
:lstm_100_while_lstm_cell_25_matmul_readvariableop_resource<lstm_100_while_lstm_cell_25_matmul_readvariableop_resource_0"Ь
clstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensorelstm_100_while_tensorarrayv2read_tensorlistgetitem_lstm_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2lstm_100/while/lstm_cell_25/BiasAdd/ReadVariableOp2f
1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp1lstm_100/while/lstm_cell_25/MatMul/ReadVariableOp2j
3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp3lstm_100/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_163280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163280___redundant_placeholder04
0while_while_cond_163280___redundant_placeholder14
0while_while_cond_163280___redundant_placeholder24
0while_while_cond_163280___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ХA
а

lstm_99_while_body_161292,
(lstm_99_while_lstm_99_while_loop_counter2
.lstm_99_while_lstm_99_while_maximum_iterations
lstm_99_while_placeholder
lstm_99_while_placeholder_1
lstm_99_while_placeholder_2
lstm_99_while_placeholder_3+
'lstm_99_while_lstm_99_strided_slice_1_0g
clstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0:	P
=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dK
<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0:	
lstm_99_while_identity
lstm_99_while_identity_1
lstm_99_while_identity_2
lstm_99_while_identity_3
lstm_99_while_identity_4
lstm_99_while_identity_5)
%lstm_99_while_lstm_99_strided_slice_1e
alstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensorL
9lstm_99_while_lstm_cell_24_matmul_readvariableop_resource:	N
;lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource:	dI
:lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpЂ0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpЂ2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp
?lstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_99/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0lstm_99_while_placeholderHlstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_99/while/lstm_cell_24/MatMulMatMul8lstm_99/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_99/while/lstm_cell_24/MatMul_1MatMullstm_99_while_placeholder_2:lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_99/while/lstm_cell_24/addAddV2+lstm_99/while/lstm_cell_24/MatMul:product:0-lstm_99/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_99/while/lstm_cell_24/BiasAddBiasAdd"lstm_99/while/lstm_cell_24/add:z:09lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_99/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_99/while/lstm_cell_24/splitSplit3lstm_99/while/lstm_cell_24/split/split_dim:output:0+lstm_99/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_99/while/lstm_cell_24/SigmoidSigmoid)lstm_99/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_99/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_99/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/lstm_cell_24/mulMul(lstm_99/while/lstm_cell_24/Sigmoid_1:y:0lstm_99_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/lstm_cell_24/ReluRelu)lstm_99/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_99/while/lstm_cell_24/mul_1Mul&lstm_99/while/lstm_cell_24/Sigmoid:y:0-lstm_99/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_99/while/lstm_cell_24/add_1AddV2"lstm_99/while/lstm_cell_24/mul:z:0$lstm_99/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_99/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_99/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_99/while/lstm_cell_24/Relu_1Relu$lstm_99/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_99/while/lstm_cell_24/mul_2Mul(lstm_99/while/lstm_cell_24/Sigmoid_2:y:0/lstm_99/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdх
2lstm_99/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_99_while_placeholder_1lstm_99_while_placeholder$lstm_99/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_99/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_99/while/addAddV2lstm_99_while_placeholderlstm_99/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_99/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_99/while/add_1AddV2(lstm_99_while_lstm_99_while_loop_counterlstm_99/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_99/while/IdentityIdentitylstm_99/while/add_1:z:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_1Identity.lstm_99_while_lstm_99_while_maximum_iterations^lstm_99/while/NoOp*
T0*
_output_shapes
: q
lstm_99/while/Identity_2Identitylstm_99/while/add:z:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_3IdentityBlstm_99/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_99/while/NoOp*
T0*
_output_shapes
: 
lstm_99/while/Identity_4Identity$lstm_99/while/lstm_cell_24/mul_2:z:0^lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/while/Identity_5Identity$lstm_99/while/lstm_cell_24/add_1:z:0^lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_99/while/NoOpNoOp2^lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_99_while_identitylstm_99/while/Identity:output:0"=
lstm_99_while_identity_1!lstm_99/while/Identity_1:output:0"=
lstm_99_while_identity_2!lstm_99/while/Identity_2:output:0"=
lstm_99_while_identity_3!lstm_99/while/Identity_3:output:0"=
lstm_99_while_identity_4!lstm_99/while/Identity_4:output:0"=
lstm_99_while_identity_5!lstm_99/while/Identity_5:output:0"P
%lstm_99_while_lstm_99_strided_slice_1'lstm_99_while_lstm_99_strided_slice_1_0"z
:lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_99_while_lstm_cell_24_matmul_readvariableop_resource;lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0"Ш
alstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensorclstm_99_while_tensorarrayv2read_tensorlistgetitem_lstm_99_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_160122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160122___redundant_placeholder04
0while_while_cond_160122___redundant_placeholder14
0while_while_cond_160122___redundant_placeholder24
0while_while_cond_160122___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_159606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159606___redundant_placeholder04
0while_while_cond_159606___redundant_placeholder14
0while_while_cond_159606___redundant_placeholder24
0while_while_cond_159606___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
В

ї
lstm_101_while_cond_161569.
*lstm_101_while_lstm_101_while_loop_counter4
0lstm_101_while_lstm_101_while_maximum_iterations
lstm_101_while_placeholder 
lstm_101_while_placeholder_1 
lstm_101_while_placeholder_2 
lstm_101_while_placeholder_30
,lstm_101_while_less_lstm_101_strided_slice_1F
Blstm_101_while_lstm_101_while_cond_161569___redundant_placeholder0F
Blstm_101_while_lstm_101_while_cond_161569___redundant_placeholder1F
Blstm_101_while_lstm_101_while_cond_161569___redundant_placeholder2F
Blstm_101_while_lstm_101_while_cond_161569___redundant_placeholder3
lstm_101_while_identity

lstm_101/while/LessLesslstm_101_while_placeholder,lstm_101_while_less_lstm_101_strided_slice_1*
T0*
_output_shapes
: ]
lstm_101/while/IdentityIdentitylstm_101/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_101_while_identity lstm_101/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:


у
lstm_99_while_cond_160864,
(lstm_99_while_lstm_99_while_loop_counter2
.lstm_99_while_lstm_99_while_maximum_iterations
lstm_99_while_placeholder
lstm_99_while_placeholder_1
lstm_99_while_placeholder_2
lstm_99_while_placeholder_3.
*lstm_99_while_less_lstm_99_strided_slice_1D
@lstm_99_while_lstm_99_while_cond_160864___redundant_placeholder0D
@lstm_99_while_lstm_99_while_cond_160864___redundant_placeholder1D
@lstm_99_while_lstm_99_while_cond_160864___redundant_placeholder2D
@lstm_99_while_lstm_99_while_cond_160864___redundant_placeholder3
lstm_99_while_identity

lstm_99/while/LessLesslstm_99_while_placeholder*lstm_99_while_less_lstm_99_strided_slice_1*
T0*
_output_shapes
: [
lstm_99/while/IdentityIdentitylstm_99/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_99_while_identitylstm_99/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
8

C__inference_lstm_99_layer_call_and_return_conditional_losses_158833

inputs&
lstm_cell_24_158751:	&
lstm_cell_24_158753:	d"
lstm_cell_24_158755:	
identityЂ$lstm_cell_24/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_158751lstm_cell_24_158753lstm_cell_24_158755*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158705n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_158751lstm_cell_24_158753lstm_cell_24_158755*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158764*
condR
while_cond_158763*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_163423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163423___redundant_placeholder04
0while_while_cond_163423___redundant_placeholder14
0while_while_cond_163423___redundant_placeholder24
0while_while_cond_163423___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8
а
while_body_162379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ц"
у
while_body_158923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_158947_0:	dШ.
while_lstm_cell_25_158949_0:	2Ш*
while_lstm_cell_25_158951_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_158947:	dШ,
while_lstm_cell_25_158949:	2Ш(
while_lstm_cell_25_158951:	ШЂ*while/lstm_cell_25/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_158947_0while_lstm_cell_25_158949_0while_lstm_cell_25_158951_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_158909м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_25_158947while_lstm_cell_25_158947_0"8
while_lstm_cell_25_158949while_lstm_cell_25_158949_0"8
while_lstm_cell_25_158951while_lstm_cell_25_158951_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ЃJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_162276

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162192*
condR
while_cond_162191*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_159463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159463___redundant_placeholder04
0while_while_cond_159463___redundant_placeholder14
0while_while_cond_159463___redundant_placeholder24
0while_while_cond_159463___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Ћ
И
)__inference_lstm_100_layer_call_fn_162287
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_158992|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
к


.__inference_sequential_33_layer_call_fn_160806

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_33_layer_call_and_return_conditional_losses_160605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_161762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161762___redundant_placeholder04
0while_while_cond_161762___redundant_placeholder14
0while_while_cond_161762___redundant_placeholder24
0while_while_cond_161762___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
н

H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163593

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
г

H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163789

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
ЮB
ъ

lstm_101_while_body_161570.
*lstm_101_while_lstm_101_while_loop_counter4
0lstm_101_while_lstm_101_while_maximum_iterations
lstm_101_while_placeholder 
lstm_101_while_placeholder_1 
lstm_101_while_placeholder_2 
lstm_101_while_placeholder_3-
)lstm_101_while_lstm_101_strided_slice_1_0i
elstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0:2(P
>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(K
=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0:(
lstm_101_while_identity
lstm_101_while_identity_1
lstm_101_while_identity_2
lstm_101_while_identity_3
lstm_101_while_identity_4
lstm_101_while_identity_5+
'lstm_101_while_lstm_101_strided_slice_1g
clstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensorL
:lstm_101_while_lstm_cell_26_matmul_readvariableop_resource:2(N
<lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource:
(I
;lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpЂ1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpЂ3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp
@lstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_101/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0lstm_101_while_placeholderIlstm_101/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_101/while/lstm_cell_26/MatMulMatMul9lstm_101/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_101/while/lstm_cell_26/MatMul_1MatMullstm_101_while_placeholder_2;lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_101/while/lstm_cell_26/addAddV2,lstm_101/while/lstm_cell_26/MatMul:product:0.lstm_101/while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_101/while/lstm_cell_26/BiasAddBiasAdd#lstm_101/while/lstm_cell_26/add:z:0:lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_101/while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_101/while/lstm_cell_26/splitSplit4lstm_101/while/lstm_cell_26/split/split_dim:output:0,lstm_101/while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_101/while/lstm_cell_26/SigmoidSigmoid*lstm_101/while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_101/while/lstm_cell_26/Sigmoid_1Sigmoid*lstm_101/while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_101/while/lstm_cell_26/mulMul)lstm_101/while/lstm_cell_26/Sigmoid_1:y:0lstm_101_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_101/while/lstm_cell_26/ReluRelu*lstm_101/while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_101/while/lstm_cell_26/mul_1Mul'lstm_101/while/lstm_cell_26/Sigmoid:y:0.lstm_101/while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_101/while/lstm_cell_26/add_1AddV2#lstm_101/while/lstm_cell_26/mul:z:0%lstm_101/while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_101/while/lstm_cell_26/Sigmoid_2Sigmoid*lstm_101/while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_101/while/lstm_cell_26/Relu_1Relu%lstm_101/while/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_101/while/lstm_cell_26/mul_2Mul)lstm_101/while/lstm_cell_26/Sigmoid_2:y:00lstm_101/while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_101/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_101_while_placeholder_1lstm_101_while_placeholder%lstm_101/while/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_101/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_101/while/addAddV2lstm_101_while_placeholderlstm_101/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_101/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_101/while/add_1AddV2*lstm_101_while_lstm_101_while_loop_counterlstm_101/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_101/while/IdentityIdentitylstm_101/while/add_1:z:0^lstm_101/while/NoOp*
T0*
_output_shapes
: 
lstm_101/while/Identity_1Identity0lstm_101_while_lstm_101_while_maximum_iterations^lstm_101/while/NoOp*
T0*
_output_shapes
: t
lstm_101/while/Identity_2Identitylstm_101/while/add:z:0^lstm_101/while/NoOp*
T0*
_output_shapes
: Ё
lstm_101/while/Identity_3IdentityClstm_101/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_101/while/NoOp*
T0*
_output_shapes
: 
lstm_101/while/Identity_4Identity%lstm_101/while/lstm_cell_26/mul_2:z:0^lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/while/Identity_5Identity%lstm_101/while/lstm_cell_26/add_1:z:0^lstm_101/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_101/while/NoOpNoOp3^lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2^lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp4^lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_101_while_identity lstm_101/while/Identity:output:0"?
lstm_101_while_identity_1"lstm_101/while/Identity_1:output:0"?
lstm_101_while_identity_2"lstm_101/while/Identity_2:output:0"?
lstm_101_while_identity_3"lstm_101/while/Identity_3:output:0"?
lstm_101_while_identity_4"lstm_101/while/Identity_4:output:0"?
lstm_101_while_identity_5"lstm_101/while/Identity_5:output:0"T
'lstm_101_while_lstm_101_strided_slice_1)lstm_101_while_lstm_101_strided_slice_1_0"|
;lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource=lstm_101_while_lstm_cell_26_biasadd_readvariableop_resource_0"~
<lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource>lstm_101_while_lstm_cell_26_matmul_1_readvariableop_resource_0"z
:lstm_101_while_lstm_cell_26_matmul_readvariableop_resource<lstm_101_while_lstm_cell_26_matmul_readvariableop_resource_0"Ь
clstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensorelstm_101_while_tensorarrayv2read_tensorlistgetitem_lstm_101_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2lstm_101/while/lstm_cell_26/BiasAdd/ReadVariableOp2f
1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp1lstm_101/while/lstm_cell_26/MatMul/ReadVariableOp2j
3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp3lstm_101/while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
8
а
while_body_161763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_100_layer_call_and_return_conditional_losses_158992

inputs&
lstm_cell_25_158910:	dШ&
lstm_cell_25_158912:	2Ш"
lstm_cell_25_158914:	Ш
identityЂ$lstm_cell_25/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskѕ
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_158910lstm_cell_25_158912lstm_cell_25_158914*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_158909n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_158910lstm_cell_25_158912lstm_cell_25_158914*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158923*
condR
while_cond_158922*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs

ч
I__inference_sequential_33_layer_call_and_return_conditional_losses_160016

inputs!
lstm_99_159692:	!
lstm_99_159694:	d
lstm_99_159696:	"
lstm_100_159842:	dШ"
lstm_100_159844:	2Ш
lstm_100_159846:	Ш!
lstm_101_159992:2(!
lstm_101_159994:
(
lstm_101_159996:(!
dense_33_160010:

dense_33_160012:
identityЂ dense_33/StatefulPartitionedCallЂ lstm_100/StatefulPartitionedCallЂ lstm_101/StatefulPartitionedCallЂlstm_99/StatefulPartitionedCall
lstm_99/StatefulPartitionedCallStatefulPartitionedCallinputslstm_99_159692lstm_99_159694lstm_99_159696*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_159691Љ
 lstm_100/StatefulPartitionedCallStatefulPartitionedCall(lstm_99/StatefulPartitionedCall:output:0lstm_100_159842lstm_100_159844lstm_100_159846*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_100_layer_call_and_return_conditional_losses_159841І
 lstm_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_100/StatefulPartitionedCall:output:0lstm_101_159992lstm_101_159994lstm_101_159996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_159991
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)lstm_101/StatefulPartitionedCall:output:0dense_33_160010dense_33_160012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_160009x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp!^dense_33/StatefulPartitionedCall!^lstm_100/StatefulPartitionedCall!^lstm_101/StatefulPartitionedCall ^lstm_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 lstm_100/StatefulPartitionedCall lstm_100/StatefulPartitionedCall2D
 lstm_101/StatefulPartitionedCall lstm_101/StatefulPartitionedCall2B
lstm_99/StatefulPartitionedCalllstm_99/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш
ѓ
-__inference_lstm_cell_26_layer_call_fn_163757

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
Е
У
while_cond_159113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159113___redundant_placeholder04
0while_while_cond_159113___redundant_placeholder14
0while_while_cond_159113___redundant_placeholder24
0while_while_cond_159113___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
R

'sequential_33_lstm_99_while_body_158124H
Dsequential_33_lstm_99_while_sequential_33_lstm_99_while_loop_counterN
Jsequential_33_lstm_99_while_sequential_33_lstm_99_while_maximum_iterations+
'sequential_33_lstm_99_while_placeholder-
)sequential_33_lstm_99_while_placeholder_1-
)sequential_33_lstm_99_while_placeholder_2-
)sequential_33_lstm_99_while_placeholder_3G
Csequential_33_lstm_99_while_sequential_33_lstm_99_strided_slice_1_0
sequential_33_lstm_99_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_99_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_33_lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0:	^
Ksequential_33_lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dY
Jsequential_33_lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0:	(
$sequential_33_lstm_99_while_identity*
&sequential_33_lstm_99_while_identity_1*
&sequential_33_lstm_99_while_identity_2*
&sequential_33_lstm_99_while_identity_3*
&sequential_33_lstm_99_while_identity_4*
&sequential_33_lstm_99_while_identity_5E
Asequential_33_lstm_99_while_sequential_33_lstm_99_strided_slice_1
}sequential_33_lstm_99_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_99_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_33_lstm_99_while_lstm_cell_24_matmul_readvariableop_resource:	\
Isequential_33_lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource:	dW
Hsequential_33_lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ?sequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpЂ>sequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpЂ@sequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp
Msequential_33/lstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential_33/lstm_99/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_33_lstm_99_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_99_tensorarrayunstack_tensorlistfromtensor_0'sequential_33_lstm_99_while_placeholderVsequential_33/lstm_99/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Щ
>sequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOpIsequential_33_lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ќ
/sequential_33/lstm_99/while/lstm_cell_24/MatMulMatMulFsequential_33/lstm_99/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЭ
@sequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpKsequential_33_lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0у
1sequential_33/lstm_99/while/lstm_cell_24/MatMul_1MatMul)sequential_33_lstm_99_while_placeholder_2Hsequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџр
,sequential_33/lstm_99/while/lstm_cell_24/addAddV29sequential_33/lstm_99/while/lstm_cell_24/MatMul:product:0;sequential_33/lstm_99/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
?sequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpJsequential_33_lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0щ
0sequential_33/lstm_99/while/lstm_cell_24/BiasAddBiasAdd0sequential_33/lstm_99/while/lstm_cell_24/add:z:0Gsequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
8sequential_33/lstm_99/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_33/lstm_99/while/lstm_cell_24/splitSplitAsequential_33/lstm_99/while/lstm_cell_24/split/split_dim:output:09sequential_33/lstm_99/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitІ
0sequential_33/lstm_99/while/lstm_cell_24/SigmoidSigmoid7sequential_33/lstm_99/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_33/lstm_99/while/lstm_cell_24/Sigmoid_1Sigmoid7sequential_33/lstm_99/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdШ
,sequential_33/lstm_99/while/lstm_cell_24/mulMul6sequential_33/lstm_99/while/lstm_cell_24/Sigmoid_1:y:0)sequential_33_lstm_99_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd 
-sequential_33/lstm_99/while/lstm_cell_24/ReluRelu7sequential_33/lstm_99/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdк
.sequential_33/lstm_99/while/lstm_cell_24/mul_1Mul4sequential_33/lstm_99/while/lstm_cell_24/Sigmoid:y:0;sequential_33/lstm_99/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЯ
.sequential_33/lstm_99/while/lstm_cell_24/add_1AddV20sequential_33/lstm_99/while/lstm_cell_24/mul:z:02sequential_33/lstm_99/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_33/lstm_99/while/lstm_cell_24/Sigmoid_2Sigmoid7sequential_33/lstm_99/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
/sequential_33/lstm_99/while/lstm_cell_24/Relu_1Relu2sequential_33/lstm_99/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdо
.sequential_33/lstm_99/while/lstm_cell_24/mul_2Mul6sequential_33/lstm_99/while/lstm_cell_24/Sigmoid_2:y:0=sequential_33/lstm_99/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
@sequential_33/lstm_99/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_33_lstm_99_while_placeholder_1'sequential_33_lstm_99_while_placeholder2sequential_33/lstm_99/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_33/lstm_99/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_33/lstm_99/while/addAddV2'sequential_33_lstm_99_while_placeholder*sequential_33/lstm_99/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_33/lstm_99/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_33/lstm_99/while/add_1AddV2Dsequential_33_lstm_99_while_sequential_33_lstm_99_while_loop_counter,sequential_33/lstm_99/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_33/lstm_99/while/IdentityIdentity%sequential_33/lstm_99/while/add_1:z:0!^sequential_33/lstm_99/while/NoOp*
T0*
_output_shapes
: Т
&sequential_33/lstm_99/while/Identity_1IdentityJsequential_33_lstm_99_while_sequential_33_lstm_99_while_maximum_iterations!^sequential_33/lstm_99/while/NoOp*
T0*
_output_shapes
: 
&sequential_33/lstm_99/while/Identity_2Identity#sequential_33/lstm_99/while/add:z:0!^sequential_33/lstm_99/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_33/lstm_99/while/Identity_3IdentityPsequential_33/lstm_99/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_33/lstm_99/while/NoOp*
T0*
_output_shapes
: Л
&sequential_33/lstm_99/while/Identity_4Identity2sequential_33/lstm_99/while/lstm_cell_24/mul_2:z:0!^sequential_33/lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЛ
&sequential_33/lstm_99/while/Identity_5Identity2sequential_33/lstm_99/while/lstm_cell_24/add_1:z:0!^sequential_33/lstm_99/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЈ
 sequential_33/lstm_99/while/NoOpNoOp@^sequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp?^sequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOpA^sequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_33_lstm_99_while_identity-sequential_33/lstm_99/while/Identity:output:0"Y
&sequential_33_lstm_99_while_identity_1/sequential_33/lstm_99/while/Identity_1:output:0"Y
&sequential_33_lstm_99_while_identity_2/sequential_33/lstm_99/while/Identity_2:output:0"Y
&sequential_33_lstm_99_while_identity_3/sequential_33/lstm_99/while/Identity_3:output:0"Y
&sequential_33_lstm_99_while_identity_4/sequential_33/lstm_99/while/Identity_4:output:0"Y
&sequential_33_lstm_99_while_identity_5/sequential_33/lstm_99/while/Identity_5:output:0"
Hsequential_33_lstm_99_while_lstm_cell_24_biasadd_readvariableop_resourceJsequential_33_lstm_99_while_lstm_cell_24_biasadd_readvariableop_resource_0"
Isequential_33_lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resourceKsequential_33_lstm_99_while_lstm_cell_24_matmul_1_readvariableop_resource_0"
Gsequential_33_lstm_99_while_lstm_cell_24_matmul_readvariableop_resourceIsequential_33_lstm_99_while_lstm_cell_24_matmul_readvariableop_resource_0"
Asequential_33_lstm_99_while_sequential_33_lstm_99_strided_slice_1Csequential_33_lstm_99_while_sequential_33_lstm_99_strided_slice_1_0"
}sequential_33_lstm_99_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_99_tensorarrayunstack_tensorlistfromtensorsequential_33_lstm_99_while_tensorarrayv2read_tensorlistgetitem_sequential_33_lstm_99_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
?sequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp?sequential_33/lstm_99/while/lstm_cell_24/BiasAdd/ReadVariableOp2
>sequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp>sequential_33/lstm_99/while/lstm_cell_24/MatMul/ReadVariableOp2
@sequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp@sequential_33/lstm_99/while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
џ7
Ъ
while_body_163281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_101_layer_call_and_return_conditional_losses_159342

inputs%
lstm_cell_26_159260:2(%
lstm_cell_26_159262:
(!
lstm_cell_26_159264:(
identityЂ$lstm_cell_26/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskѕ
$lstm_cell_26/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_26_159260lstm_cell_26_159262lstm_cell_26_159264*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_159259n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_26_159260lstm_cell_26_159262lstm_cell_26_159264*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159273*
condR
while_cond_159272*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
u
NoOpNoOp%^lstm_cell_26/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_26/StatefulPartitionedCall$lstm_cell_26/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
сJ

C__inference_lstm_99_layer_call_and_return_conditional_losses_161847
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:	@
-lstm_cell_24_matmul_1_readvariableop_resource:	d;
,lstm_cell_24_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_24/BiasAdd/ReadVariableOpЂ"lstm_cell_24/MatMul/ReadVariableOpЂ$lstm_cell_24/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161763*
condR
while_cond_161762*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
8
а
while_body_161906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
џ7
Ъ
while_body_163138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Ч	
ѕ
D__inference_dense_33_layer_call_and_return_conditional_losses_163527

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
J

D__inference_lstm_101_layer_call_and_return_conditional_losses_163365

inputs=
+lstm_cell_26_matmul_readvariableop_resource:2(?
-lstm_cell_26_matmul_1_readvariableop_resource:
(:
,lstm_cell_26_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_26/BiasAdd/ReadVariableOpЂ"lstm_cell_26/MatMul/ReadVariableOpЂ$lstm_cell_26/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_26/MatMul/ReadVariableOpReadVariableOp+lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_26/MatMulMatMulstrided_slice_2:output:0*lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_26/MatMul_1MatMulzeros:output:0,lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_26/addAddV2lstm_cell_26/MatMul:product:0lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_26/BiasAddBiasAddlstm_cell_26/add:z:0+lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_26/splitSplit%lstm_cell_26/split/split_dim:output:0lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_26/SigmoidSigmoidlstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_1Sigmoidlstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_26/mulMullstm_cell_26/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_26/ReluRelulstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_1Mullstm_cell_26/Sigmoid:y:0lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_26/add_1AddV2lstm_cell_26/mul:z:0lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_26/Sigmoid_2Sigmoidlstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_26/Relu_1Relulstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_26/mul_2Mullstm_cell_26/Sigmoid_2:y:0!lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_26_matmul_readvariableop_resource-lstm_cell_26_matmul_1_readvariableop_resource,lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_163281*
condR
while_cond_163280*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_26/BiasAdd/ReadVariableOp#^lstm_cell_26/MatMul/ReadVariableOp%^lstm_cell_26/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_26/BiasAdd/ReadVariableOp#lstm_cell_26/BiasAdd/ReadVariableOp2H
"lstm_cell_26/MatMul/ReadVariableOp"lstm_cell_26/MatMul/ReadVariableOp2L
$lstm_cell_26/MatMul_1/ReadVariableOp$lstm_cell_26/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Е
У
while_cond_159756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159756___redundant_placeholder04
0while_while_cond_159756___redundant_placeholder14
0while_while_cond_159756___redundant_placeholder24
0while_while_cond_159756___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_162521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162521___redundant_placeholder04
0while_while_cond_162521___redundant_placeholder14
0while_while_cond_162521___redundant_placeholder24
0while_while_cond_162521___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ЄJ

D__inference_lstm_100_layer_call_and_return_conditional_losses_162892

inputs>
+lstm_cell_25_matmul_readvariableop_resource:	dШ@
-lstm_cell_25_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_25_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_25/BiasAdd/ReadVariableOpЂ"lstm_cell_25/MatMul/ReadVariableOpЂ$lstm_cell_25/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162808*
condR
while_cond_162807*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ы
і
-__inference_lstm_cell_25_layer_call_fn_163659

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_159055o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
н

H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163691

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
8
а
while_body_162665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_25_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_25_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_25_matmul_readvariableop_resource:	dШF
3while_lstm_cell_25_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_25_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_25/BiasAdd/ReadVariableOpЂ(while/lstm_cell_25/MatMul/ReadVariableOpЂ*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Т

)__inference_dense_33_layer_call_fn_163517

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_160009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
В

ї
lstm_101_while_cond_161142.
*lstm_101_while_lstm_101_while_loop_counter4
0lstm_101_while_lstm_101_while_maximum_iterations
lstm_101_while_placeholder 
lstm_101_while_placeholder_1 
lstm_101_while_placeholder_2 
lstm_101_while_placeholder_30
,lstm_101_while_less_lstm_101_strided_slice_1F
Blstm_101_while_lstm_101_while_cond_161142___redundant_placeholder0F
Blstm_101_while_lstm_101_while_cond_161142___redundant_placeholder1F
Blstm_101_while_lstm_101_while_cond_161142___redundant_placeholder2F
Blstm_101_while_lstm_101_while_cond_161142___redundant_placeholder3
lstm_101_while_identity

lstm_101/while/LessLesslstm_101_while_placeholder,lstm_101_while_less_lstm_101_strided_slice_1*
T0*
_output_shapes
: ]
lstm_101/while/IdentityIdentitylstm_101/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_101_while_identity lstm_101/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8
а
while_body_160453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_24_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_24/BiasAdd/ReadVariableOpЂ(while/lstm_cell_24/MatMul/ReadVariableOpЂ*while/lstm_cell_24/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
НW

__inference__traced_save_163964
file_prefix.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_99_lstm_cell_99_kernel_read_readvariableopD
@savev2_lstm_99_lstm_cell_99_recurrent_kernel_read_readvariableop8
4savev2_lstm_99_lstm_cell_99_bias_read_readvariableop<
8savev2_lstm_100_lstm_cell_100_kernel_read_readvariableopF
Bsavev2_lstm_100_lstm_cell_100_recurrent_kernel_read_readvariableop:
6savev2_lstm_100_lstm_cell_100_bias_read_readvariableop<
8savev2_lstm_101_lstm_cell_101_kernel_read_readvariableopF
Bsavev2_lstm_101_lstm_cell_101_recurrent_kernel_read_readvariableop:
6savev2_lstm_101_lstm_cell_101_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableopA
=savev2_adam_lstm_99_lstm_cell_99_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_99_lstm_cell_99_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_99_lstm_cell_99_bias_m_read_readvariableopC
?savev2_adam_lstm_100_lstm_cell_100_kernel_m_read_readvariableopM
Isavev2_adam_lstm_100_lstm_cell_100_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_100_lstm_cell_100_bias_m_read_readvariableopC
?savev2_adam_lstm_101_lstm_cell_101_kernel_m_read_readvariableopM
Isavev2_adam_lstm_101_lstm_cell_101_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_101_lstm_cell_101_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableopA
=savev2_adam_lstm_99_lstm_cell_99_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_99_lstm_cell_99_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_99_lstm_cell_99_bias_v_read_readvariableopC
?savev2_adam_lstm_100_lstm_cell_100_kernel_v_read_readvariableopM
Isavev2_adam_lstm_100_lstm_cell_100_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_100_lstm_cell_100_bias_v_read_readvariableopC
?savev2_adam_lstm_101_lstm_cell_101_kernel_v_read_readvariableopM
Isavev2_adam_lstm_101_lstm_cell_101_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_101_lstm_cell_101_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
: Х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B и
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_99_lstm_cell_99_kernel_read_readvariableop@savev2_lstm_99_lstm_cell_99_recurrent_kernel_read_readvariableop4savev2_lstm_99_lstm_cell_99_bias_read_readvariableop8savev2_lstm_100_lstm_cell_100_kernel_read_readvariableopBsavev2_lstm_100_lstm_cell_100_recurrent_kernel_read_readvariableop6savev2_lstm_100_lstm_cell_100_bias_read_readvariableop8savev2_lstm_101_lstm_cell_101_kernel_read_readvariableopBsavev2_lstm_101_lstm_cell_101_recurrent_kernel_read_readvariableop6savev2_lstm_101_lstm_cell_101_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop=savev2_adam_lstm_99_lstm_cell_99_kernel_m_read_readvariableopGsavev2_adam_lstm_99_lstm_cell_99_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_99_lstm_cell_99_bias_m_read_readvariableop?savev2_adam_lstm_100_lstm_cell_100_kernel_m_read_readvariableopIsavev2_adam_lstm_100_lstm_cell_100_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_100_lstm_cell_100_bias_m_read_readvariableop?savev2_adam_lstm_101_lstm_cell_101_kernel_m_read_readvariableopIsavev2_adam_lstm_101_lstm_cell_101_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_101_lstm_cell_101_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop=savev2_adam_lstm_99_lstm_cell_99_kernel_v_read_readvariableopGsavev2_adam_lstm_99_lstm_cell_99_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_99_lstm_cell_99_bias_v_read_readvariableop?savev2_adam_lstm_100_lstm_cell_100_kernel_v_read_readvariableopIsavev2_adam_lstm_100_lstm_cell_100_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_100_lstm_cell_100_bias_v_read_readvariableop?savev2_adam_lstm_101_lstm_cell_101_kernel_v_read_readvariableopIsavev2_adam_lstm_101_lstm_cell_101_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_101_lstm_cell_101_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
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

identity_1Identity_1:output:0*г
_input_shapesС
О: :
:: : : : : :	:	d::	dШ:	2Ш:Ш:2(:
(:(: : :
::	:	d::	dШ:	2Ш:Ш:2(:
(:(:
::	:	d::	dШ:	2Ш:Ш:2(:
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
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dШ:%$!

_output_shapes
:	2Ш:!%

_output_shapes	
:Ш:$& 

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
Е
У
while_cond_160452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160452___redundant_placeholder04
0while_while_cond_160452___redundant_placeholder14
0while_while_cond_160452___redundant_placeholder24
0while_while_cond_160452___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
џ7
Ъ
while_body_160123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_26_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_26_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_26_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_26_matmul_readvariableop_resource:2(E
3while_lstm_cell_26_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_26_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_26/BiasAdd/ReadVariableOpЂ(while/lstm_cell_26/MatMul/ReadVariableOpЂ*while/lstm_cell_26/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_26_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_26/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_26_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_26/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_26/addAddV2#while/lstm_cell_26/MatMul:product:0%while/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_26_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_26/BiasAddBiasAddwhile/lstm_cell_26/add:z:01while/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_26/splitSplit+while/lstm_cell_26/split/split_dim:output:0#while/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_26/SigmoidSigmoid!while/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_1Sigmoid!while/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mulMul while/lstm_cell_26/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_26/ReluRelu!while/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_1Mulwhile/lstm_cell_26/Sigmoid:y:0%while/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/add_1AddV2while/lstm_cell_26/mul:z:0while/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_26/Sigmoid_2Sigmoid!while/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_26/Relu_1Reluwhile/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_26/mul_2Mul while/lstm_cell_26/Sigmoid_2:y:0'while/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_26/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_26/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_26/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_26/BiasAdd/ReadVariableOp)^while/lstm_cell_26/MatMul/ReadVariableOp+^while/lstm_cell_26/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_26_biasadd_readvariableop_resource4while_lstm_cell_26_biasadd_readvariableop_resource_0"l
3while_lstm_cell_26_matmul_1_readvariableop_resource5while_lstm_cell_26_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_26_matmul_readvariableop_resource3while_lstm_cell_26_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_26/BiasAdd/ReadVariableOp)while/lstm_cell_26/BiasAdd/ReadVariableOp2T
(while/lstm_cell_26/MatMul/ReadVariableOp(while/lstm_cell_26/MatMul/ReadVariableOp2X
*while/lstm_cell_26/MatMul_1/ReadVariableOp*while/lstm_cell_26/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
џ
Е
(__inference_lstm_99_layer_call_fn_161693

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_159691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я

Ё
.__inference_sequential_33_layer_call_fn_160657
lstm_99_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCalllstm_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_33_layer_call_and_return_conditional_losses_160605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_99_input
н

H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163723

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1

Е
)__inference_lstm_101_layer_call_fn_162914
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_101_layer_call_and_return_conditional_losses_159533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
џ
ќ

I__inference_sequential_33_layer_call_and_return_conditional_losses_161660

inputsF
3lstm_99_lstm_cell_24_matmul_readvariableop_resource:	H
5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource:	dC
4lstm_99_lstm_cell_24_biasadd_readvariableop_resource:	G
4lstm_100_lstm_cell_25_matmul_readvariableop_resource:	dШI
6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource:	2ШD
5lstm_100_lstm_cell_25_biasadd_readvariableop_resource:	ШF
4lstm_101_lstm_cell_26_matmul_readvariableop_resource:2(H
6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource:
(C
5lstm_101_lstm_cell_26_biasadd_readvariableop_resource:(9
'dense_33_matmul_readvariableop_resource:
6
(dense_33_biasadd_readvariableop_resource:
identityЂdense_33/BiasAdd/ReadVariableOpЂdense_33/MatMul/ReadVariableOpЂ,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpЂ+lstm_100/lstm_cell_25/MatMul/ReadVariableOpЂ-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpЂlstm_100/whileЂ,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpЂ+lstm_101/lstm_cell_26/MatMul/ReadVariableOpЂ-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpЂlstm_101/whileЂ+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpЂ*lstm_99/lstm_cell_24/MatMul/ReadVariableOpЂ,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpЂlstm_99/whileC
lstm_99/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_99/strided_sliceStridedSlicelstm_99/Shape:output:0$lstm_99/strided_slice/stack:output:0&lstm_99/strided_slice/stack_1:output:0&lstm_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_99/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_99/zeros/packedPacklstm_99/strided_slice:output:0lstm_99/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_99/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_99/zerosFilllstm_99/zeros/packed:output:0lstm_99/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_99/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_99/zeros_1/packedPacklstm_99/strided_slice:output:0!lstm_99/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_99/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_99/zeros_1Filllstm_99/zeros_1/packed:output:0lstm_99/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_99/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_99/transpose	Transposeinputslstm_99/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_99/Shape_1Shapelstm_99/transpose:y:0*
T0*
_output_shapes
:g
lstm_99/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_99/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_99/strided_slice_1StridedSlicelstm_99/Shape_1:output:0&lstm_99/strided_slice_1/stack:output:0(lstm_99/strided_slice_1/stack_1:output:0(lstm_99/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_99/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_99/TensorArrayV2TensorListReserve,lstm_99/TensorArrayV2/element_shape:output:0 lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_99/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_99/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_99/transpose:y:0Flstm_99/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_99/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_99/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_99/strided_slice_2StridedSlicelstm_99/transpose:y:0&lstm_99/strided_slice_2/stack:output:0(lstm_99/strided_slice_2/stack_1:output:0(lstm_99/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_99/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_99_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_99/lstm_cell_24/MatMulMatMul lstm_99/strided_slice_2:output:02lstm_99/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_99/lstm_cell_24/MatMul_1MatMullstm_99/zeros:output:04lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_99/lstm_cell_24/addAddV2%lstm_99/lstm_cell_24/MatMul:product:0'lstm_99/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_99/lstm_cell_24/BiasAddBiasAddlstm_99/lstm_cell_24/add:z:03lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_99/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_99/lstm_cell_24/splitSplit-lstm_99/lstm_cell_24/split/split_dim:output:0%lstm_99/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_99/lstm_cell_24/SigmoidSigmoid#lstm_99/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/Sigmoid_1Sigmoid#lstm_99/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/mulMul"lstm_99/lstm_cell_24/Sigmoid_1:y:0lstm_99/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_99/lstm_cell_24/ReluRelu#lstm_99/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/mul_1Mul lstm_99/lstm_cell_24/Sigmoid:y:0'lstm_99/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/add_1AddV2lstm_99/lstm_cell_24/mul:z:0lstm_99/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_99/lstm_cell_24/Sigmoid_2Sigmoid#lstm_99/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_99/lstm_cell_24/Relu_1Relulstm_99/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_99/lstm_cell_24/mul_2Mul"lstm_99/lstm_cell_24/Sigmoid_2:y:0)lstm_99/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_99/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   а
lstm_99/TensorArrayV2_1TensorListReserve.lstm_99/TensorArrayV2_1/element_shape:output:0 lstm_99/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_99/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_99/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_99/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ђ
lstm_99/whileWhile#lstm_99/while/loop_counter:output:0)lstm_99/while/maximum_iterations:output:0lstm_99/time:output:0 lstm_99/TensorArrayV2_1:handle:0lstm_99/zeros:output:0lstm_99/zeros_1:output:0 lstm_99/strided_slice_1:output:0?lstm_99/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_99_lstm_cell_24_matmul_readvariableop_resource5lstm_99_lstm_cell_24_matmul_1_readvariableop_resource4lstm_99_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_99_while_body_161292*%
condR
lstm_99_while_cond_161291*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_99/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   к
*lstm_99/TensorArrayV2Stack/TensorListStackTensorListStacklstm_99/while:output:3Alstm_99/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0p
lstm_99/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_99/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_99/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_99/strided_slice_3StridedSlice3lstm_99/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_99/strided_slice_3/stack:output:0(lstm_99/strided_slice_3/stack_1:output:0(lstm_99/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_99/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_99/transpose_1	Transpose3lstm_99/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_99/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_99/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    U
lstm_100/ShapeShapelstm_99/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_100/strided_sliceStridedSlicelstm_100/Shape:output:0%lstm_100/strided_slice/stack:output:0'lstm_100/strided_slice/stack_1:output:0'lstm_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_100/zeros/packedPacklstm_100/strided_slice:output:0 lstm_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_100/zerosFilllstm_100/zeros/packed:output:0lstm_100/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_100/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_100/zeros_1/packedPacklstm_100/strided_slice:output:0"lstm_100/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_100/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_100/zeros_1Fill lstm_100/zeros_1/packed:output:0lstm_100/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_100/transpose	Transposelstm_99/transpose_1:y:0 lstm_100/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_100/Shape_1Shapelstm_100/transpose:y:0*
T0*
_output_shapes
:h
lstm_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_100/strided_slice_1StridedSlicelstm_100/Shape_1:output:0'lstm_100/strided_slice_1/stack:output:0)lstm_100/strided_slice_1/stack_1:output:0)lstm_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_100/TensorArrayV2TensorListReserve-lstm_100/TensorArrayV2/element_shape:output:0!lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_100/transpose:y:0Glstm_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_100/strided_slice_2StridedSlicelstm_100/transpose:y:0'lstm_100/strided_slice_2/stack:output:0)lstm_100/strided_slice_2/stack_1:output:0)lstm_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_100/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp4lstm_100_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_100/lstm_cell_25/MatMulMatMul!lstm_100/strided_slice_2:output:03lstm_100/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_100/lstm_cell_25/MatMul_1MatMullstm_100/zeros:output:05lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_100/lstm_cell_25/addAddV2&lstm_100/lstm_cell_25/MatMul:product:0(lstm_100/lstm_cell_25/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp5lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_100/lstm_cell_25/BiasAddBiasAddlstm_100/lstm_cell_25/add:z:04lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_100/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_100/lstm_cell_25/splitSplit.lstm_100/lstm_cell_25/split/split_dim:output:0&lstm_100/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_100/lstm_cell_25/SigmoidSigmoid$lstm_100/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/Sigmoid_1Sigmoid$lstm_100/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/mulMul#lstm_100/lstm_cell_25/Sigmoid_1:y:0lstm_100/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_100/lstm_cell_25/ReluRelu$lstm_100/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_100/lstm_cell_25/mul_1Mul!lstm_100/lstm_cell_25/Sigmoid:y:0(lstm_100/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/add_1AddV2lstm_100/lstm_cell_25/mul:z:0lstm_100/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_100/lstm_cell_25/Sigmoid_2Sigmoid$lstm_100/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_100/lstm_cell_25/Relu_1Relulstm_100/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_100/lstm_cell_25/mul_2Mul#lstm_100/lstm_cell_25/Sigmoid_2:y:0*lstm_100/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_100/TensorArrayV2_1TensorListReserve/lstm_100/TensorArrayV2_1/element_shape:output:0!lstm_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_100/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_100/whileWhile$lstm_100/while/loop_counter:output:0*lstm_100/while/maximum_iterations:output:0lstm_100/time:output:0!lstm_100/TensorArrayV2_1:handle:0lstm_100/zeros:output:0lstm_100/zeros_1:output:0!lstm_100/strided_slice_1:output:0@lstm_100/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_100_lstm_cell_25_matmul_readvariableop_resource6lstm_100_lstm_cell_25_matmul_1_readvariableop_resource5lstm_100_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_100_while_body_161431*&
condR
lstm_100_while_cond_161430*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_100/TensorArrayV2Stack/TensorListStackTensorListStacklstm_100/while:output:3Blstm_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_100/strided_slice_3StridedSlice4lstm_100/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_100/strided_slice_3/stack:output:0)lstm_100/strided_slice_3/stack_1:output:0)lstm_100/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_100/transpose_1	Transpose4lstm_100/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_100/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_101/ShapeShapelstm_100/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_101/strided_sliceStridedSlicelstm_101/Shape:output:0%lstm_101/strided_slice/stack:output:0'lstm_101/strided_slice/stack_1:output:0'lstm_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_101/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_101/zeros/packedPacklstm_101/strided_slice:output:0 lstm_101/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_101/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_101/zerosFilllstm_101/zeros/packed:output:0lstm_101/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_101/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_101/zeros_1/packedPacklstm_101/strided_slice:output:0"lstm_101/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_101/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_101/zeros_1Fill lstm_101/zeros_1/packed:output:0lstm_101/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_101/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_101/transpose	Transposelstm_100/transpose_1:y:0 lstm_101/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_101/Shape_1Shapelstm_101/transpose:y:0*
T0*
_output_shapes
:h
lstm_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_101/strided_slice_1StridedSlicelstm_101/Shape_1:output:0'lstm_101/strided_slice_1/stack:output:0)lstm_101/strided_slice_1/stack_1:output:0)lstm_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_101/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_101/TensorArrayV2TensorListReserve-lstm_101/TensorArrayV2/element_shape:output:0!lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_101/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_101/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_101/transpose:y:0Glstm_101/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_101/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_101/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_101/strided_slice_2StridedSlicelstm_101/transpose:y:0'lstm_101/strided_slice_2/stack:output:0)lstm_101/strided_slice_2/stack_1:output:0)lstm_101/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_101/lstm_cell_26/MatMul/ReadVariableOpReadVariableOp4lstm_101_lstm_cell_26_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_101/lstm_cell_26/MatMulMatMul!lstm_101/strided_slice_2:output:03lstm_101/lstm_cell_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOpReadVariableOp6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_101/lstm_cell_26/MatMul_1MatMullstm_101/zeros:output:05lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_101/lstm_cell_26/addAddV2&lstm_101/lstm_cell_26/MatMul:product:0(lstm_101/lstm_cell_26/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOpReadVariableOp5lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_101/lstm_cell_26/BiasAddBiasAddlstm_101/lstm_cell_26/add:z:04lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_101/lstm_cell_26/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_101/lstm_cell_26/splitSplit.lstm_101/lstm_cell_26/split/split_dim:output:0&lstm_101/lstm_cell_26/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_101/lstm_cell_26/SigmoidSigmoid$lstm_101/lstm_cell_26/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/Sigmoid_1Sigmoid$lstm_101/lstm_cell_26/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/mulMul#lstm_101/lstm_cell_26/Sigmoid_1:y:0lstm_101/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_101/lstm_cell_26/ReluRelu$lstm_101/lstm_cell_26/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_101/lstm_cell_26/mul_1Mul!lstm_101/lstm_cell_26/Sigmoid:y:0(lstm_101/lstm_cell_26/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/add_1AddV2lstm_101/lstm_cell_26/mul:z:0lstm_101/lstm_cell_26/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_101/lstm_cell_26/Sigmoid_2Sigmoid$lstm_101/lstm_cell_26/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_101/lstm_cell_26/Relu_1Relulstm_101/lstm_cell_26/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_101/lstm_cell_26/mul_2Mul#lstm_101/lstm_cell_26/Sigmoid_2:y:0*lstm_101/lstm_cell_26/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_101/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_101/TensorArrayV2_1TensorListReserve/lstm_101/TensorArrayV2_1/element_shape:output:0!lstm_101/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_101/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_101/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_101/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_101/whileWhile$lstm_101/while/loop_counter:output:0*lstm_101/while/maximum_iterations:output:0lstm_101/time:output:0!lstm_101/TensorArrayV2_1:handle:0lstm_101/zeros:output:0lstm_101/zeros_1:output:0!lstm_101/strided_slice_1:output:0@lstm_101/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_101_lstm_cell_26_matmul_readvariableop_resource6lstm_101_lstm_cell_26_matmul_1_readvariableop_resource5lstm_101_lstm_cell_26_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_101_while_body_161570*&
condR
lstm_101_while_cond_161569*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_101/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_101/TensorArrayV2Stack/TensorListStackTensorListStacklstm_101/while:output:3Blstm_101/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_101/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_101/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_101/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_101/strided_slice_3StridedSlice4lstm_101/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_101/strided_slice_3/stack:output:0)lstm_101/strided_slice_3/stack_1:output:0)lstm_101/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_101/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_101/transpose_1	Transpose4lstm_101/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_101/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_101/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_33/MatMulMatMul!lstm_101/strided_slice_3:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_33/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp-^lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp,^lstm_100/lstm_cell_25/MatMul/ReadVariableOp.^lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_100/while-^lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp,^lstm_101/lstm_cell_26/MatMul/ReadVariableOp.^lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp^lstm_101/while,^lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_99/lstm_cell_24/MatMul/ReadVariableOp-^lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_99/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2\
,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp,lstm_100/lstm_cell_25/BiasAdd/ReadVariableOp2Z
+lstm_100/lstm_cell_25/MatMul/ReadVariableOp+lstm_100/lstm_cell_25/MatMul/ReadVariableOp2^
-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp-lstm_100/lstm_cell_25/MatMul_1/ReadVariableOp2 
lstm_100/whilelstm_100/while2\
,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp,lstm_101/lstm_cell_26/BiasAdd/ReadVariableOp2Z
+lstm_101/lstm_cell_26/MatMul/ReadVariableOp+lstm_101/lstm_cell_26/MatMul/ReadVariableOp2^
-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp-lstm_101/lstm_cell_26/MatMul_1/ReadVariableOp2 
lstm_101/whilelstm_101/while2Z
+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_99/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_99/lstm_cell_24/MatMul/ReadVariableOp*lstm_99/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_99/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_99/whilelstm_99/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц"
у
while_body_158573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_158597_0:	.
while_lstm_cell_24_158599_0:	d*
while_lstm_cell_24_158601_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_158597:	,
while_lstm_cell_24_158599:	d(
while_lstm_cell_24_158601:	Ђ*while/lstm_cell_24/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_158597_0while_lstm_cell_24_158599_0while_lstm_cell_24_158601_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_158559м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_24_158597while_lstm_cell_24_158597_0"8
while_lstm_cell_24_158599while_lstm_cell_24_158599_0"8
while_lstm_cell_24_158601while_lstm_cell_24_158601_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_162048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162048___redundant_placeholder04
0while_while_cond_162048___redundant_placeholder14
0while_while_cond_162048___redundant_placeholder24
0while_while_cond_162048___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Љ
З
(__inference_lstm_99_layer_call_fn_161682
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_99_layer_call_and_return_conditional_losses_158833|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
е

H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_158909

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
K
lstm_99_input:
serving_default_lstm_99_input:0џџџџџџџџџ<
dense_330
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ва
Њ
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
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
т

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
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
Ю
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_33/kernel
:2dense_33/bias
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
А
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	2lstm_99/lstm_cell_99/kernel
8:6	d2%lstm_99/lstm_cell_99/recurrent_kernel
(:&2lstm_99/lstm_cell_99/bias
0:.	dШ2lstm_100/lstm_cell_100/kernel
::8	2Ш2'lstm_100/lstm_cell_100/recurrent_kernel
*:(Ш2lstm_100/lstm_cell_100/bias
/:-2(2lstm_101/lstm_cell_101/kernel
9:7
(2'lstm_101/lstm_cell_101/recurrent_kernel
):'(2lstm_101/lstm_cell_101/bias
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
А
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
2Adam/dense_33/kernel/m
 :2Adam/dense_33/bias/m
3:1	2"Adam/lstm_99/lstm_cell_99/kernel/m
=:;	d2,Adam/lstm_99/lstm_cell_99/recurrent_kernel/m
-:+2 Adam/lstm_99/lstm_cell_99/bias/m
5:3	dШ2$Adam/lstm_100/lstm_cell_100/kernel/m
?:=	2Ш2.Adam/lstm_100/lstm_cell_100/recurrent_kernel/m
/:-Ш2"Adam/lstm_100/lstm_cell_100/bias/m
4:22(2$Adam/lstm_101/lstm_cell_101/kernel/m
>:<
(2.Adam/lstm_101/lstm_cell_101/recurrent_kernel/m
.:,(2"Adam/lstm_101/lstm_cell_101/bias/m
&:$
2Adam/dense_33/kernel/v
 :2Adam/dense_33/bias/v
3:1	2"Adam/lstm_99/lstm_cell_99/kernel/v
=:;	d2,Adam/lstm_99/lstm_cell_99/recurrent_kernel/v
-:+2 Adam/lstm_99/lstm_cell_99/bias/v
5:3	dШ2$Adam/lstm_100/lstm_cell_100/kernel/v
?:=	2Ш2.Adam/lstm_100/lstm_cell_100/recurrent_kernel/v
/:-Ш2"Adam/lstm_100/lstm_cell_100/bias/v
4:22(2$Adam/lstm_101/lstm_cell_101/kernel/v
>:<
(2.Adam/lstm_101/lstm_cell_101/recurrent_kernel/v
.:,(2"Adam/lstm_101/lstm_cell_101/bias/v
2
.__inference_sequential_33_layer_call_fn_160041
.__inference_sequential_33_layer_call_fn_160779
.__inference_sequential_33_layer_call_fn_160806
.__inference_sequential_33_layer_call_fn_160657Р
ЗВГ
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

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђ2я
I__inference_sequential_33_layer_call_and_return_conditional_losses_161233
I__inference_sequential_33_layer_call_and_return_conditional_losses_161660
I__inference_sequential_33_layer_call_and_return_conditional_losses_160687
I__inference_sequential_33_layer_call_and_return_conditional_losses_160717Р
ЗВГ
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

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
вBЯ
!__inference__wrapped_model_158492lstm_99_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
(__inference_lstm_99_layer_call_fn_161671
(__inference_lstm_99_layer_call_fn_161682
(__inference_lstm_99_layer_call_fn_161693
(__inference_lstm_99_layer_call_fn_161704е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
я2ь
C__inference_lstm_99_layer_call_and_return_conditional_losses_161847
C__inference_lstm_99_layer_call_and_return_conditional_losses_161990
C__inference_lstm_99_layer_call_and_return_conditional_losses_162133
C__inference_lstm_99_layer_call_and_return_conditional_losses_162276е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_lstm_100_layer_call_fn_162287
)__inference_lstm_100_layer_call_fn_162298
)__inference_lstm_100_layer_call_fn_162309
)__inference_lstm_100_layer_call_fn_162320е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_100_layer_call_and_return_conditional_losses_162463
D__inference_lstm_100_layer_call_and_return_conditional_losses_162606
D__inference_lstm_100_layer_call_and_return_conditional_losses_162749
D__inference_lstm_100_layer_call_and_return_conditional_losses_162892е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_lstm_101_layer_call_fn_162903
)__inference_lstm_101_layer_call_fn_162914
)__inference_lstm_101_layer_call_fn_162925
)__inference_lstm_101_layer_call_fn_162936е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_101_layer_call_and_return_conditional_losses_163079
D__inference_lstm_101_layer_call_and_return_conditional_losses_163222
D__inference_lstm_101_layer_call_and_return_conditional_losses_163365
D__inference_lstm_101_layer_call_and_return_conditional_losses_163508е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_dense_33_layer_call_fn_163517Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_dense_33_layer_call_and_return_conditional_losses_163527Ђ
В
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
annotationsЊ *
 
бBЮ
$__inference_signature_wrapper_160752lstm_99_input"
В
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
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_24_layer_call_fn_163544
-__inference_lstm_cell_24_layer_call_fn_163561О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163593
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163625О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_25_layer_call_fn_163642
-__inference_lstm_cell_25_layer_call_fn_163659О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163691
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163723О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_26_layer_call_fn_163740
-__inference_lstm_cell_26_layer_call_fn_163757О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163789
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163821О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 Ѓ
!__inference__wrapped_model_158492~-./012345!":Ђ7
0Ђ-
+(
lstm_99_inputџџџџџџџџџ
Њ "3Њ0
.
dense_33"
dense_33џџџџџџџџџЄ
D__inference_dense_33_layer_call_and_return_conditional_losses_163527\!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_33_layer_call_fn_163517O!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџг
D__inference_lstm_100_layer_call_and_return_conditional_losses_162463012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 г
D__inference_lstm_100_layer_call_and_return_conditional_losses_162606012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 Й
D__inference_lstm_100_layer_call_and_return_conditional_losses_162749q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ2
 Й
D__inference_lstm_100_layer_call_and_return_conditional_losses_162892q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ ")Ђ&

0џџџџџџџџџ2
 Њ
)__inference_lstm_100_layer_call_fn_162287}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ2Њ
)__inference_lstm_100_layer_call_fn_162298}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ2
)__inference_lstm_100_layer_call_fn_162309d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџ2
)__inference_lstm_100_layer_call_fn_162320d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџ2Х
D__inference_lstm_101_layer_call_and_return_conditional_losses_163079}345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Х
D__inference_lstm_101_layer_call_and_return_conditional_losses_163222}345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
D__inference_lstm_101_layer_call_and_return_conditional_losses_163365m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
D__inference_lstm_101_layer_call_and_return_conditional_losses_163508m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџ

 
)__inference_lstm_101_layer_call_fn_162903p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_101_layer_call_fn_162914p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ

)__inference_lstm_101_layer_call_fn_162925`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_101_layer_call_fn_162936`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ
в
C__inference_lstm_99_layer_call_and_return_conditional_losses_161847-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 в
C__inference_lstm_99_layer_call_and_return_conditional_losses_161990-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 И
C__inference_lstm_99_layer_call_and_return_conditional_losses_162133q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ")Ђ&

0џџџџџџџџџd
 И
C__inference_lstm_99_layer_call_and_return_conditional_losses_162276q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ")Ђ&

0џџџџџџџџџd
 Љ
(__inference_lstm_99_layer_call_fn_161671}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџdЉ
(__inference_lstm_99_layer_call_fn_161682}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџd
(__inference_lstm_99_layer_call_fn_161693d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџd
(__inference_lstm_99_layer_call_fn_161704d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџdЪ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163593§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ъ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_163625§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 
-__inference_lstm_cell_24_layer_call_fn_163544э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџd
-__inference_lstm_cell_24_layer_call_fn_163561э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdЪ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163691§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 Ъ
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_163723§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 
-__inference_lstm_cell_25_layer_call_fn_163642э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2
-__inference_lstm_cell_25_layer_call_fn_163659э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2Ъ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163789§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 Ъ
H__inference_lstm_cell_26_layer_call_and_return_conditional_losses_163821§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 
-__inference_lstm_cell_26_layer_call_fn_163740э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ

-__inference_lstm_cell_26_layer_call_fn_163757э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ
Х
I__inference_sequential_33_layer_call_and_return_conditional_losses_160687x-./012345!"BЂ?
8Ђ5
+(
lstm_99_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Х
I__inference_sequential_33_layer_call_and_return_conditional_losses_160717x-./012345!"BЂ?
8Ђ5
+(
lstm_99_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_33_layer_call_and_return_conditional_losses_161233q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_33_layer_call_and_return_conditional_losses_161660q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_sequential_33_layer_call_fn_160041k-./012345!"BЂ?
8Ђ5
+(
lstm_99_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_33_layer_call_fn_160657k-./012345!"BЂ?
8Ђ5
+(
lstm_99_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_33_layer_call_fn_160779d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_33_layer_call_fn_160806d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџИ
$__inference_signature_wrapper_160752-./012345!"KЂH
Ђ 
AЊ>
<
lstm_99_input+(
lstm_99_inputџџџџџџџџџ"3Њ0
.
dense_33"
dense_33џџџџџџџџџ